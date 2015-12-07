package com.avaje.ebean;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import javax.persistence.OptimisticLockException;
import javax.persistence.PersistenceException;

import org.jetbrains.annotations.Nullable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.avaje.ebean.annotation.CacheStrategy;
import com.avaje.ebean.cache.ServerCacheManager;
import com.avaje.ebean.config.ServerConfig;
import com.avaje.ebean.text.csv.CsvReader;
import com.avaje.ebean.text.json.JsonContext;

/**
 * This Ebean object is effectively a singleton that holds a map of registered
 * {@link EbeanServer}s. It additionally provides a convenient way to use the
 * 'default' EbeanServer.
 * <p>
 * If you are using a Dependency Injection framework such as
 * <strong>Spring</strong> or <strong>Guice</strong> you will probably
 * <strong>NOT</strong> use this Ebean singleton object. Instead you will
 * configure and construct EbeanServer instances using {@link ServerConfig} and
 * {@link EbeanServerFactory} and inject those EbeanServer instances into your
 * data access objects.
 * </p>
 * <p>
 * In documentation "Ebean singleton" refers to this object.
 * </p>
 * <ul>
 * <li>There is one EbeanServer per Database (javax.sql.DataSource).</li>
 * <li>EbeanServers can be 'registered' with the Ebean singleton (put into its
 * map). Registered EbeanServer's can later be retrieved via
 * {@link #getServer(String)}.</li>
 * <li>One EbeanServer can be referred to as the 'default' EbeanServer. For
 * convenience, the Ebean singleton (this object) provides methods such as
 * {@link #find(Class)} that proxy through to the 'default' EbeanServer. This
 * can be useful for applications that use a single database.</li>
 * </ul>
 * 
 * <p>
 * For developer convenience Ebean has static methods that proxy through to the
 * methods on the <em>'default'</em> EbeanServer. These methods are provided for
 * developers who are mostly using a single database. Many developers will be
 * able to use the methods on Ebean rather than get a EbeanServer.
 * </p>
 * <p>
 * EbeanServers can be created and used without ever needing or using the Ebean
 * singleton. Refer to {@link ServerConfig#setRegister(boolean)}.
 * </p>
 * <p>
 * You can either programmatically create/register EbeanServers via
 * {@link EbeanServerFactory} or they can automatically be created and
 * registered when you first use the Ebean singleton. When EbeanServers are
 * created automatically they are configured using information in the
 * ebean.properties file.
 * </p>
 *
 * <pre>{@code
 *
 *   // fetch shipped orders (and also their customer)
 *   List<Order> list = Ebean.find(Order.class)
 * 	  .fetch("customer")
 * 	  .where()
 * 	  .eq("status.code", Order.Status.SHIPPED)
 * 	  .findList();
 *
 *   // read/use the order list ...
 *   for (Order order : list) {
 * 	   Customer customer = order.getCustomer();
 * 	   ...
 *   }
 *
 * }</pre>
 * 
 * <pre>{@code
 *
 *   // fetch order 10, modify and save
 *   Order order = Ebean.find(Order.class, 10);
 * 
 *   OrderStatus shipped = Ebean.getReference(OrderStatus.class,"SHIPPED");
 *   order.setStatus(shipped);
 *   order.setShippedDate(shippedDate);
 *   ...
 * 
 *   // implicitly creates a transaction and commits
 *   Ebean.save(order);
 *
 * }</pre>
 * 
 * <p>
 * When you have multiple databases and need access to a specific one the
 * {@link #getServer(String)} method provides access to the EbeanServer for that
 * specific database.
 * </p>
 * 
 * <pre>{@code
 *
 *   // Get access to the Human Resources EbeanServer/Database
 *   EbeanServer hrDb = Ebean.getServer("hr");
 * 
 * 
 *   // fetch contact 3 from the HR database
 *   Contact contact = hrDb.find(Contact.class, 3);
 * 
 *   contact.setName("I'm going to change");
 *   ...
 * 
 *   // save the contact back to the HR database
 *   hrDb.save(contact);
 *
 * }</pre>
 */
public final class Ebean {
  private static final Logger logger = LoggerFactory.getLogger(Ebean.class);

  /**
   * Manages creation and cache of EbeanServers.
   */
  private static final ServerManager serverMgr = new ServerManager();

  /**
   * Helper class for managing fast and safe access and creation of
   * EbeanServers.
   */
  private static final class ServerManager {

    /**
     * Cache for fast concurrent read access.
     */
    private final ConcurrentHashMap<String, EbeanServer> concMap = new ConcurrentHashMap<String, EbeanServer>();

    /**
     * Cache for synchronized read, creation and put. Protected by the monitor
     * object.
     */
    private final HashMap<String, EbeanServer> syncMap = new HashMap<String, EbeanServer>();

    private final Object monitor = new Object();

    /**
     * The 'default' EbeanServer.
     */
    private EbeanServer defaultServer;

    private ServerManager() {

      try {
        // skipDefaultServer is set by EbeanServerFactory
        // ... when it is creating the primaryServer
        if (PrimaryServer.isSkip()) {
          // primary server being created by EbeanServerFactory
          // ... so we should not try and create it here
          logger.debug("PrimaryServer.isSkip()");

        } else {
          // look to see if there is a default server defined
          String defaultName = PrimaryServer.getDefaultServerName();
          logger.debug("defaultName:" + defaultName);
          if (defaultName != null && defaultName.trim().length() > 0) {
            defaultServer = getWithCreate(defaultName.trim());
          }
        }
      } catch (Throwable e) {
        logger.error("Error trying to create the default EbeanServer", e);
        throw new RuntimeException(e);
      }
    }

    private EbeanServer getDefaultServer() {
      if (defaultServer == null) {
        String msg = "The default EbeanServer has not been defined?";
        msg += " This is normally set via the ebean.datasource.default property.";
        msg += " Otherwise it should be registered programmatically via registerServer()";
        throw new PersistenceException(msg);
      }
      return defaultServer;
    }

    private EbeanServer get(String name) {
      if (name == null || name.length() == 0) {
        return defaultServer;
      }
      // non-synchronized read
      EbeanServer server = concMap.get(name);
      if (server != null) {
        return server;
      }
      // synchronized read, create and put
      return getWithCreate(name);
    }

    /**
     * Synchronized read, create and put of EbeanServers.
     */
    private EbeanServer getWithCreate(String name) {

      synchronized (monitor) {

        EbeanServer server = syncMap.get(name);
        if (server == null) {
          // register when creating server this way
          server = EbeanServerFactory.create(name);
          register(server, false);
        }
        return server;
      }
    }

    /**
     * Register a server so we can get it by its name.
     */
    private void register(EbeanServer server, boolean isDefaultServer) {
      registerWithName(server.getName(), server, isDefaultServer);
    }
    
    private void registerWithName(String name, EbeanServer server, boolean isDefaultServer) {
      synchronized (monitor) {
        concMap.put(name, server);
        syncMap.put(name, server);
        if (isDefaultServer) {
          defaultServer = server;
        }
      }
    }

  }

  private Ebean() {
  }

  /**
   * Get the EbeanServer for a given DataSource. If name is null this will
   * return the 'default' EbeanServer.
   * <p>
   * This is provided to access EbeanServer for databases other than the
   * 'default' database. EbeanServer also provides more control over
   * transactions and the ability to use transactions created externally to
   * Ebean.
   * </p>
   * 
   * <pre>{@code
   * // use the "hr" database
   * EbeanServer hrDatabase = Ebean.getServer("hr");
   * 
   * Person person = hrDatabase.find(Person.class, 10);
   * }</pre>
   * 
   * @param name
   *          the name of the server, can use null for the 'default server'
   */
  public static EbeanServer getServer(String name) {
    return serverMgr.get(name);
  }

  /**
   * Returns the default EbeanServer.
   * <p>
   * This is equivalent to <code>Ebean.getServer(null);</code>
   * </p>
   */
  public static EbeanServer getDefaultServer() {
    return serverMgr.getDefaultServer();
  }

  /**
   * Return the ExpressionFactory from the default server.
   * <p>
   * The ExpressionFactory is used internally by the query and ExpressionList to
   * build the WHERE and HAVING clauses. Alternatively you can use the
   * ExpressionFactory directly to create expressions to add to the query where
   * clause.
   * </p>
   * <p>
   * Alternatively you can use the {@link Expr} as a shortcut to the
   * ExpressionFactory of the 'Default' EbeanServer.
   * </p>
   * <p>
   * You generally need to the an ExpressionFactory (or {@link Expr}) to build
   * an expression that uses OR like Expression e = Expr.or(..., ...);
   * </p>
   */
  public static ExpressionFactory getExpressionFactory() {
    return serverMgr.getDefaultServer().getExpressionFactory();
  }

  /**
   * Register the server with this Ebean singleton. Specify if the registered
   * server is the primary/default server.
   */
  public static void register(EbeanServer server, boolean defaultServer) {
    serverMgr.register(server, defaultServer);
  }

  /**
   * Backdoor for registering a mock implementation of EbeanServer as the default  server.
   */
  protected static EbeanServer mock(String name, EbeanServer server, boolean defaultServer) {
    EbeanServer originalPrimaryServer = serverMgr.defaultServer;
    serverMgr.registerWithName(name, server, defaultServer);
    return originalPrimaryServer;
  }
  
  /**
   * Return the next identity value for a given bean type.
   * <p>
   * This will only work when a IdGenerator is on this bean type such as a DB
   * sequence or UUID.
   * </p>
   * <p>
   * For DB's supporting getGeneratedKeys and sequences such as Oracle10 you do
   * not need to use this method generally. It is made available for more
   * complex cases where it is useful to get an ID prior to some processing.
   * </p>
   */
  public static Object nextId(Class<?> beanType) {
    return serverMgr.getDefaultServer().nextId(beanType);
  }

  /**
   * Start a transaction with 'REQUIRED' semantics.
   * <p>
   * With REQUIRED semantics if an active transaction already exists that transaction will be used.
   * </p>
   * <p>
   * The transaction is stored in a ThreadLocal variable and typically you only
   * need to use the returned Transaction <em>IF</em> you wish to do things like
   * use batch mode, change the transaction isolation level, use savepoints or
   * log comments to the transaction log.
   * </p>
   * <p>
   * Example of using a transaction to span multiple calls to find(), save()
   * etc.
   * </p>
   * 
   * <pre>{@code
   *
   *   // start a transaction (stored in a ThreadLocal)
   *   Ebean.beginTransaction();
   *   try {
   * 	   Order order = Ebean.find(Order.class,10); ...
   *
   * 	   Ebean.save(order);
   * 
   * 	   Ebean.commitTransaction();
   * 
   *   } finally {
   * 	   // rollback if we didn't commit
   * 	   // i.e. an exception occurred before commitTransaction().
   * 	   Ebean.endTransaction();
   *   }
   *
   * }</pre>
   * 
   * <p>
   * If you want to externalise the transaction management then you should be
   * able to do this via EbeanServer. Specifically with EbeanServer you can pass
   * the transaction to the various find() and save() execute() methods. This
   * gives you the ability to create the transactions yourself externally from
   * Ebean and pass those transactions through to the various methods available
   * on EbeanServer.
   * </p>
   */
  public static Transaction beginTransaction() {
    return serverMgr.getDefaultServer().beginTransaction();
  }

  /**
   * Start a transaction additionally specifying the isolation level.
   * 
   * @param isolation
   *          the Transaction isolation level
   * 
   */
  public static Transaction beginTransaction(TxIsolation isolation) {
    return serverMgr.getDefaultServer().beginTransaction(isolation);
  }

  /**
   * Start a transaction typically specifying REQUIRES_NEW or REQUIRED semantics.
   *
   * <p>
   * Note that this provides an try finally alternative to using {@link #execute(TxScope, TxCallable)} or
   * {@link #execute(TxScope, TxRunnable)}.
   * </p>
   *
   * <h3>REQUIRES_NEW example:</h3>
   * <pre>{@code
   * // Start a new transaction. If there is a current transaction
   * // suspend it until this transaction ends
   * Transaction txn = Ebean.beginTransaction(TxScope.requiresNew());
   * try {
   *
   *   ...
   *
   *   // commit the transaction
   *   txn.commit();
   *
   * } finally {
   *   // end this transaction which:
   *   //  A) will rollback transaction if it has not been committed already
   *   //  B) will restore a previously suspended transaction
   *   txn.end();
   * }
   *
   * }</pre>
   *
   * <h3>REQUIRED example:</h3>
   * <pre>{@code
   *
   * // start a new transaction if there is not a current transaction
   * Transaction txn = Ebean.beginTransaction(TxScope.required());
   * try {
   *
   *   ...
   *
   *   // commit the transaction if it was created or
   *   // do nothing if there was already a current transaction
   *   txn.commit();
   *
   * } finally {
   *   // end this transaction which will rollback the transaction
   *   // if it was created for this try finally scope and has not
   *   // already been committed
   *   txn.end();
   * }
   *
   * }</pre>
   */
  public static Transaction beginTransaction(TxScope scope){
    return serverMgr.getDefaultServer().beginTransaction(scope);
  }

  /**
   * Returns the current transaction or null if there is no current transaction
   * in scope.
   */
  public static Transaction currentTransaction() {
    return serverMgr.getDefaultServer().currentTransaction();
  }

  /**
   * Register a TransactionCallback on the currently active transaction.
   * <p/>
   * If there is no currently active transaction then a PersistenceException is thrown.
   *
   * @param transactionCallback the transaction callback to be registered with the current transaction
   *
   * @throws PersistenceException if there is no currently active transaction
   */
  public static void register(TransactionCallback transactionCallback) throws PersistenceException {
    serverMgr.getDefaultServer().register(transactionCallback);
  }

  /**
   * Commit the current transaction.
   */
  public static void commitTransaction() {
    serverMgr.getDefaultServer().commitTransaction();
  }

  /**
   * Rollback the current transaction.
   */
  public static void rollbackTransaction() {
    serverMgr.getDefaultServer().rollbackTransaction();
  }

  /**
   * If the current transaction has already been committed do nothing otherwise
   * rollback the transaction.
   * <p>
   * Useful to put in a finally block to ensure the transaction is ended, rather
   * than a rollbackTransaction() in each catch block.
   * </p>
   * <p>
   * Code example:
   * </p>
   * 
   * <pre>{@code
   *   Ebean.beginTransaction();
   *   try {
   *     // do some fetching and or persisting
   *
   *     // commit at the end
   *     Ebean.commitTransaction();
   * 
   *   } finally {
   *     // if commit didn't occur then rollback the transaction
   *     Ebean.endTransaction();
   *   }
   * }</pre>
   */
  public static void endTransaction() {
    serverMgr.getDefaultServer().endTransaction();
  }

  /**
   * Return a map of the differences between two objects of the same type.
   * <p>
   * When null is passed in for b, then the 'OldValues' of a is used for the
   * difference comparison.
   * </p>
   */
  public static Map<String, ValuePair> diff(Object a, Object b) {
    return serverMgr.getDefaultServer().diff(a, b);
  }

  /**
   * Either Insert or Update the bean depending on its state.
   * <p>
   * If there is no current transaction one will be created and committed for
   * you automatically.
   * </p>
   * <p>
   * Save can cascade along relationships. For this to happen you need to
   * specify a cascade of CascadeType.ALL or CascadeType.PERSIST on the
   * OneToMany, OneToOne or ManyToMany annotation.
   * </p>
   * <p>
   * In this example below the details property has a CascadeType.ALL set so
   * saving an order will also save all its details.
   * </p>
   * 
   * <pre>{@code
   *   public class Order { ...
   * 	
   * 	   @OneToMany(cascade=CascadeType.ALL, mappedBy="order")
   * 	   List<OrderDetail> details;
   * 	   ...
   *   }
   * }</pre>
   * 
   * <p>
   * When a save cascades via a OneToMany or ManyToMany Ebean will automatically
   * set the 'parent' object to the 'detail' object. In the example below in
   * saving the order and cascade saving the order details the 'parent' order
   * will be set against each order detail when it is saved.
   * </p>
   */
  public static void save(Object bean) throws OptimisticLockException {
    serverMgr.getDefaultServer().save(bean);
  }

  /**
   * Insert the bean. This is useful when you set the Id property on a bean and
   * want to explicitly insert it.
   */
  public static void insert(Object bean) {
    serverMgr.getDefaultServer().insert(bean);
  }

  /**
   * Insert a collection of beans.
   */
  public static void insertAll(Collection<?> beans) {
    serverMgr.getDefaultServer().insertAll(beans);
  }

  /**
   * Marks the entity bean as dirty.
   * <p>
   * This is used so that when a bean that is otherwise unmodified is updated with the version
   * property updated.
   * <p>
   * An unmodified bean that is saved or updated is normally skipped and this marks the bean as
   * dirty so that it is not skipped.
   * 
   * <pre>{@code
   * 
   *   Customer customer = Ebean.find(Customer, id);
   * 
   *   // mark the bean as dirty so that a save() or update() will
   *   // increment the version property
   *   Ebean.markAsDirty(customer);
   *   Ebean.save(customer);
   * 
   * }</pre>
   */
  public static void markAsDirty(Object bean) throws OptimisticLockException {
    serverMgr.getDefaultServer().markAsDirty(bean);
  }

  /**
   * Saves the bean using an update. If you know you are updating a bean then it is preferrable to
   * use this update() method rather than save().
   * <p>
   * <b>Stateless updates:</b> Note that the bean does not have to be previously fetched to call
   * update().You can create a new instance and set some of its properties programmatically for via
   * JSON/XML marshalling etc. This is described as a 'stateless update'.
   * </p>
   * <p>
   * <b>Optimistic Locking: </b> Note that if the version property is not set when update() is
   * called then no optimistic locking is performed (internally ConcurrencyMode.NONE is used).
   * </p>
   * <p>
   * <b>{@link ServerConfig#setUpdatesDeleteMissingChildren(boolean)}: </b> When cascade saving to a
   * OneToMany or ManyToMany the updatesDeleteMissingChildren setting controls if any other children
   * that are in the database but are not in the collection are deleted.
   * </p>
   * <p>
   * <b>{@link ServerConfig#setUpdateChangesOnly(boolean)}: </b> The updateChangesOnly setting
   * controls if only the changed properties are included in the update or if all the loaded
   * properties are included instead.
   * </p>
   * 
   * <pre>{@code
   * 
   *   // A 'stateless update' example
   *   Customer customer = new Customer();
   *   customer.setId(7);
   *   customer.setName("ModifiedNameNoOCC");
   *   ebeanServer.update(customer);
   * 
   * }</pre>
   * 
   * @see ServerConfig#setUpdatesDeleteMissingChildren(boolean)
   * @see ServerConfig#setUpdateChangesOnly(boolean)
   */
  public static void update(Object bean) throws OptimisticLockException {
    serverMgr.getDefaultServer().update(bean);
  }

  /**
   * Update the beans in the collection.
   */
  public static void updateAll(Collection<?> beans) throws OptimisticLockException {
    serverMgr.getDefaultServer().updateAll(beans);
  }

  /**
   * Save all the beans from a Collection.
   */
  public static int saveAll(Collection<?> beans) throws OptimisticLockException {
    return serverMgr.getDefaultServer().saveAll(beans);
  }

  /**
   * Delete the associations (from the intersection table) of a ManyToMany given
   * the owner bean and the propertyName of the ManyToMany collection.
   * <p>
   * Typically these deletions occur automatically when persisting a ManyToMany
   * collection and this provides a way to invoke those deletions directly.
   * </p>
   * 
   * @return the number of associations deleted (from the intersection table).
   */
  public static int deleteManyToManyAssociations(Object ownerBean, String propertyName) {
    return serverMgr.getDefaultServer().deleteManyToManyAssociations(ownerBean, propertyName);
  }

  /**
   * Save the associations of a ManyToMany given the owner bean and the
   * propertyName of the ManyToMany collection.
   * <p>
   * Typically the saving of these associations (inserting into the intersection
   * table) occurs automatically when persisting a ManyToMany. This provides a
   * way to invoke those insertions directly.
   * </p>
   * <p>
   * You can use this when the collection is new and in this case all the
   * entries in the collection are treated as additions are result in inserts
   * into the intersection table.
   * </p>
   */
  public static void saveManyToManyAssociations(Object ownerBean, String propertyName) {
    serverMgr.getDefaultServer().saveManyToManyAssociations(ownerBean, propertyName);
  }

  /**
   * Save the associated collection or bean given the property name.
   * <p>
   * This is similar to performing a save cascade on a specific property
   * manually/programmatically.
   * </p>
   * <p>
   * Note that you can turn on/off cascading for a transaction via
   * {@link Transaction#setPersistCascade(boolean)}
   * </p>
   * 
   * @param ownerBean
   *          the bean instance holding the property we want to save
   * @param propertyName
   *          the property we want to save
   */
  public static void saveAssociation(Object ownerBean, String propertyName) {
    serverMgr.getDefaultServer().saveAssociation(ownerBean, propertyName);
  }

  /**
   * Delete the bean.
   * <p>
   * If there is no current transaction one will be created and committed for
   * you automatically.
   * </p>
   */
  public static void delete(Object bean) throws OptimisticLockException {
    serverMgr.getDefaultServer().delete(bean);
  }

  /**
   * Delete the bean given its type and id.
   */
  public static int delete(Class<?> beanType, Object id) {
    return serverMgr.getDefaultServer().delete(beanType, id);
  }

  /**
   * Delete several beans given their type and id values.
   */
  public static void deleteAll(Class<?> beanType, Collection<?> ids) {
    serverMgr.getDefaultServer().deleteAll(beanType, ids);
  }

  /**
   * Delete all the beans in the Collection.
   */
  public static int deleteAll(Collection<?> beans) throws OptimisticLockException {
    return serverMgr.getDefaultServer().deleteAll(beans);
  }

  /**
   * Refresh the values of a bean.
   * <p>
   * Note that this resets OneToMany and ManyToMany properties so that if they
   * are accessed a lazy load will refresh the many property.
   * </p>
   */
  public static void refresh(Object bean) {
    serverMgr.getDefaultServer().refresh(bean);
  }

  /**
   * Refresh a 'many' property of a bean.
   * 
   * <pre>{@code
   *
   *   Order order = ...;
   *   ...
   *   // refresh the order details...
   *   Ebean.refreshMany(order, "details");
   *
   * }</pre>
   * 
   * @param bean
   *          the entity bean containing the List Set or Map to refresh.
   * @param manyPropertyName
   *          the property name of the List Set or Map to refresh.
   */
  public static void refreshMany(Object bean, String manyPropertyName) {
    serverMgr.getDefaultServer().refreshMany(bean, manyPropertyName);
  }

  /**
   * Get a reference object.
   * <p>
   * This is sometimes described as a proxy (with lazy loading).
   * </p>
   * 
   * <pre>{@code
   *
   *   Product product = Ebean.getReference(Product.class, 1);
   * 
   *   // You can get the id without causing a fetch/lazy load
   *   Integer productId = product.getId();
   * 
   *   // If you try to get any other property a fetch/lazy loading will occur
   *   // This will cause a query to execute...
   *   String name = product.getName();
   *
   * }</pre>
   * 
   * @param beanType
   *          the type of entity bean
   * @param id
   *          the id value
   */
  public static <T> T getReference(Class<T> beanType, Object id) {
    return serverMgr.getDefaultServer().getReference(beanType, id);
  }

  /**
   * Sort the list using the sortByClause which can contain a comma delimited
   * list of property names and keywords asc, desc, nullsHigh and nullsLow.
   * <ul>
   * <li>asc - ascending order (which is the default)</li>
   * <li>desc - Descending order</li>
   * <li>nullsHigh - Treat null values as high/large values (which is the
   * default)</li>
   * <li>nullsLow- Treat null values as low/very small values</li>
   * </ul>
   * <p>
   * If you leave off any keywords the defaults are ascending order and treating
   * nulls as high values.
   * </p>
   * <p>
   * Note that the sorting uses a Comparator and Collections.sort(); and does
   * not invoke a DB query.
   * </p>
   * 
   * <pre>{@code
   * 
   *   // find orders and their customers
   *   List<Order> list = Ebean.find(Order.class)
   *     .fetch("customer")
   *     .orderBy("id")
   *     .findList();
   * 
   *   // sort by customer name ascending, then by order shipDate
   *   // ... then by the order status descending
   *   Ebean.sort(list, "customer.name, shipDate, status desc");
   * 
   *   // sort by customer name descending (with nulls low)
   *   // ... then by the order id
   *   Ebean.sort(list, "customer.name desc nullsLow, id");
   * 
   * }</pre>
   * 
   * @param list
   *          the list of entity beans
   * @param sortByClause
   *          the properties to sort the list by
   */
  public static <T> void sort(List<T> list, String sortByClause) {
    serverMgr.getDefaultServer().sort(list, sortByClause);
  }

  /**
   * Find a bean using its unique id. This will not use caching.
   * 
   * <pre>{@code
   *   // Fetch order 1
   *   Order order = Ebean.find(Order.class, 1);
   * }</pre>
   * 
   * <p>
   * If you want more control over the query then you can use createQuery() and
   * Query.findUnique();
   * </p>
   * 
   * <pre>{@code
   *   // ... additionally fetching customer, customer shipping address,
   *   // order details, and the product associated with each order detail.
   *   // note: only product id and name is fetch (its a "partial object").
   *   // note: all other objects use "*" and have all their properties fetched.
   * 
   *   Query<Order> query = Ebean.find(Order.class)
   *     .setId(1)
   *     .fetch("customer")
   *     .fetch("customer.shippingAddress")
   *     .fetch("details")
   *     .query();
   * 
   *   // fetch associated products but only fetch their product id and name
   *   query.fetch("details.product", "name");
   * 
   *   // traverse the object graph...
   * 
   *   Order order = query.findUnique();
   *   Customer customer = order.getCustomer();
   *   Address shippingAddress = customer.getShippingAddress();
   *   List<OrderDetail> details = order.getDetails();
   *   OrderDetail detail0 = details.get(0);
   *   Product product = detail0.getProduct();
   *   String productName = product.getName();
   *
   * }</pre>
   * 
   * @param beanType
   *          the type of entity bean to fetch
   * @param id
   *          the id value
   */
  @Nullable
  public static <T> T find(Class<T> beanType, Object id) {
    return serverMgr.getDefaultServer().find(beanType, id);
  }

  /**
   * Create a SqlQuery for executing native sql
   * query statements.
   * <p>
   * Note that you can use raw SQL with entity beans, refer to the SqlSelect
   * annotation for examples.
   * </p>
   */
  public static SqlQuery createSqlQuery(String sql) {
    return serverMgr.getDefaultServer().createSqlQuery(sql);
  }

  /**
   * Create a named sql query.
   * <p>
   * The query statement will be defined in a deployment orm xml file.
   * </p>
   * 
   * @param namedQuery
   *          the name of the query
   */
  public static SqlQuery createNamedSqlQuery(String namedQuery) {
    return serverMgr.getDefaultServer().createNamedSqlQuery(namedQuery);
  }

  /**
   * Create a sql update for executing native dml statements.
   * <p>
   * Use this to execute a Insert Update or Delete statement. The statement will
   * be native to the database and contain database table and column names.
   * </p>
   * <p>
   * See {@link SqlUpdate} for example usage.
   * </p>
   * <p>
   * Where possible it would be expected practice to put the statement in a orm
   * xml file (named update) and use {@link #createNamedSqlUpdate(String)} .
   * </p>
   */
  public static SqlUpdate createSqlUpdate(String sql) {
    return serverMgr.getDefaultServer().createSqlUpdate(sql);
  }

  /**
   * Create a CallableSql to execute a given stored procedure.
   * 
   * @see CallableSql
   */
  public static CallableSql createCallableSql(String sql) {
    return serverMgr.getDefaultServer().createCallableSql(sql);
  }

  /**
   * Create a named sql update.
   * <p>
   * The statement (an Insert Update or Delete statement) will be defined in a
   * deployment orm xml file.
   * </p>
   * 
   * <pre>{@code
   *
   *   // Use a namedQuery
   *   UpdateSql update = Ebean.createNamedSqlUpdate("update.topic.count");
   * 
   *   update.setParameter("count", 1);
   *   update.setParameter("topicId", 50);
   * 
   *   int modifiedCount = update.execute();
   *
   * }</pre>
   */
  public static SqlUpdate createNamedSqlUpdate(String namedQuery) {
    return serverMgr.getDefaultServer().createNamedSqlUpdate(namedQuery);
  }

  /**
   * Return a named Query that will have defined fetch paths, predicates etc.
   * <p>
   * The query is created from a statement that will be defined in a deployment
   * orm xml file or NamedQuery annotations. The query will typically already
   * define fetch paths, predicates, order by clauses etc so often you will just
   * need to bind required parameters and then execute the query.
   * </p>
   * 
   * <pre>{@code
   *
   *   // example
   *   Query<Order> query = Ebean.createNamedQuery(Order.class, "new.for.customer");
   *   query.setParameter("customerId", 23);
   *   List<Order> newOrders = query.findList();
   *
   * }</pre>
   * 
   * @param beanType
   *          the class of entity to be fetched
   * @param namedQuery
   *          the name of the query
   */
  public static <T> Query<T> createNamedQuery(Class<T> beanType, String namedQuery) {

    return serverMgr.getDefaultServer().createNamedQuery(beanType, namedQuery);
  }

  /**
   * Create a query using the query language.
   * <p>
   * Note that you are allowed to add additional clauses using where() as well
   * as use fetch() and setOrderBy() after the query has been created.
   * </p>
   * <p>
   * Note that this method signature used to map to named queries and that has
   * moved to {@link #createNamedQuery(Class, String)}.
   * </p>
   * 
   * <pre>{@code
   * 
   *   String q = "find order fetch details where status = :st";
   * 
   *   List<Order> newOrders = Ebean.>findOrder.class, q)
   *     .setParameter("st", Order.Status.NEW)
   *     .findList();
   *
   * }</pre>
   * 
   * @param query
   *          the object query
   */
  public static <T> Query<T> createQuery(Class<T> beanType, String query) {
    return serverMgr.getDefaultServer().createQuery(beanType, query);
  }

  /**
   * Create a named orm update. The update statement is specified via the
   * NamedUpdate annotation.
   * <p>
   * The orm update differs from the SqlUpdate in that it uses the bean name and
   * bean property names rather than table and column names.
   * </p>
   * <p>
   * Note that named update statements can be specified in raw sql (with column
   * and table names) or using bean name and bean property names. This can be
   * specified with the isSql flag.
   * </p>
   * <p>
   * Example named updates:
   * </p>
   * 
   * <pre>{@code
   *   package app.data;
   * 
   *   import ...
   * 
   *   @NamedUpdates(value = {
   *    @NamedUpdate( name = "setTitle",
   * 	    isSql = false,
   * 		  notifyCache = false,
   * 		  update = "update topic set title = :title, postCount = :postCount where id = :id"),
   * 	  @NamedUpdate( name = "setPostCount",
   * 		  notifyCache = false,
   * 		  update = "update f_topic set post_count = :postCount where id = :id"),
   * 	  @NamedUpdate( name = "incrementPostCount",
   * 		  notifyCache = false,
   * 		  isSql = false,
   * 		  update = "update Topic set postCount = postCount + 1 where id = :id") })
   *   @Entity
   *   @Table(name = "f_topic")
   *   public class Topic { ...
   *
   * }</pre>
   * 
   * <p>
   * Example using a named update:
   * </p>
   * 
   * <pre>{@code
   *
   *   Update<Topic> update = Ebean.createNamedUpdate(Topic.class, "setPostCount");
   *   update.setParameter("postCount", 10);
   *   update.setParameter("id", 3);
   * 
   *   int rows = update.execute();
   *   System.out.println("rows updated: " + rows);
   *
   * }</pre>
   */
  public static <T> Update<T> createNamedUpdate(Class<T> beanType, String namedUpdate) {

    return serverMgr.getDefaultServer().createNamedUpdate(beanType, namedUpdate);
  }

  /**
   * Create a orm update where you will supply the insert/update or delete
   * statement (rather than using a named one that is already defined using the
   * &#064;NamedUpdates annotation).
   * <p>
   * The orm update differs from the sql update in that it you can use the bean
   * name and bean property names rather than table and column names.
   * </p>
   * <p>
   * An example:
   * </p>
   * 
   * <pre>{@code
   * 
   *   // The bean name and properties - "topic","postCount" and "id"
   * 
   *   // will be converted into their associated table and column names
   *   String updStatement = "update topic set postCount = :pc where id = :id";
   * 
   *   Update<Topic> update = Ebean.createUpdate(Topic.class, updStatement);
   * 
   *   update.set("pc", 9);
   *   update.set("id", 3);
   * 
   *   int rows = update.execute();
   *   System.out.println("rows updated:" + rows);
   *
   * }</pre>
   */
  public static <T> Update<T> createUpdate(Class<T> beanType, String ormUpdate) {

    return serverMgr.getDefaultServer().createUpdate(beanType, ormUpdate);
  }

  /**
   * Create a CsvReader for a given beanType.
   */
  public static <T> CsvReader<T> createCsvReader(Class<T> beanType) {

    return serverMgr.getDefaultServer().createCsvReader(beanType);
  }

  /**
   * Create a query for a type of entity bean.
   * <p>
   * You can use the methods on the Query object to specify fetch paths,
   * predicates, order by, limits etc.
   * </p>
   * <p>
   * You then use findList(), findSet(), findMap() and findUnique() to execute
   * the query and return the collection or bean.
   * </p>
   * <p>
   * Note that a query executed by {@link Query#findList()}
   * {@link Query#findSet()} etc will execute against the same EbeanServer from
   * which is was created.
   * </p>
   * 
   * <pre>{@code
   *   // Find order 2 additionally fetching the customer, details and details.product
   *   // name.
   * 
   *   Order order = Ebean.find(Order.class)
   *     .fetch("customer")
   *     .fetch("details")
   *     .fetch("detail.product", "name")
   *     .setId(2)
   *     .findUnique();
   * 
   *   // Find order 2 additionally fetching the customer, details and details.product
   *   // name.
   *   // Note: same query as above but using the query language
   *   // Note: using a named query would be preferred practice
   * 
   *   String oql = "find order fetch customer fetch details fetch details.product (name) where id = :orderId ";
   * 
   *   Query<Order> query = Ebean.find(Order.class);
   *   query.setQuery(oql);
   *   query.setParameter("orderId", 2);
   * 
   *   Order order = query.findUnique();
   * 
   *   // Using a named query
   *   Query<Order> query = Ebean.find(Order.class, "with.details");
   *   query.setParameter("orderId", 2);
   * 
   *   Order order = query.findUnique();
   * 
   * }</pre>
   * 
   * @param beanType
   *          the class of entity to be fetched
   * @return A ORM Query object for this beanType
   */
  public static <T> Query<T> createQuery(Class<T> beanType) {

    return serverMgr.getDefaultServer().createQuery(beanType);
  }

  /**
   * Create a query for a type of entity bean.
   * <p>
   * This is actually the same as {@link #createQuery(Class)}. The reason it
   * exists is that people used to JPA will probably be looking for a
   * createQuery method (the same as entityManager).
   * </p>
   * 
   * @param beanType
   *          the type of entity bean to find
   * @return A ORM Query object for this beanType
   */
  public static <T> Query<T> find(Class<T> beanType) {

    return serverMgr.getDefaultServer().find(beanType);
  }

  /**
   * Create a filter for sorting and filtering lists of entities locally without
   * going back to the database.
   * <p>
   * This produces and returns a new list with the sort and filters applied.
   * </p>
   * <p>
   * Refer to {@link Filter} for an example of its use.
   * </p>
   */
  public static <T> Filter<T> filter(Class<T> beanType) {
    return serverMgr.getDefaultServer().filter(beanType);
  }

  /**
   * Execute a Sql Update Delete or Insert statement. This returns the number of
   * rows that where updated, deleted or inserted. If is executed in batch then
   * this returns -1. You can get the actual rowCount after commit() from
   * updateSql.getRowCount().
   * <p>
   * If you wish to execute a Sql Select natively then you should use the
   * FindByNativeSql object.
   * </p>
   * <p>
   * Note that the table modification information is automatically deduced and
   * you do not need to call the Ebean.externalModification() method when you
   * use this method.
   * </p>
   * <p>
   * Example:
   * </p>
   * 
   * <pre>{@code
   *
   *   // example that uses 'named' parameters
   *   String s = "UPDATE f_topic set post_count = :count where id = :id"
   * 
   *   SqlUpdate update = Ebean.createSqlUpdate(s);
   * 
   *   update.setParameter("id", 1);
   *   update.setParameter("count", 50);
   * 
   *   int modifiedCount = Ebean.execute(update);
   * 
   *   String msg = "There where " + modifiedCount + "rows updated";
   *
   * }</pre>
   * 
   * @param sqlUpdate
   *          the update sql potentially with bind values
   * 
   * @return the number of rows updated or deleted. -1 if executed in batch.
   * 
   * @see SqlUpdate
   * @see CallableSql
   * @see Ebean#execute(CallableSql)
   */
  public static int execute(SqlUpdate sqlUpdate) {
    return serverMgr.getDefaultServer().execute(sqlUpdate);
  }

  /**
   * For making calls to stored procedures.
   * <p>
   * Example:
   * </p>
   * 
   * <pre>{@code
   *
   *   String sql = "{call sp_order_modify(?,?,?)}";
   * 
   *   CallableSql cs = Ebean.createCallableSql(sql);
   *   cs.setParameter(1, 27);
   *   cs.setParameter(2, "SHIPPED");
   *   cs.registerOut(3, Types.INTEGER);
   * 
   *   Ebean.execute(cs);
   * 
   *   // read the out parameter
   *   Integer returnValue = (Integer) cs.getObject(3);
   *
   * }</pre>
   * 
   * @see CallableSql
   * @see Ebean#execute(SqlUpdate)
   */
  public static int execute(CallableSql callableSql) {
    return serverMgr.getDefaultServer().execute(callableSql);
  }

  /**
   * Execute a TxRunnable in a Transaction with an explicit scope.
   * <p>
   * The scope can control the transaction type, isolation and rollback
   * semantics.
   * </p>
   * 
   * <pre>{@code
   *
   *   // set specific transactional scope settings
   *   TxScope scope = TxScope.requiresNew().setIsolation(TxIsolation.SERIALIZABLE);
   *
   *   Ebean.execute(scope, new TxRunnable() {
   * 	   public void run() {
   * 		   User u1 = Ebean.find(User.class, 1);
   * 		   ...
   * 	   }
   *   });
   *
   * }</pre>
   */
  public static void execute(TxScope scope, TxRunnable r) {
    serverMgr.getDefaultServer().execute(scope, r);
  }

  /**
   * Execute a TxRunnable in a Transaction with the default scope.
   * <p>
   * The default scope runs with REQUIRED and by default will rollback on any
   * exception (checked or runtime).
   * </p>
   * 
   * <pre>{@code
   *
   *   Ebean.execute(new TxRunnable() {
   *     public void run() {
   *       User u1 = Ebean.find(User.class, 1);
   *       User u2 = Ebean.find(User.class, 2);
   * 
   *       u1.setName("u1 mod");
   *       u2.setName("u2 mod");
   * 
   *       Ebean.save(u1);
   *       Ebean.save(u2);
   *     }
   *   });
   *
   * }</pre>
   */
  public static void execute(TxRunnable r) {
    serverMgr.getDefaultServer().execute(r);
  }

  /**
   * Execute a TxCallable in a Transaction with an explicit scope.
   * <p>
   * The scope can control the transaction type, isolation and rollback
   * semantics.
   * </p>
   * 
   * <pre>{@code
   *
   *   // set specific transactional scope settings
   *   TxScope scope = TxScope.requiresNew().setIsolation(TxIsolation.SERIALIZABLE);
   *
   *   Ebean.execute(scope, new TxCallable<String>() {
   * 	   public String call() {
   * 		   User u1 = Ebean.find(User.class, 1);
   * 		   ...
   * 		   return u1.getEmail();
   * 	   }
   *   });
   *
   * }</pre>
   * 
   */
  public static <T> T execute(TxScope scope, TxCallable<T> c) {
    return serverMgr.getDefaultServer().execute(scope, c);
  }

  /**
   * Execute a TxCallable in a Transaction with the default scope.
   * <p>
   * The default scope runs with REQUIRED and by default will rollback on any
   * exception (checked or runtime).
   * </p>
   * <p>
   * This is basically the same as TxRunnable except that it returns an Object
   * (and you specify the return type via generics).
   * </p>
   * 
   * <pre>{@code
   *
   *   Ebean.execute(new TxCallable<String>() {
   *     public String call() {
   *       User u1 = Ebean.find(User.class, 1);
   *       User u2 = Ebean.find(User.class, 2);
   * 
   *       u1.setName("u1 mod");
   *       u2.setName("u2 mod");
   * 
   *       Ebean.save(u1);
   *       Ebean.save(u2);
   * 
   *       return u1.getEmail();
   *     }
   *   });
   *
   * }</pre>
   */
  public static <T> T execute(TxCallable<T> c) {
    return serverMgr.getDefaultServer().execute(c);
  }

  /**
   * Inform Ebean that tables have been modified externally. These could be the
   * result of from calling a stored procedure, other JDBC calls or external
   * programs including other frameworks.
   * <p>
   * If you use Ebean.execute(UpdateSql) then the table modification information
   * is automatically deduced and you do not need to call this method yourself.
   * </p>
   * <p>
   * This information is used to invalidate objects out of the cache and
   * potentially text indexes. This information is also automatically broadcast
   * across the cluster.
   * </p>
   * <p>
   * If there is a transaction then this information is placed into the current
   * transactions event information. When the transaction is committed this
   * information is registered (with the transaction manager). If this
   * transaction is rolled back then none of the transaction event information
   * registers including the information you put in via this method.
   * </p>
   * <p>
   * If there is NO current transaction when you call this method then this
   * information is registered immediately (with the transaction manager).
   * </p>
   * 
   * @param tableName
   *          the name of the table that was modified
   * @param inserts
   *          true if rows where inserted into the table
   * @param updates
   *          true if rows on the table where updated
   * @param deletes
   *          true if rows on the table where deleted
   */
  public static void externalModification(String tableName, boolean inserts, boolean updates, boolean deletes) {

    serverMgr.getDefaultServer().externalModification(tableName, inserts, updates, deletes);
  }

  /**
   * Return the BeanState for a given entity bean.
   * <p>
   * This will return null if the bean is not an enhanced entity bean.
   * </p>
   */
  public static BeanState getBeanState(Object bean) {
    return serverMgr.getDefaultServer().getBeanState(bean);
  }

  /**
   * Return the manager of the server cache ("L2" cache).
   * 
   */
  public static ServerCacheManager getServerCacheManager() {
    return serverMgr.getDefaultServer().getServerCacheManager();
  }

  /**
   * Return the BackgroundExecutor service for asynchronous processing of
   * queries.
   */
  public static BackgroundExecutor getBackgroundExecutor() {
    return serverMgr.getDefaultServer().getBackgroundExecutor();
  }

  /**
   * Run the cache warming queries on all bean types that have one defined for
   * the default/primary EbeanServer.
   * <p>
   * A cache warming query can be defined via {@link CacheStrategy}.
   * </p>
   */
  public static void runCacheWarming() {
    serverMgr.getDefaultServer().runCacheWarming();
  }

  /**
   * Run the cache warming query for a specific bean type for the
   * default/primary EbeanServer.
   * <p>
   * A cache warming query can be defined via {@link CacheStrategy}.
   * </p>
   */
  public static void runCacheWarming(Class<?> beanType) {

    serverMgr.getDefaultServer().runCacheWarming(beanType);
  }

  /**
   * Return the JsonContext for reading/writing JSON.
   */
  public static JsonContext json() {
    return serverMgr.getDefaultServer().json();
  }

}
