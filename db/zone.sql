-- MySQL dump 10.14  Distrib 5.5.35-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: zone
-- ------------------------------------------------------
-- Server version	5.5.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('3afa3d2b2c49474db74eac106172f5e0',1,'test_audit.png','564df0e7452e4bf199222b59a6ff85a4','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0|\0\0\0=ӳ�\0\0S�IDATx���|T����S����h�˲�l�e�ծZ1��4�X��K]��RVV�\"�Z/�\"\Z1�c\nĀ����D.I�c�1f��E��c��>�9�03�I2I��L^�����\\�\\2��>s>sΜ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��/\0\0\0\0\0�+�,e�\0\0\0\0\0� ެ/�J����%\0\0\0\0�s�m�ɖ-ܟ�t\0\0\0\0�y�vk�\0\0\0\0�V$��T���n\0\0\0\0\0�l�[k���\r\0\0\0\0@��m�vz\0\0\0\0\0�m�=�����\0\0\0\0���κ=\0\0\0\0\0Q�����~\0\0\0\0\0��f��vgK7\0\0\0\0���=���̺����q 5\0\0\0\0@�o��x4���R�߶6݁nG�\r\0\0\0\0��Ͷ��j�UM�g�m�D���N7\0\0\0\0����k�[j��M��gz��\r\0\0\0\0�6�vBM�����Ͷo����\0\0\0\0���֦���;�f���?3��\r\0\0\0\0��f���n���G;�m��\0\0\0\0t�f������vG�\0\0\0\0\0a��[��5�i�}�n��\r\0\0\0\0],ά���6k�լ)�M����^v#�ݲ]e]�I���(��(*ʪάj�r�z�poh�E;�p��\Z���Ud��ƙu�Y}xyڤ������-�m���@��\r\0\0�h$}� ý���2[�:h�76���A��l5ڋͺ���C���3N�w���t�n\0\0\0t\'�J�ցg�r�+��o��o��d���`�(��/G)���(�\0\0\0�d�w�������\n�lg|��D6ݭ5����vk������\0\0@����w��yj�y>�jmskͶ�Φ�ޭ}�\0\0\0\04�zK�#�9@�|g���O�@[���l�tۏG�\r\0\0\0�����\'RCH���yB&�h�{��F������8|g\0\0\0hN��$^��l��h�o�=���<���6Z�?�\0\0\0&G/���+�8����l#�|w/�fy��O}�ޮ���\r\0\0\0t[YgƉ��Ysx¦��(��\0\0\0hN��gxp\"�!�9�Vt4ݝݼ\0\0\0�L֛syp\"�48:y8��n��F\0\0\0G�V^�ˀI��>�a�t����\0\0\0��>���\'��%+���n�\0\0\0\0�`��&z���D���\0\0\0�C`����f:���?��\0\0\0��\0C�m�f7r\0\0\0�~0tr�M�\r\0\0\0���Nn��h�\0\0\0�!0�й�Y��\0\0\0��\0C\'ʲ�U/^\n\0\0\0�~0t�8�\\[�\0\0\0�!0�Щ2��$���\0\0\0�7�8�u�.�\0\0\0�����i����|�\0\0\0���o�]�xy\0\0\0\0�!0��>��m�\"^\0\0\0�~0����|�\0\0\0���J���\0\0\0�!0���\0\0\0X��+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c��\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0��`��y\0\0\0��\r0��W\0\0\0\0X��+\0\0\0�ul0���\0\0\0X�`�+\0\0\0\0�c��\0\0\0�:6``^\0\0\0�c0�\0\0\0\0ֱ�\0�\n\0\0\0`00�\0\0\0\0ֱ�\n\0\0\0\0��`��y\0\0\0��\r�W\0\0\0\0��\0�y\0\0\0��\r0��W�\0\0\0\0��`��y\0\0\0��\r�W\0\0\0\0��\0�y\0\0\0�ul0���\0\0\0X��+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c��\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0��`��y\0\0\0��\r0��W\0\0\0\0X�,���R�SRRfN�8qolllC�޽��:P�P={�������l���Ϳ#�\0\0\0��\0��-[v�ȑ#�cbbԜ9�U~~�jh������:���,**T��ϩ�6������_L�\0\0\0@?X�JM}e}�~�TR���j4��&*���H����SO=�&�\0\0\0�!0���پ��TQ�v�	��\nq�����}��Üc�\0\0\0��\0�˖-�G�lm3�?�W-]��\Z3&A�\Zu����k�\r�#U�f�Q����SN��`�r\0\0\0����R�G���>)�y��7^�b�R5��ԭ���5v̍*>�Z5t�j�n���:��ޫW�<b\0\0\0�!0�\"\\J�11?R.W���5zU¨x�h�p�H�~�����aW�Mwl��Ω��>�Ss��=\0\0\0���&N��wΜ\'�F��f5bx�za�|��V�Jy1Ioپj�P}��v���{;�c5mڽ;�Y�H�\0\0\0@?X��Ґ��c6z\r���\'���Tm��������T�>s����C�?S\'�o�������ջ��0g�N�\0\0\0�!0�\"X�޽UC��f�W߬���*.ڢvoU�w���;vlW�=����P/��q=\0\0\0�����R_6+���j֬�j�o&���BU��]�v�P���o5�����_���Tǋ\0\0\0��\0����Ϋ\Z?W�ֽ�bc��?�TN�ϫJK�Ր�/U��NU\r\r�5�=��b�\0\0\0�!0������S�}wL��!]\r\Z�j���{e�U��*��?���W��W^2��4�{��W^���W�o����>��6\0\0\0��\r�1��n٤k[�켼��͌t�h�X�D��x�Jz�Y�̼�����P]{����5^�Au�X�\0\0�~��h����c�~��D.����ź�����-P�\'�S�;�I���Q3g�V=�ģf���~7�~���:^,�\0\0\0@?XT4�_8%\r�����ݬ�H{U7��|?;��;�	�ܳsu�-M���	js��V��Չł\r\0\0\0�C`�EE�}ԩ�{��G��~y�8�Pˮ��*.n�����zkwi�^�Au�X�\0\0�~��h�?�*�7S_~��J|�i�0�:5b��j��+TܕC�P�Ѿ������Qǎ�EO�{{��ł\r\0\0\0�C`�EE�}�\n�b�\0\0\0�!0������\n�b�\0\0\0�!0����>L�Y�`\0\0\0�`Q�p��\n�b�\0\0\0�!0����>D�Y�`\0\0\0�`Q�p�¬X�\0\0�~��h�PaVmwO��@<\0\0@?XX7��¬Zw�hm]��\0\0\0�C`��w�]�亅g����u��W�/+)��6���_ff�s:\'�u}��z[�۔�������z��K�Ϛ5��c͟?K�>th��uUU[��G��7{����f�UV��kj\n��\r��3�8������Zi�i�\0\0@?X�7ܟ���\r��eYY+�.���5y�̆�H�����;��r��sr��ٳ�JN��\\�n�ݧ���l6�o�3�<CO[]�U?��`n���\Z?�j[�i���v��+�z>ϕ+_pN�߿C����Wk�iyL��gϞ��}_��r~ʔ�tþ/����^�/��\'z�ѣ���Ͼ��G������s�E͘1�l��շ�����[�g���u\\(\0\0\0�~��m���-��LL|L��oٲ.�m�.���*6�����_��Ç�����yy�����*}^[ΟrJo�|�o6�w���J}��cX[��ԡC��˗,���KF��`���euu��oA�\Z�yH.�55�����[����Y�Xmذ��y��eg�R��Unn�~�r^�������?��w�9?PÆ]����|��/�zm�[�i�\0\0@?X�4�iVee�Ԟ=٪��c���ݡD���x������?�k��S99����9��N5��\nu��\'�;��lb�6��O����R����@����<O-\\���\\�w7�x�F���.W�*/߬/KM}N?VEş�u��җ��-R�_��y������ ���^�*����T�|�(�q�瓛�z��]����2����c�}yN׆F��(��(wՙ�Ǭl��1+ެ^���C`��Iý�Y-Y2O]tѿ�-[֨ի����n��=�A}^nSX����I��K^/e�-��-���=���c�^�����&%=��g���P��O�˦N�`}W�^���=}cc��&\\]]������Wx�\\�m�:=}v����f���z+��m��=[o��ˏ-Sk֤����U|�}�O~2H�}��oy.��\\nߗL\'���P�\\2�l�W{=�\\���X����5�sw��5Ƭ���5�YIf�c��#i��#��#�~��j�?iVr�]w�R�NK[��B{^�������.�0�j��_W_���]���~d���.+�v�����Ի\\��_�<�4��ٖ�U��U�^������+ӧ�η�Lo�\Z�~�?�8zt��}���|mm����iW�Nҧ��\\&���7^�O.[��I�h74|��O����X윗\r��j�����f��g>�\Z��7��AVt�a��;G�f}a�L^��#�~��n���Y��۝�ӧ��u]f��~o\'u���}q���v#+�rWW��v�\\���_�/^,����(V��̦�bUS�nV*��ý�ld?V))������oذT7��&ݦ�n�����J�y��\nש�.�P7��&<�j�6{}Ǝ�^�zk��,o���#�Tv�\n�h�zM�n��_���G�YY�~_�\0��w�w��-\r��a�Y��ڝ�rý�,9x?��\0�̆��Y�\'��P���[JK7��5fC[m6����Ʈ�\r���kk����Z?����l����j����v7�ǟKr򓺡ݷo�n�������y�.�if��l�?���>��8v��y^r��>`Z��Hg[�������Oy\\�~�w�B�V�_�`�3�\\��nu�e��fϞ�/������^���[�o��p&ߟ˲Vr\0�O+G��Ix?��\0�Ć�c�u�H���]�������\r\r��ÇK�M7��2e��<���ڞ{n}Z*--�:�z}CWz��,��ZC%�#��������Æ��l�SUFF�JM}F?�}�܇�w�^�u���?��µ�	��4�V]r?�&8�l��M����}�������[�x���{��kc��=c6�����{�u�P��7o����{���Vjժ��QCS^�1}�?�Vrd���k�eK�#�\0�G\0�`�pW{UN�\nݼ����t�lv��fڴ�������M�\Z?������>��j8_�w�|�|II�>�r}h�;K�oj�r�)(x��6<����<����u���}��|w��&O�����;��c�?0��������m�����ת[o����ۗWTd����B7���z�����1&��}jp�\Z��9����C`�E\\��QDUSӇ�2M��K{���q\'�IbqtH29x?��\0�����\n���q\'G��#��T����S��!f��N�;��\"萭����,�\Z�J*�*J���{W>\0�7���C`�ET��f��n���i#\0�Q./��@?X�4�T�U��;9:�)@�sT��\0�~��1\r��T�U��;�-�:)\09�@?t����\n���q� G\09�Н\Z���0+\Zn\0� G\0y,*\Z�2*̊�\09�@^�\0���{/fE�\r�� /`�EEý�\n���@�\0r�0�����M�Y�p G\09�`��O�����l�vQaR_}U�Ϝ5.��� /`�E���|(?���RaR��?��9kv�\'\0� G\0y,�]u�e��̙J�F5v�Ui�I$O\0�@�\0�X0����˵�f7<�=zT��&�< G\09�`���&%=H�5f�UK�Y�K�\0�#����0��3O�/*ZA�ۅ���t�9/�u1y@�\0r�0��G�9��w��k�{��Qc·1�	\09�@^�\0�¦����l޼�>�;ݡ�ζ���n�l���@�\0�t�6�g���~����L�e��M/lh(�1������䧿�h����;��\'\0� G\0y�{�Ԭ9fm5��z��)����m��8��� /`�!�eY�/y�\0r�0��9d+�˚W	��	 G\0�@^�\0C��4�﮽���<�\09�`�!���v��e!O\09@�\0�:&�h~P2���w��@�\0�#����v�uۮq�<�	 G\0�@^�\0C�d�z����<�\09�`^K[��.7y�\0r�0��NY�4���<�\09�``^1�\0�#��00��<�@�\0�0��W`�\09�``^1�\0�#��00��<�@�\0�0��W`�\09�``^1�\0�#��00��<�@�\0�0��W`� G\0�``^1�\0�#��00��<�@�\0�0��W`� G\0�``^1�\0�#��00��<�@�\0�0��W`� G\0�``^1�\0r��00��<�@�\0�0��W`� G\0�N�,k@�T;y�X�y�#����\\�4�cx�X�y�#��^v�v�Y�x�X�y�#��ސ\Z�q�<,�<�@�\0�����r�w�ٺ��\0�#�� /@��.7��fa\0�@�\0r��d\Zl�fa\0�@�\0r����y4�	�,�<�@�\0�t���l�fa\0�@�\0r��\ra��0\0� G\09�\"g�)�;%%e�ĉ����6���;��pQ-TϞ=�;���?>|�F��HF�@�\0�#��tc˖-�g�ȑ�111jΜ�*??O54|e���QA��nEE�*1�95p�������5_�Y�y�#\0� /�Lj�+���맒�^P.W��46Q�X�ɋT�>}�:��Soba\0�@�\0�#��t�f��.PEE����[�Uyy��۷�?�����,�G\09@�\0�ҽ,[��ٲ]T��l\n]^�t�Kj̘5j�����Q7ďTɋ��MG������SN9����^�y�#\0� /�h�(�{��kꓒ�7O~�U+�/U�>J�z�X]c�ܨ��UC�^�������8��^�z�0\0� G\0�@^�TJ�11?R.W��6zU¨x�h�p�H�~�����aW�Mwl�������Ԝq,�<�\0r��(4qℽs�<i6�_7����櫬�2TʋIz��U#���������Qm�i���i΂D`�\09�K��Ґ��c6�\r���\'���Tm��������T�>s����C�?S\'�o�������ջ��0g�N`�\09�K�ݻ�jh��l\0��c�R�E[Ԏ�j��]rzǎ����{��%��9\\�d�%X�R� G\0�@^��R��f�r�]͚5SM��$URR���ۣk׮j�}��f<x������ޖj{u��ě%GeO���!v,�r�䥛4�u^����Z��5�SU�Q�zp�}^UZZ��\\~�z}u�jh������W7H�O�-[�?��f�\r�#\0� /ݤ���S�}wL��!]\r\Z�j���{e�U��*��?���W��W^2��4�{��W^���W�o����>��W�ķ�n�r���\0r��hk��9�u�&�[��d��mVof��F{��%��ŋT�Ϫg�=��������kF��o�����Ih�����;�,�r�Q��f�g�Z��ͪ��p�Y���i�Lk�(n����c�~��D.����ź�����-P�\'�S�;�I���Q3g�V=�ģf���~7�~����^Q����f�-�,�r�Q��qf�ZM�+f�f� �N����1V#�dM�oք�l��pJ\Zn�	��o�Y����n���~v�5w��g��[��1��朷�����o(�Fp[�����\0� G\0�4/�Dg�Un5ӽ���4��[ͺ �\Z�N�ݻM=�������Zv%�WqqCԯ\'��[�KK�����eo(��b-����f�\r�#\0��ܼ�7���E�W��>�~�ek���}�U�o�����S����*a�uj��+�СW��+���f�}�����ߣ�������T�+��P:�{8�����\0rDh^d%^���I�w�u����>BuQE�JkH����� /!2�j�c:�~c����-�f���Eo(�}�q�t���#\0����HS,�ǝ���Ժ�A��p���\"�\r���g�3�N�o0|oǁ�X��@�\0D@^�H�3O�c�w��Fv��7��*��P|�DK������t�M7+8\09��0΋�����wk�������!��*B�P���}���� �n�fۮ���nVp\0r�#\0a�����K�[���� �E�o(��`�sKM���S�L�w�Y��@�\0�Y^���\n�cV�`��~�0�m\r������ֱ��N����t����m�ٽ���@�E�W�8ď�h�����+���k���k�J�#3s�s:\'\'M�����6���={6����^��yޮ}�v��O>�M�c����]�f���gg�Vg�yF��甔y��څ��hO��Z�l�����l�f G\09��yYk�m!~Li�°�+��U�l�j���={���9f3\\��?1�q�4��8���Z��ަ��V:�e��U�1�0�}Z.��-�eZ�\'םrJ���С=z��Y�g������^4���U]����;V��~+*�TMM����[�&O��3}qq����p��lҤ_��8qq?է�6lX��;�ܠ_�.n�[��v[��@Mw�v6�6���\n@�\0r �\"�w_�ǌ1��0n�=�j��n�?mw��g̘�ޫ�8�K���������#}^\Zr�i��Z�Ǝ�AM��f����z��z���?��WJ���_��ǲo3q�mzZ�����ii�׫k����{�y��x���ȑ�԰aC�����~ކ�Z����X�^�f�s��]nk����{���m�^�0�i�[j��:�lw����� /��ά�C���x\r�p{nՌs7������5����Ym6�s�i��j6��F�;Ʃ�ҍ��i�3���2m]]�JOOQ��.|Z_.��_����]x�Ul���<���שI�n7�j��yz�4��er�ii��m���e�����,�l��O���^�<gy�r���Z����z�.�n���隚m��o��f\r�����eMwG�mߦ��t���#���TEb)��v�ܶ�*_��7�!���k��C_/�=�MJzB�]W��JN��/�:����Y����=���u����_����4�YY��������?{��\'��[�o�}�ڲe���~W��С]�s��X��?��-R��[[���ٯ��h�k���L�n�[����;\"ɺ�>,cY��@�\0�Zl��@�4�[,�#���߾����R]~�Ŏv���;�I�.+��4�g�u�:��&Xn#�_r�`UP�G��~Z���[�W�zA_�o�v��8۶�S�\'�W������R�8˗\'�i]���=7������2���**r�����2���D�Ǐ�&#�e��#F\\������lݾ��QA���}���h���iiw[~�;�p���#��¼��֛)�x��I�U\\�i6�K�}�^���@UW8����]�L/�/���+ԁ;Tzz�n�kj��;��popn����s��ctC������&M��l�����e�3N�f߾m���}T�U*//�j��9�m���Wzݷ�?��o��ii����u��;�ذ��:��|��=M7��f G\09��y�(�Ǜ�\"�����l��/読-T˗?�c����f;_�{���zws��3��ON~J9��lj��\r�\"}Ycc�utr���o�}��\rw��K����яa��q^�lZ��kj\n��å��몪�q�������6���Ч��=K͘1�]�c7ܭ�\r�&��[��������ts�rVp\0r�#\0a�~��孖>\rwM�e��jZMj�JIq����ڹ��p�~�0��e*#�%������ܾN�C�fe����7���.�G֮໛=/�ǵ/�w����[[��X�ߦ��\\.����m�����=���������t����;ۭ�Nw C~����@X�e�Y��Pt����3H������J��Pa6�Ku�t�p�����ڙ���.�:_R�>�r��,�����75}�LSP�f6�������}P%&>b6�睊S�SM�6Q��*,\\�N;�u��^��f8��ߪk��T�����QW��u�����~.�a����[��j�<�����D�XimskͶ�Φ�ޭ}�SVp\0r�#\0ᑗ\\#t[ä!�\Z�3H��WSSUD��z�|C	�����v�M��x4۬�\0� G\0�(/��^n�f+��;!r.�}C�-ݾ�w�i�;����>��w�Y��@�\0�i^���j���V#���wr�]EuQE���O�y6�mi��Vn�O���#��ĘuЬ�t��Z�?(�g�RR]T���{�4������v��o���#��%D���Ŝ�f^�wB�� �*�.�(xC�������:X��@�\0�q^&Y�qgm�Ժ�G�a)��E%o(��twv�Vp\0r�#����l�-g��|�Z��}�j�b)UAuQE�JGwg7r�\09@���K������v���ַ\"�}��A�4��z�ꢊ�7��U�����\0rDQ^n�\Zo�-|���	��:ݺ�t�9� Ѭj�ўdD���[h�˩.�(|C	v�pv#g�\r�#\0��Ҽ0���Z�w�����fe�]�c�y)��E�o(mm���Ug}��\09@�\0��\rw�E�I������f�6@�\0�#��Dyý�ꢊ����n�,�r�䥻4�{�.�n��f�6@�\0�#��t\'�|�w\r\r�f�\nq}�U�>s���0���$�m�\09@�\0��m��C��K�p�Z�����Y����ka�O���\0r���᪫.[7g�T�,�B\\c�^�f�v���G\09@�\0�m�A��|�r��	m}ңG�\nsı0\0� G\0�@^�T��?,MJz�&8�5f�UK͗>���G\09@�\0���y�i�EE+h�CP��Kכ��A�.fa\0�@�\0�#��D��s�9��4�\'���ѣG��=���y�#\0� /ݷ�>���7���Nw�g�ڍ���}��� G\0�@^��A={~/���O=<e�-�7mz�`CC!\rs;ꫯ��[�����h����;��0\0� G\0�@^��K͚c�V�\Z�IW.��;���_q)�#� G\0y�y�� /\0X�y�#��\00�\0r��\0�\0r�#��\0`a\0�@�\0r�\0,�<�\0r�\0,�G\0�@�\0����G\09�@^\0�0\0� G\0�@^\0�0` G\09�\0`� G\0y��\0�#� G\0y�y�� /\0X�y�#��\00�\0r�#\0�\0�\0r�#��\0`a\0�@�\0r�\0,�<�@�\0�\0,�G\0�@�\0����G\09�@^\0�0\0� G\09@^\0�0`�\09�\0`� G\0y��\0�#��\0y�y�#\0� /\0X0�x	\0r�#��\0`a\0�@�\0r�\0`a�<�\0r�\0,�G\0�@�\0����G\09�@^\0�0\0� G\0�@^\0�[���j\'/l� G\0y�!f�Zi���2���\0r�\0��n��.2�/l� G\0y�!-4��xyX`�\09�����]n��6[�Y`�\09����]n��� G\0�@^\0t�L���,�r��@���h�x9X`�\09���c����,�r��@\'\Z�6@�\0�#��\0�*�z���̜8q����؆޽{��-*��ٳ�w��gÇ�h���Q��#rD��9\"/@7�lٲ{F�Y��̙����TC�W��;��%�cQQ�JL|N\r8����{͗�bVp�E��9\"G��#�D���W����O%%��\\�Fsa�D��JN^�����թ��z+8�\"G��#rD��y�x�|������B�[*DU^^������{�~�\"G9\"G��#rD��Э,[�����h���py�ҥ/�1cԨQ׫믿F�?R%/Jj6��*/߫N9�/��ߝO�#rD��9\"G��#�tr ��#��OJz�<��W�X�T���(u�-cu�s����V\rz�Z���P�T���?�իW+8�\"G��#rD��y�DJ�11?R.W���h���Q�z�|�\r#���ϮSÇ]i.�c�MOu��>��O�Y�\n9��9\"G��#rD^�(0qℽs�<i.�nV#�ǩ�WYoe����\'�W��/��.ח~oG���M�w�9KY�!G9\"G��#rD��bc�4�����fu�����~��nyGe�i�Z�j�Z��F}\\������շ�~��vT���ws��d\'+8�\"G��#rD��y�@�޽UC��悡�Y=6�!U\\�E�(ުv�*�%�w�خ{�!����_2�Y�b�Q��#rD��9\"/@���(�e�r���f͚���f�*))T���ѵk�5���V3�O}���~oK���|���9\"G��#rD��y�Y�]�U����u�^S��?U�U����U���j�嗪�W����Ϛݞj��C�(rD��9\"G�� ���p��6��aCcUMu�z�l��ݼQe��G���J���K�B;M�t啗�����o�����\n9��9\"G��#rD^��Z0sj�M�7ea���Y�����+�/Q//^��^xV=3�i}���/-T�^3Bm|{��}P�/Vp�E��9\"G��#�DՂ��N=6�w����\0^��Xג��U����y��>����#j�ߪ\'�x�\\(g��ͼ��>��+8�\"G��#rD��y�j���S�`��������i���,���?G͝�z�ٹz�,�1��朷��T\'+8�\"G��#rD��y�j�|ԩ�{��G��~y�8���]��U\\���	�������z���b�Q��#rD��9�\"Y�sn�v\Z\0�]0�U�o�����S����*a�uj��+�СW��+����������G;�=�����+8�\"G��#rD��Qb�;���{���&�\n9��9��9\"G�e��l�Ջ�	z��&�\n9��9��9\"G�\ri��G��k�|�\n��╀�K G9\"G��#rD���r�w�ٺ\r�o��7*L*JWp���¬$��rD�#rD��9\"G�(l��.7��ڿ`>D�IE�\nN��J�lQ�,\nڌ_rD��9\"G䈊�e\Zl�:k�|�\n�����\0[�p���#rD��9��)Gq\rw�~Ղ�\0&E+8	�����\'�#��#rD��9\"Ga��.7[���-��J�IE�\nN[W^�i���#rD��9�\"=G̺Ϭ�fU�Uo�\rf}b�w3�iM���Z*L*\nVp��R���\"G�\"G����%?��k5֪��o�Z)�M�O�0�_�i��]]���0~�9\"G��#*�rcVvM���j��T@���T�T��ttw�Hߝ��K��9\"G�Q�����H��ͳ�j�\'�u�Y}�i��5Ⱥ��n�%\\>�bk7x��*L*BWpZ; M���#rD�(rD�(r���w��t��������}�{2��w���\n�����>�k�nY`��#rD��9\"GT$�h�O�\\i��f��ܮܧ�fK7�|��I�K�߶m�����>}�����奩#��ɓ�CM�t�Wmܸ\\ee-S-=�\\7mڝm~^�W\'���;7��55������@׆\r����s�߷o���%%TYY�>-?jVr�͞����9���*�~}#h��`�{f�i�\r���\"��5����:�E���9�1�w#��_���}��湆���h�\0�����JK��A���Qze_N�{���3�<C-\\��3����<o߿�?�k��ӧ�TK�-��t�\rm~n���P]}ul��Hc �TW�����n6,����^��~o�\'ޢ�l���F�?����;~�rs_�Ӗ����/X�^.��X�.��B}�}����/���s���O�e�d�������v���C��9\na��_�QQ�#�Ƹ��mϦ�ܧ�p|�\\�j;V�t��;����̗��={���w7\n?�,=}��R��\\i�b6\n��[���\"��MM��>�:�����#��G��V����KJ2u3Q\\��.�����{��W����׿�L�r}���e2�<�Çw���g�i�����5k�UL�\0�6r�����m��ߦ�������:���#p�ư�x�NԖ�ϕ�&z\\Iߡ#G��(GTh��#*�r4�����ŝ|�޻��k9p|��q�UW��\Z0����Z�N9��z��{Un�:L�&ݪO�{n����{���^�F��JM�2�\\YN�ӟv�)fðPUW��=vS�{7Si6ZzN���ر�9�e��i�y�fz�i�zk�}�>���R���#GJ�i+*6��jk���������h��F�����w�u����ѧ+��}�ܻ��sh�����@+�VVZZ��7}���#�;t����\n]�#rDE]�<�n\'���x�`+7�o�\\�b�Օ�7�������o�Sa�\ZU^�Q�w�����-s��yy�Y������@��g�[֖�ș����\'%ӧ���9�a��*&�_��)j�������K�ٳp�+.^�o/[�<��w��l64���V�Y����=--ɹy}bc�]M�6�l2���4����Yg�i6;�m�ױ��#D�X�Ib���JN[Wn|Wr�bw���V����\n]�#rDEU�Ƿ>���\'����\'�bh�\0�`��M����:��tðj�szW҇�������_{Zw�p�>�o_��$��46V�@�-��}���V�nj����e�e�&�2ْ8b��^�ee-ѻ�N��_jҤ[t���fd���y:T�ܷ���@n#M���I�\\���������7����ȑ��X�[�_B�`�G�qm�M[W2Z[�	v����?�-m}��9\"G!�u��#*�rt��tY\'����x���Z�^0W�XlS��+Ե�ƪo�Z��;��y�TS����LΗ��ӷ����lke�Roɒ����W�[�������rz��GZ|~2���3�]v��	^�mܸT�Ծ�ꫯpNoذؙn��=�\\����[U����V9�;1�!����ܦ�~���~}������T�q23SZ�_B�`�+��OF�ݍ.�JN�v���n��JN[_+rD��Qr�9��m{�Ɇ���t2��C�ɓow> :�A�R�������nѷ�|<ɩ��(/[_�r}����8U]�Yh���!��y^2PS���\'[}m~�7�i���ٳ>�טEw��2�孜��Y�O��tɃ�3�}̾���Y��	���� e�9����%���y����S����O=�S��-[^WӦ�Z��=�Z�q��ȳ	�t����6�@�4��XMM�+�yY�-t7�t���m~i\n.����;z��\\`�h�^z�����\\�{l�l��_9竪6y4�Gv;���w?�V=�u��X��\'���z�\n�+�n?l�e�B6C_�����~>���������On�r������lY�/��yy���Zwт���\\�ii%��+7}>\'��\"G�� GR2f}��̦y�u���ԧ�G�̙��^\"�o/{V�?�\n�!{�c������̀�=��T}��d�:v�Թ����)V��/�LH�/������)S~�d�^V�ʿ�_�&ݬ��^\'qq���R6�d}����\\9�9�f���nK����Q����������s>�O��g�1�>�Ƈ�����>��=�\'L�����Z��7�ͯ�1j�7���5�y^�Ϟ�[��Aɋ��}ʰ���!]����Ӳ�\r��\'��W�o���W�^6���m{_�0�Q������3��>��􂹲MU]������m����B텤�45U8ӺWr��m��o���)��6��~��q7lH���|�����\\.�ᬳ�?���#E����^e�����y.���\nG�nt����}�����칤�=�Zu��N������i�^�&%=��oh�km���&S`�i�c�<c6U����]�`��d4�>����ӑ�ߕ��0z��9\"G!ȑ=�d{�oY	��2`��d�YƗ�)�1�z�sz\\�tr�B�{����͛�5�dѾ���>?�O�s���c��r�iY�_y��X[��%k�m%s���s���P��~�^�ع��8����jtr����ܨ���,��Q���6�g��/�̖�26导\'�u����G9/����cGz5�vfKJ�����%K�V^�#=N,x�:F�.�$W9�CƬ���>���j٢�!�m��]�[�r������:�r{����sb��ط���&c�+��}O�����X\r�Z�^0�b������S�;�m����22�9/+\n�\n�}^V��O�S7�%��W�e�Ç�镆�´��A�s�|���z��SO��l��ҵ�\'�����oP۶��[�,x��={�t�X<�����Rsee�����w���^��ۗK54�\rD�>���L�5�wO��\Z�Ն�f�+��㫇�-	U���n�9\"G����H�р�d�Կd��=F���4Ş�q��\Z5j����q��z��>�܏d���7������9\r��!?T_����O�_y�C��6��<\Zˬ�g<�p\'�-𞙐9R�˽5o�>-9����e\Z��|�f/+���ݤ����~�R���\0��yE���^��c�J�=w�1F�?45��l�ȴ�Qϲ����-�k�f���62��v�����RS��Ǫ����Iv��&�����ͼ}{�~�GN{��~��R��lL���7�/~�y���<�}������~< �����]��Z�.�$t�����5]kG������.j8oQ�}��9\"G\'8Guu;�ߍ��Z\Z�}�r���͕����x��x��>������\n��ݫ|777�j�+Z��\n�t�sؿ�k��G�i��2�-v+�cef��:/_>�l8�\Z��V����Ho�4��k<K�a?W�9������o�K�c?vi�\Z���.L�x?jӼ���h��g\\�������II��d,\'\'?f}�i��]�)z7u{z{��l��dڳ���j=��s�p����L�m�C�a�.�z�����󹺛��˔������z�^��������3�y�~?�c7Х\r��T�T-�}߬}W&�����t�w��V�_rD�B���֑̅�_R�V=c���P?|�>�>��Kδg�y��$_�O�۷�i��i\Z�(����}��\n���c��뮛��>��^�=Zh�6[l����-��}ڕ���\\y�o6>��w7�������m�^k6��?u���ɷ����_�LW\\��&L�4#��o����9\"G���T]~��9cMƿ�.+{�K���9眭����3NdO-s�ɳ��S�G_��i�ݲ7;e����֖�uVS��߱g�[;c�yi���fO�z�|���Ը�Pˇ\0˗��_SZ��I�q[z<C�R��ܯ��ƕ\r�G|��چ�<�����s��nG�ӯY��9�ظ�:�ҫ��.%�V��*����Y�%�K�Ef��bӑO��Ԋ�����ӕG�m����1���XgBN=�=�t����bN<���<����2�JԆ\r������UFF�3���^�n�q�����g�Ӿ�\r�ܑ��̑�ai���)��Νfm��_M�r��,����oc7ܕ�oY�-3���><ǝ���־�W�����ͼ�3����[��������\'�+��j֬�8�%+�G�l5����Ƨܷ�?r��=v�H_�;��(�h����*��=�˵�Yn�����s���~䯊�_w>�1,�rWWo���kL��d����\'cW� M����{k8���\'�\r�X�������I�n�e���\r\r�����\nW�ol۶�j��[�|���`���[�7��r���9c_��w����s��F�Ο?�����hy?�(�@�6�JJ��&y�Z�`��}���J���|s%~����d-����\\����>�r��Hț����f.�S��v��t3.���i)Y`�w9��oY�+��M�лC��9-ׅ��	т��-�$���5m�wQbt�����_U�e5�/;㡴4��t��;��˸����*-�Y�\"#Y���[�\n��$&>�?���O�e2�)��s�-���o���?ֹ#Gљ����z�o��7�֑�G:��-i�%��o�\r�6�Q��u��I����]��q��Y�?�A���t7\r�f�����~L{zόUTd���1(�m��G�l��#�s�ǲ�*���H��;�%��t�\'ߢO���G͘q���r�\\��O��k�]e߱v�\"G�����?��1C�L�z���[>ܲǅ��w��ȑ-zN��2;[r{C�u��lj78�p�W?��س�Θ</{QƱ�������G���l�߳��Iɠ����ڙ�S�F����\rtm�]�:|�@��76��rҟc}j��^��+���~G��k�LŃ~����~�s�}D��Ӻ��:E�nh(QYY��6s��g���������Դ\'$����h���Vn�v��ػ��������9/[�������m��/ԧ��.,\\e�Hqn�^��u���^+��I�;�\'�՗ٗK�`�FV�d�Ai:�oyx�Z�ʲ�l��#Gѝ#�x�1{��>\"��sܸ�p_�?t��y�}�~��G�nu��é�o�Y�qe?����uw[�$yq7ǧu7�e�����޲eE��]��ƶ�����Ƿjɸ��s�2��6���w�#ޏ�w{l�x��C��ǹ^Ɨ���j�2�SS����fF������(�_w��s]��3���L��eek�_�Hu��l�1���~�;�ƨ�.�u����{��r�����\Z�L\'��л��\Z��G�rY��e�?���m��{���{CZ�¬�2��t��d[[����f��y�b�wC�s!�N7�vs�r�}���mݠ���c��:/�!o�����6a>^mYh��M�+9�㍋��;i7��|Ĉ˼.��v��̕�_蕓ŋ�[�g̘�\\f�-=��GY�\ZsE�sf������Y�b=��i��9�![4|W��i��-��p�9����n�ͳ�C(�e2�/��_���>a�_��ek���t6<Kn�a���Ǖ��i�~�)w~���d���q���_�+u�՗7{_��H 9�i$��(��\r�D��.	8���S�Fr�����9?~ݨQ��c�%_������,���^���W�ƅ�{������i�k��~c�_��,�͂3���^q�kN�|�+�\'r?��ؙV��r�i�=s\"������+Dꩧ�q޿쪨x�y��p�C��(x?���\'�1��x���Y��`����ۮ�DL�6^/e��oߟTj�z!w�H���k��^��z��z\ZC�f��^IZ��q��8]_����Z��y��hl,�>�}A�����a?��\\�����Ȋ�l-,.^e��,��c?�3�e�ww�;�����J�� �`DM�rs_6W���۪Usu�;cƯ͕e��`i�l�d��l�iu7���2�%��e�r��a��?�*/_�l�WU�w�}YI�����D��ڽ`OX�u�55�\n�2��+��/9��G�������,G�<Ʒl��샧]lߊ.5�6p̻CV.�Ns��s���us!Wj�~���L�[����u;�\'�����FkW����nd��E���n֧�I���^Ӯ^=�����1xQ߿}{����14��9�W��-�++mY�1Z�](j�KsTW�M�{���\rI���QU�i6�;������y����FX�5]m�&�_���7������z��x����<>�L�E�n˖ea�;r��rD�~D��9j�|����輟��+7��n�2\0��]!��z�o#�x�p�)x�j&޴v�K��o\"�����x�9=u�m�������\"}Z�}D���._���}o޼�����\"��<������rrC��D�\n��J�����F�?��{����jD����m�}��n��@�p��؋ԤIc�8�1{����&��o[߁]�wCN�J��/��_������s�2���#t�~��6w�Q��#��c��\n�l�;�tK������`-�`.\rY56y4��ֵuցd^q�𼼗�nw��.UG��<s�)\'�\rɖf�a�#�ƚ+��-m��i�]\'8����I�\\;�Ͼ�455��ϖ�����!Z��\'�Vp���tƖ��8�kX��ȑw�,��mۖY�������4�,��^-jv��V�V+W>�����\n\n��\r��A�LUWg6�y��o��=�K��Q����9b�����vy��-[�ۻ{���s�6��]�`nhp�\\��j���\n�{�[�nrr^�������q�f$#�9\'�l\n����ima8a�ϝ�\'GT���x�:���`%��W�\"*Gv6��穦�}��`ذoq�H��{YVVR�i���z^��h;;�;C�Ν��1,��uC�&���4��2w�������#r�&�|�n9-R�����t��܇�#�V@�4ܲUK�{n���m����M�������������o\Zy�����Eo}��\"�-���co	��nw���^�娴�5��j{���Y��r>�ji�ػ��w�^h횝�wz��JK��#��$2��6)�A�\0kl�8��ܑ��#��#rD��QP�[c]�4�YVC.[����e��A�m�0ܻ�{ޮκ\r��`��vt\Z�A���E �H69\n��N�#G�\"G�\"Gmcx��=���;�\0f�!�nx���9\"G��#rD��h��mV��\n�ўdp4r�3�]�b�wA\ZG�(rD��9\"G�u�f=`�Z�>1����阮{w�{�8\0�,��P�������E��\r9\"G��#rD��h�\0�,�#h�B��G��9\"G��#��\0f�a���+7��#rD��9�h��`f�ܥ+9IQ�rC��9\"G��#��\0f�]&����E��9\"G��#\04���ՇQ��#rD��9@�M�`9\"G G��\"G\0X0�`9��9���9���b�L�(rrD�@��\0�f�#rrD�@�(r�3f�#rD��E��E�\0�`�X0�#���#�#r�3ł���#�#�`�̂��Q�Q�\0f�39������.\'�|�w\r\r�,à��j�>s����\"G�\"G G�@<�Ǉ��`�Z�����Y��QI�(rD�(rrD�\0D����lݜ9SY0�A�{U�9K��\"G�\"G G�@0����˵��c��\'=z��0gI��Q�1���9%���aiR҃,��ƌ�j�9+r��\"G��#�#r �:���ꋊV�����_�ޜͺ��H�(rD��99\"G\0�O�9��wΡ_(��ѣ�|��0�E�@���9��N���y����������X�d�L�(rrD�@����aPϞ��9��SO�r��M�^<��9v��1�OD�Q+�i�w{�݈Q����#\0�̥f�1k�Y\rf)���2ܿ�(?�Q+�E�@���9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0����9���6BX\0\0\0\0IEND�B`�',0),('ddaad50c66b946afbaa38ca5ab664174',1,'test_audit.bpmn20.xml','564df0e7452e4bf199222b59a6ff85a4','<?xml version=\'1.0\' encoding=\'UTF-8\'?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"test_audit\" name=\"流程审批测试流程\" isExecutable=\"true\">\r\n    <startEvent id=\"start\" name=\"启动审批\" activiti:initiator=\"apply\" activiti:formKey=\"/oa/testAudit/form\"/>\r\n    <endEvent id=\"end\" name=\"结束审批\"/>\r\n    <userTask id=\"modify\" name=\"员工薪酬档级修改\" activiti:assignee=\"${apply}\"/>\r\n    <userTask id=\"audit\" name=\"薪酬主管初审\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <userTask id=\"audit2\" name=\"集团人力资源部部长审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <userTask id=\"audit3\" name=\"集团人力资源部分管领导审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <userTask id=\"audit4\" name=\"集团总经理审批\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <userTask id=\"apply_end\" name=\"薪酬档级兑现\" activiti:assignee=\"thinkgem\"/>\r\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"/>\r\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"是\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"是\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"否\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"是\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"重新申请\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"是\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"否\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"否\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"否\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"/>\r\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"销毁\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test_audit\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"test_audit\" id=\"BPMNPlane_test_audit\">\r\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\r\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"245.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\r\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\r\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\r\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\r\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\r\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\r\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\r\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\r\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\r\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\r\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\r\n        <omgdi:waypoint x=\"201.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\r\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\r\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\r\n        <omgdi:waypoint x=\"60.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"105.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\r\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\r\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('next.dbid','1',1),('schema.history','create(5.15.1)',1),('schema.version','5.15.1',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('564df0e7452e4bf199222b59a6ff85a4','SpringAutoDeployment',NULL,'','2015-10-29 15:38:29');
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('test_audit:1:0980d7aa7636461dbaa549e3d5618395',1,'http://www.activiti.org/test','流程审批测试流程','test_audit',1,'564df0e7452e4bf199222b59a6ff85a4','test_audit.bpmn20.xml','test_audit.png',NULL,1,1,'');
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article`
--

DROP TABLE IF EXISTS `cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `attachment` varchar(500) DEFAULT NULL,
  `locale` varchar(5) DEFAULT 'zh',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
INSERT INTO `cms_article` VALUES ('1','605de15fc58b4502bb9e5151b19084a0','浓浓汉院情，和谐一家亲&mdash;&mdash;汉学院举办趣味运动会','','green','','关键字1,关键字2','',0,NULL,67,',null,','','','1','2013-05-27 08:00:00','1','2015-11-16 13:36:44',NULL,'0','/userfiles/1/files/cms/article/2015/11/Infinity_Connect_Web_App_Customization_Guide_v9_a.pdf','zh_CN'),('10','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('11','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('12','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('13','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('14','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,6,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('15','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('16','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('17','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('18','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('19','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('19f8494328064e2aa8d8515779e3396d','5430fe2ede6f4b6191d79ce9a6e6e471','广告测试2','','','/userfiles/1/images/cms/category/2015/11/nivo_slider1.jpg','','测试内容',0,NULL,6,',null,','','','1','2015-11-16 09:51:05','1','2015-11-19 17:03:21',NULL,'0','','zh_CN'),('1da058e70eae476091ead82e5c498f57','5430fe2ede6f4b6191d79ce9a6e6e471','广告测试','','','/userfiles/1/images/cms/category/2015/11/nivo_slider4.jpg','','广告图片下方文字描述信息测试1',0,NULL,5,',null,','','','1','2015-11-16 09:50:14','1','2015-11-16 10:29:55',NULL,'0','','zh_CN'),('2','605de15fc58b4502bb9e5151b19084a0','月盈中秋 情系汉院&mdash;&mdash;汉学院举办2015年中秋晚会','','red','','关键字1,关键字2','',0,NULL,23,',null,','','','1','2013-05-27 08:00:00','1','2015-11-16 13:36:27',NULL,'0','','zh_CN'),('20','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('21','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('22','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('23','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('24','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('25','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('26','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('27','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('28','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('29','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('3','3','文章标题标题标题标题1','','','','关键字1,关键字2','',0,NULL,13,',null,','','','1','2013-05-27 08:00:00','1','2015-11-26 00:23:33',NULL,'1','','zh_CN'),('30','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('31','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('32','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('33','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('34','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('35','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('36','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('37','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('38','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('39','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('4','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,3,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('40','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('41','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('42','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('43','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('44','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('45','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('45cc0f4aafe742a8aad989d17b09bcf7','0bd1f5695e3143808cf026668432e20e','资料下载一','','','','','',0,NULL,1,',null,','','','1','2015-11-19 16:18:31','1','2015-11-19 16:18:31',NULL,'0','/userfiles/1/files/cms/article/2015/11/Infinity_Connect_Web_App_Customization_Guide_v9_a.pdf','zh_CN'),('46','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('47','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('48','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('49','16','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('5','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,2,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('50','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('51','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('52','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('53','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('554fc31c2fdf4874a7ac51171fedeed5','2f6493999a0d40c1a7c5f4866dc0c36f','2015-2016年获得政府奖学金人员名单','','','','','',0,NULL,1,',null,','','','1','2015-11-16 11:42:19','1','2015-11-16 11:42:19',NULL,'0','','zh_CN'),('6','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('7','4','下载测试','','','','关键字1,关键字2','',0,NULL,15,',null,','','','1','2013-05-27 08:00:00','1','2015-11-15 20:45:31',NULL,'0','/userfiles/1/files/cms/article/2015/11/Infinity_Connect_Web_App_Customization_Guide_v9_a.pdf|/userfiles/1/files/cms/article/2015/11/Pexip_Infinity_Management_API_v8_a.pdf','zh_CN'),('8','4','文章标题标题标题标题',NULL,'blue',NULL,'关键字1,关键字2',NULL,0,NULL,3,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('843cb0dcc373489599da7a0f69c4077b','00ba6d29cbb04d5f9e396c767ffad1b7','古筝表演','','','/userfiles/1/images/cms/article/2015/11/3fa074e686cba28e644b39a40468684b.jpg','','',0,NULL,0,',null,','','','1','2015-11-16 14:52:19','1','2015-11-16 14:52:19',NULL,'0','','zh_CN'),('9','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL,'zh_CN'),('999502f29e5d47509c2313e01ae894c7','da59d28e52f04f1c94f99800c63d360c','异域风情展','','','/userfiles/1/images/cms/article/2015/11/3a46aaedf54c1625b1e2008ccec86284.jpg','','',0,NULL,0,',null,','','','1','2015-11-16 14:51:50','1','2015-11-16 14:51:50',NULL,'0','','zh_CN'),('999f5c972b7a481f829b109a1a1abf5d','6efb300d4e104d02ac5465b1edf66a81','茶文化体验','','','/userfiles/1/images/cms/article/2015/11/59de9c08554f0ad138141bf7c87acb3a.jpg','','',0,NULL,1,',null,','','','1','2015-11-16 14:53:48','1','2015-11-16 14:53:48',NULL,'0','','zh_CN'),('d1635f7a90aa4f378970194dac3a24dd','d8479d39b68b43c098719741e7ea17f2','测试','','','','','',0,NULL,1,',null,','','','1','2015-12-01 11:07:14','1','2015-12-01 11:07:14',NULL,'0','','zh_CN'),('daca1bcd987d4acb8d299a79f46e74d8','b5c2a87abda84100b01f6f52e5412ade','笔架山语言实践','','','/userfiles/1/images/cms/article/2015/11/471b2ddb8ebedc4dee0eacd9038f784b.jpg','','',0,NULL,0,',null,','','','1','2015-11-16 14:53:25','1','2015-11-16 14:53:25',NULL,'0','','zh_CN');
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_data`
--

DROP TABLE IF EXISTS `cms_article_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_data`
--

LOCK TABLES `cms_article_data` WRITE;
/*!40000 ALTER TABLE `cms_article_data` DISABLE KEYS */;
INSERT INTO `cms_article_data` VALUES ('1','<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; text-align: justify; white-space: normal; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\">趣味运动，快乐生活。大连外国语大学汉学院于10月14日下午两点在学校体育场举办了趣味运动会。汉学院全体国际学生、班主任老师参加了此次运动会。此次趣味运动会将竞技与娱乐相结合，共设置了托球跑、夹球跳、跳长绳、两人三足、胯下传球和&ldquo;我是神投手&rdquo;等六个比赛项目。国际学生们以班级为单位参加了此次比赛。赛场上欢笑声、加油声和掌声此起彼伏。同学们踊跃报名，积极参与，在运动会中默契配合，使得比赛现场气氛热烈、妙趣横生。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\"><img alt=\"pic001.JPG\" height=\"290\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-10-21/c377998c356941ed18d57e0c3fe47b34.jpg\" width=\"435\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\"><img alt=\"pic004.JPG\" height=\"290\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-10-21/3feea15d4069277742a9d961bbd4a594.jpg\" width=\"435\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\"><img alt=\"pic005.JPG\" height=\"290\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-10-21/ba3e2a16555091ae57b1c24cd11f53c4.jpg\" width=\"435\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\"><img alt=\"pic006.JPG\" height=\"290\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-10-21/0108d204e2b6a36660e4a6b221913f17.jpg\" width=\"435\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\"><img alt=\"pic002.JPG\" height=\"277\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-10-21/119519be0184bd17eecc4fc522e02631.jpg\" width=\"440\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\"><img alt=\"pic003.JPG\" height=\"290\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-10-21/20ca44f80eda6d1435e58d455cb79a2b.jpg\" width=\"435\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; text-align: justify; white-space: normal; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\">此次运动会既充满趣味性，又充满挑战性，摆脱了传统的体育运动形式，很好地展现了我院国际学生良好的精神风貌和昂扬的青春活力。另一方面，趣味运动会让同学们得到了锻炼，同时又促进了情感交流，丰富了学生们的课余文化生活，增强了团队合作精神和集体荣誉感。汉学院分团委学生会成员协助留学生管理办公室组织了比赛。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; text-align: justify; white-space: normal; line-height: 21px; text-indent: 24pt;\">\r\n	<span style=\"line-height: 24px; font-size: 12pt;\">浓浓汉院情，和谐一家亲！</span></div>','来源','1,2,3,','1'),('10','文章内容内容内容内容','来源','1,2,3','1'),('11','文章内容内容内容内容','来源','1,2,3','1'),('12','文章内容内容内容内容','来源','1,2,3','1'),('13','文章内容内容内容内容','来源','1,2,3','1'),('14','文章内容内容内容内容','来源','1,2,3','1'),('15','文章内容内容内容内容','来源','1,2,3','1'),('16','文章内容内容内容内容','来源','1,2,3','1'),('17','文章内容内容内容内容','来源','1,2,3','1'),('18','文章内容内容内容内容','来源','1,2,3','1'),('19','文章内容内容内容内容','来源','1,2,3','1'),('19f8494328064e2aa8d8515779e3396d','<p align=\"center\" style=\"margin: 20px 0px 0px; padding: 0px; border: 0px;\">\r\n	&nbsp;</p>\r\n<p align=\"center\" class=\"pictext\" style=\"margin: 20px 0px 0px; padding: 0px; border: 0px;\">\r\n	&nbsp;</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px;\">\r\n	　　新华社巴黎11月15日电(记者郑斌 尚栩)法国国防部15日晚发表公报说，法国战机当天对极端组织&ldquo;伊斯兰国&rdquo;在叙利亚的目标实施空袭，摧毁该组织一个指挥所和一个训练营。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px;\">\r\n	　　公报说，法国战机向位于叙利亚拉卡市的&ldquo;伊斯兰国&rdquo;目标投掷了20枚炸弹。第一个空袭目标被&ldquo;伊斯兰国&rdquo;用作指挥所，并招募人员及存放武器弹药;第二个空袭目标是恐怖分子训练营。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px;\">\r\n	　　公报说，法军此次空袭共动用12架飞机，其中包括10架歼击轰炸机。这些飞机是从阿联酋和约旦起飞的，此次行动与美军进行了协调。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px;\">\r\n	　　法国巴黎13日晚间遭遇系列恐怖袭击，&ldquo;伊斯兰国&rdquo;声称实施袭击。</p>\r\n<div>\r\n	&nbsp;</div>\r\n<br />','','','0'),('1da058e70eae476091ead82e5c498f57','<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	<strong>习近平出席二十国集团领导人第十次峰会并发表重要讲话</strong></p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　<strong>提倡创新增长路径　共享发展成果</strong></p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　新华网土耳其安塔利亚11月15日电（记者曾虎　陈贽　侯丽军）15日，二十国集团领导人第十次峰会在土耳其安塔利亚举行。国家主席习近平出席并发表题为《创新增长路径　共享发展成果》的重要讲话，强调二十国集团要加强宏观经济政策沟通和协调，推动改革创新，构建开放型世界经济，落实2030年可持续发展议程。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　峰会开始前，习近平同其他与会领导人依次抵达，受到土耳其总统埃尔多安的迎接。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　当地时间下午4时30分，会议开始。埃尔多安主持。与会领导人首先起立，为巴黎系列恐怖袭击事件的遇难者默哀。本次峰会主题是&ldquo;共同行动以实现包容和稳健增长&rdquo;。与会领导人围绕世界经济形势、全面增长战略、就业和投资等议题发表看法。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　习近平在讲话中指出，二十国集团的任务是促进世界经济增长。二十国集团既要治标以求眼下稳增长，又要治本以谋长远添动力；既要落实好以往成果，又要凝聚新的共识；既要采取国内措施、做好自己的事，又要精诚合作、共同应对挑战。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　习近平提出以下几点建议。第一，加强宏观经济政策沟通和协调，形成政策和行动合力。第二，推动改革创新，增强世界经济中长期增长潜力。第三，构建开放型世界经济，激发国际贸易和投资活力。第四，落实2030年可持续发展议程，为公平包容发展注入强劲动力。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　习近平强调，中国有信心、有能力保持经济中高速增长。中国在世界经济最困难的时刻，承担了拉动增长的重任。今年中国经济预计实现7％左右增长，仍将占世界经济增量的约三分之一，仍是世界经济重要动力源。未来5年，中国将按照创新、协调、绿色、开放、共享的发展理念，着力实施创新驱动发展战略，坚持新型工业化、信息化、城镇化、农业现代化同步发展；坚持绿色低碳发展，改善环境质量；坚持深度融入全球经济，落实&ldquo;一带一路&rdquo;倡议；坚持全面保障和改善民生，使发展成果更多更公平惠及全体人民。（讲话全文另发）</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　习近平指出，国际货币基金组织特别提款权审查报告指出人民币满足&ldquo;可自由使用&rdquo;标准，建议纳入特别提款权货币篮子。中方对此表示欢迎，认为这将有利于提高特别提款权的代表性和吸引力，也将有利于完善国际货币体系，维护全球金融稳定。中方期待本月底国际货币基金组织执董会讨论取得积极结果。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　与会各领导人表示，各方要加强宏观政策协调，应对全球经济增长动力不足问题。要解决不平衡问题，完善社保体系，增强中低收入人群购买力。要加强国际金融监管，加快国际金融机构改革。鼓励发展中国家融入全球经济治理，发掘非洲国家潜力，加强在基础设施建设领域的合作。各成员要在《联合国气候变化框架公约》下开展磋商，制定合理、平衡、可持续的方案，共同应对气候变化问题。国际社会要团结合作，共同打击恐怖主义。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　会议还讨论了发展、气候变化、反恐、欧洲难民危机等问题。</p>\r\n<p style=\"margin: 20px 0px 0px; padding: 0px; border: 0px; line-height: 32px; font-size: 16px; color: rgb(36, 36, 36); font-family: \'Microsoft YaHei\'; white-space: normal;\">\r\n	　　汪洋等参加有关活动。</p>','','','0'),('2','<p style=\"text-align: justify; line-height: 23px; text-indent: 2em; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal;\">\r\n	<span style=\"font-size: 12pt;\">秋风送爽，硕果飘香，月盈中秋，情系汉院。</span></p>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\">由大连外国语大学汉学院和音乐系联合举办的2015年中秋晚会于9月27日下午在我校皮尔蒙特文化交流中心咖啡吧拉开帷幕。</span><span style=\"font-size: 12pt;\">汉学院任德成书记和辅导员宋文老师出席了本次晚会</span><span style=\"font-size: 12pt;\">。汉学院留学生、汉语国际教育2013、2014、2015级本科生及部分音乐系的同学参加了此次晚会。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\">相聚月明时，中秋共分享。晚会在汉学院2015级新生带来的歌舞节目《今天我家有个约会》中开场，那悦耳的歌声与曼妙的舞姿，将全场观众带入到晚会的气氛中来。留学生们带来的节目富有创意且极具动感，俄罗斯留学生米沙的街舞表演帅气张扬、日本留学生的《折纸》节目创意十足，晚会现场的气氛被一次次带入高潮。音乐系同学们带来的节目各个精彩纷呈，二胡、笛子、古筝等古典乐器的演奏，让我们领略了中华古典音乐的美与意蕴。戏曲《贵妃醉酒》则带给我们一场听觉上的极致享受。&ldquo;但愿人长久，千里共婵娟。&rdquo;在悠扬的歌声中本次晚会落下帷幕，所有的祝福与对未来的期盼都在歌声中被一一唱出。</span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\"><img alt=\"pic001.jpg\" height=\"337\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-09-30/965227085639ea70ce9250836970e499.jpg\" width=\"600\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\"><img alt=\"pic002.JPG\" height=\"400\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-09-30/36871f89460d33688c6cf60f9a77b0e6.jpg\" width=\"600\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\"><img alt=\"pic003.JPG\" height=\"400\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-09-30/37465afd9eae107a89abe833916237fc.jpg\" width=\"600\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\"><img alt=\"pic005.JPG\" height=\"400\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-09-30/9a50cb561c90b43059f7881f8b23688a.jpg\" width=\"600\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\"><img alt=\"pic007.JPG\" height=\"450\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-09-30/9eb553f90dba4731c5aec9c8be32295b.jpg\" width=\"600\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	&nbsp;</div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; text-align: center; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\"><img alt=\"pic006.JPG\" height=\"449\" src=\"http://file.dlufl.edu.cn/scs.dlufl.edu.cn/CHS/xydt/2015-09-30/dcbce980dc7e487675ac19135c73104f.jpg\" width=\"600\" /></span></div>\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: STHeiti; white-space: normal; line-height: 21px; text-indent: 24pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">\r\n	<span style=\"font-size: 12pt;\">月色如水，流淌着我们不尽的情谊；月光如织，联系着我们彼此的挂牵；月华如歌，鸣奏出我们心中的欢乐！让我们邀请明月来共同见证汉学院和音乐系之间的友谊，见证中外学生的共同成长！</span></div>','来源','1,2,3,','1'),('20','文章内容内容内容内容','来源','1,2,3','1'),('21','文章内容内容内容内容','来源','1,2,3','1'),('22','文章内容内容内容内容','来源','1,2,3','1'),('23','文章内容内容内容内容','来源','1,2,3','1'),('24','文章内容内容内容内容','来源','1,2,3','1'),('25','文章内容内容内容内容','来源','1,2,3','1'),('26','文章内容内容内容内容','来源','1,2,3','1'),('27','文章内容内容内容内容','来源','1,2,3','1'),('28','文章内容内容内容内容','来源','1,2,3','1'),('29','文章内容内容内容内容','来源','1,2,3','1'),('3','文章内容内容内容内容','来源','1,2,3,','1'),('30','文章内容内容内容内容','来源','1,2,3','1'),('31','文章内容内容内容内容','来源','1,2,3','1'),('32','文章内容内容内容内容','来源','1,2,3','1'),('33','文章内容内容内容内容','来源','1,2,3','1'),('34','文章内容内容内容内容','来源','1,2,3','1'),('35','文章内容内容内容内容','来源','1,2,3','1'),('36','文章内容内容内容内容','来源','1,2,3','1'),('37','文章内容内容内容内容','来源','1,2,3','1'),('38','文章内容内容内容内容','来源','1,2,3','1'),('39','文章内容内容内容内容','来源','1,2,3','1'),('4','文章内容内容内容内容','来源','1,2,3','1'),('40','文章内容内容内容内容','来源','1,2,3','1'),('41','文章内容内容内容内容','来源','1,2,3','1'),('42','文章内容内容内容内容','来源','1,2,3','1'),('43','文章内容内容内容内容','来源','1,2,3','1'),('44','文章内容内容内容内容','来源','1,2,3','1'),('45','文章内容内容内容内容','来源','1,2,3','1'),('45cc0f4aafe742a8aad989d17b09bcf7','无','','','1'),('46','文章内容内容内容内容','来源','1,2,3','1'),('47','文章内容内容内容内容','来源','1,2,3','1'),('48','文章内容内容内容内容','来源','1,2,3','1'),('49','文章内容内容内容内容','来源','1,2,3','1'),('5','文章内容内容内容内容','来源','1,2,3','1'),('50','文章内容内容内容内容','来源','1,2,3','1'),('51','文章内容内容内容内容','来源','1,2,3','1'),('52','文章内容内容内容内容','来源','1,2,3','1'),('53','文章内容内容内容内容','来源','1,2,3','1'),('554fc31c2fdf4874a7ac51171fedeed5','奋斗奋斗奋斗','','','1'),('6','文章内容内容内容内容','来源','1,2,3','1'),('7','文章内容内容内容内容','来源','1,2,3,','1'),('8','文章内容内容内容内容','来源','1,2,3','1'),('843cb0dcc373489599da7a0f69c4077b','xxxxxxxx','','','1'),('9','文章内容内容内容内容','来源','1,2,3','1'),('999502f29e5d47509c2313e01ae894c7','ddffddf','','','1'),('999f5c972b7a481f829b109a1a1abf5d','dsfasdfdf','','','1'),('d1635f7a90aa4f378970194dac3a24dd','<p>\r\n	地方</p>','','','0'),('daca1bcd987d4acb8d299a79f46e74d8','sdfsdfdf','','','1');
/*!40000 ALTER TABLE `cms_article_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_category`
--

DROP TABLE IF EXISTS `cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `locale` varchar(5) DEFAULT 'zh',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_category`
--

LOCK TABLES `cms_category` WRITE;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
INSERT INTO `cms_category` VALUES ('00ba6d29cbb04d5f9e396c767ffad1b7','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','article','学生社团','','','','','',30,'1','1','0','0','0','','','','1','2015-11-16 14:45:18','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('012010c319b54b61878a951939e1a9ca','1','01,','1','1','article','第二课堂','','','','','',150,'0','0','0','0','0','','','','1','2015-11-16 14:44:39','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('015ecb3db03447919d5a8e9e9a344790','ce351667d5e7410c9247ae1e6e2a18c3','01,ce351667d5e7410c9247ae1e6e2a18c3,','1','3','article','研究生申请','','','','','',40,'1','1','0','0','0','','','','1','2015-11-06 10:42:25','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('095976ad1f9a4ad29646b43ec8caefb7','501a3a2c83c642f0b78109d68a63b304','01,501a3a2c83c642f0b78109d68a63b304,','1','3','','优秀毕业生','','','','','',20,'1','1','0','0','0','','','','1','2015-12-01 10:28:57','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('0bd1f5695e3143808cf026668432e20e','1','01,','1','1','article','资料下载','','','','','',30,'0','0','0','0','0','','','','1','2015-11-19 16:17:29','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('1','0','0','1','1','','顶级栏目','','','','','',30,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-11-13 10:07:53',NULL,'0','zh_CN'),('10','1','01,','1','4','article','国内教育','','','','','',20,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('11','10','01,10,','1','4','article','本科教育','','','','','',30,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('12','10','01,10,','1','4','article','研究生教育','','','','','',40,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('13','10','01,10,','1','4','article','下载','','','','','',50,'0','0','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('14','10','0,1,10,','1','4','article','网络优化',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-06 10:24:30',NULL,'1','zh_CN'),('15','10','0,1,10,','1','4','article','邮件处理',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-06 10:24:40',NULL,'1','zh_CN'),('16','10','0,1,10,','1','4','article','下载工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-06 10:24:40',NULL,'1','zh_CN'),('17','10','0,1,10,','1','4','article','搜索工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-06 10:24:40',NULL,'1','zh_CN'),('18','1','01,','1','5','link','友情链接','','','','','',90,'0','0','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('19','18','01,18,','1','5','link','常用网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-16 10:52:18',NULL,'1','zh_CN'),('198be968e22b48fe94b97eedbab58639','b2fcb1b6a7234eae9144bd24c61dcdc1','01,b2fcb1b6a7234eae9144bd24c61dcdc1,','1','3','article','中国学生作品','','','','','',20,'1','1','0','0','0','','','','1','2015-11-06 10:46:46','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('1d6498797bb4410b8e8301bf887f9a70','6','01,6,','1','3','article','研究生教育','','','','','',60,'1','1','0','0','0','','','','1','2015-11-06 10:31:30','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('2','1','01,','1','3','article','关于我们','','','','','',10,'1','1','0','0','1','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('20','18','01,18,','1','5','link','门户网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-16 10:52:18',NULL,'1','zh_CN'),('21','18','01,18,','1','5','link','购物网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-16 10:52:19',NULL,'1','zh_CN'),('22','18','01,18,','1','5','link','交友社区',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-16 10:52:19',NULL,'1','zh_CN'),('23','18','01,18,','1','5','link','音乐视频',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-11-16 10:52:19',NULL,'1','zh_CN'),('24','1','01,','1','6','','百度一下','','http://www.baidu.com','_blank','','',90,'0','0','0','1','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('25','1','01,','1','6','','全文检索',NULL,'/search',NULL,NULL,NULL,90,'0','0','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('26','1','0,1,','2','6','article','测试栏目',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0','zh_CN'),('27','1','01,','1','6','','公共留言','','/guestbook','','','',90,'0','0','0','1','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('2c5e0c0879794786852f11159ed4df21','6','01,6,','1','3','article','下载','','','','','',70,'0','0','0','0','0','','','','1','2015-11-06 10:32:16','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('2da4fe18da604d95adc74ec638a642ae','501a3a2c83c642f0b78109d68a63b304','01,501a3a2c83c642f0b78109d68a63b304,','1','3','link','毕业生结业照集','','','','','',30,'1','1','0','0','0','','','','1','2015-11-06 10:45:13','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('2de1432b0a5a4f6e9b64ff4529e04a3c','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','','对外汉语志愿者','','','','','',60,'1','1','0','0','0','','','','1','2015-12-01 10:42:16','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('2f6493999a0d40c1a7c5f4866dc0c36f','ccb1f0466b5645f4911cd6da9b809b62','01,ccb1f0466b5645f4911cd6da9b809b62,','1','1','article','中国政府奖学金','','','','','',30,'1','1','0','0','0','','','','1','2015-11-16 10:52:32','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('2f7362c39b44404ab9a9ba71508becaa','1','01,','1','3','article','考试信息','','','','','',50,'1','1','0','0','0','','','','1','2015-11-06 10:43:20','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('3','2','01,2,','1','3','article','走进大连','/userfiles/1/_thumbs/images/cms/category/2015/10/meetime-logo.png','','','','',30,'1','1','0','0','1','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('30d24a619f6248abb0a7fcde1028dbe7','2f7362c39b44404ab9a9ba71508becaa','01,2f7362c39b44404ab9a9ba71508becaa,','1','3','article','学院考试','','','','','',30,'1','1','0','0','0','','','','1','2015-11-11 09:31:49','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('39e2f044e56e4b628b08a3bf399538d4','1','01,','1','3','','登录／注册','','','','','',100,'0','0','0','0','0','','','','1','2015-11-06 10:47:45','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('3ebe6a61acc442d1a14973c0b7cf5407','504027b6bc854f798d2083f847e0b780','01,504027b6bc854f798d2083f847e0b780,','1','1','article','留学生管理条例','','','','','',40,'1','1','0','0','0','','','','1','2015-11-16 14:36:53','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('4','2','01,2,','1','3','article','校情概览','','','','','',40,'1','1','0','0','1','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('48d3464824c04fd3b397317d45d9fd4e','2','01,2,','1','3','article','机构设置','','','','','',60,'1','1','0','0','0','','','','1','2015-11-06 10:21:14','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('5','2','01,2,','1','3','article','学院领导','','','','','',50,'1','1','0','0','1','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('501a3a2c83c642f0b78109d68a63b304','1','01,','1','3','article','校友动态','','','','','',60,'1','1','0','0','0','','','','1','2015-11-06 10:44:22','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('504027b6bc854f798d2083f847e0b780','1','01,','1','1','article','留学生管理','','','','','',140,'0','0','0','0','0','','','','1','2015-11-16 14:35:01','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('5430fe2ede6f4b6191d79ce9a6e6e471','1','01,','1','1','article','首页广告','','','','','',30,'0','0','0','0','0','','','','1','2015-11-16 09:48:01','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('5a56931e2fe34639bba709f800a066e4','501a3a2c83c642f0b78109d68a63b304','01,501a3a2c83c642f0b78109d68a63b304,','1','3','link','校友分布','','','','','',10,'1','1','0','0','0','','','','1','2015-12-01 10:27:16','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('6','1','01,','1','3','article','国际教育','','','','','',30,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('605de15fc58b4502bb9e5151b19084a0','1','01,','1','1','article','学院动态','','','','','',120,'0','0','0','0','0','','','','1','2015-11-16 13:34:53','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('633baafb527448eeb27e12252205be23','1','01,','1','1','article','英文顶级栏目','','','','','',30,'1','0','0','0','0','','','','1','2015-11-13 13:30:42','1','2015-11-13 13:51:31',NULL,'1','en_US'),('67fe7ec3e37d435aafe750b399a96374','86a205ff69094fb1b089898d71243208','01,86a205ff69094fb1b089898d71243208,','1','1','article','a','','','','','',30,'1','1','0','0','0','','','','1','2015-11-13 16:09:58','1','2015-12-01 10:30:14',NULL,'0','en_US'),('68a2085909e446cc894d9f23297ef665','1','01,','1','1','article','通知公告','','','','','',130,'0','0','0','0','0','','','','1','2015-11-16 13:35:34','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('6e98600143884404b35b654c44b01adc','b2fcb1b6a7234eae9144bd24c61dcdc1','01,b2fcb1b6a7234eae9144bd24c61dcdc1,','1','3','article','留学生作品','','','','','',10,'1','1','0','0','0','','','','1','2015-11-06 10:46:27','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('6efb300d4e104d02ac5465b1edf66a81','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','article','实习就业','','','','','',40,'1','1','0','0','0','','','','1','2015-11-16 14:46:01','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('7','6','01,6,','1','3','article','短期进修','','','','','',30,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('7337386369a54156a73280ccd734ee14','aebbed30476040c38bf017eb5b4c7017','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,','1','1','','组织机构','','','','','',10,'1','1','0','0','0','','','','1','2015-12-01 10:44:17','1','2015-12-01 10:44:17',NULL,'0','zh_CN'),('749c4ad44e3741ebba4ae6906189a44f','ce351667d5e7410c9247ae1e6e2a18c3','01,ce351667d5e7410c9247ae1e6e2a18c3,','1','3','article','本科申请','','','','','',30,'1','1','0','0','0','','','','1','2015-11-06 10:42:04','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('76a04be0947a45d8bd14ca9685139444','e6c0949faa5b49f79169585b7870ea6e','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,e6c0949faa5b49f79169585b7870ea6e,','1','1','','活动报道','','','','','',20,'1','1','0','0','0','','','','1','2015-12-01 10:46:46','1','2015-12-01 10:47:54',NULL,'0','zh_CN'),('8','6','01,6,','1','3','article','长期进修','','','','','',40,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('818d54595dee44f0af8ee58582cd349e','8b0f959bf25e42b8af02a251f00ee55e','01,8b0f959bf25e42b8af02a251f00ee55e,','1','1','article','校园地图','','','','','',60,'1','1','0','0','0','','','','1','2015-11-16 15:17:18','1','2015-12-01 10:43:24',NULL,'0','zh_CN'),('857d4eb6cd0345f28426804ebed4e997','aebbed30476040c38bf017eb5b4c7017','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,','1','1','','学生会细则','','','','','',20,'1','1','0','0','0','','','','1','2015-12-01 10:44:47','1','2015-12-01 10:44:47',NULL,'0','zh_CN'),('86a205ff69094fb1b089898d71243208','1','01,','1','1','article','ffdfdfdf','','','','','',30,'1','1','0','0','0','','','','1','2015-11-13 11:57:30','1','2015-12-01 10:30:14',NULL,'1','en_US'),('87cb9556fa9e4be4a7262f824454e552','8b0f959bf25e42b8af02a251f00ee55e','01,8b0f959bf25e42b8af02a251f00ee55e,','1','1','article','留学生医疗保障','','','','','',50,'1','1','0','0','0','','','','1','2015-11-16 15:16:57','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('8b0f959bf25e42b8af02a251f00ee55e','1','01,','1','1','article','校园生活','','','','','',160,'0','0','0','0','0','','','','1','2015-11-16 15:16:13','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('8c971766d72744e2a001ce432df5259b','504027b6bc854f798d2083f847e0b780','01,504027b6bc854f798d2083f847e0b780,','1','1','article','留学生住宿管理','','','','','',30,'1','1','0','1','0','','','','1','2015-11-16 14:36:03','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('8dc724465f964ec39d270041757ef534','e6c0949faa5b49f79169585b7870ea6e','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,e6c0949faa5b49f79169585b7870ea6e,','1','1','','活动报名','','','','','',30,'1','1','0','0','0','','','','1','2015-12-01 10:47:13','1','2015-12-01 10:47:13',NULL,'0','zh_CN'),('9','6','01,6,','1','3','article','本科教育','','','','','',50,'1','1','0','0','0','','','','1','2013-05-27 08:00:00','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('9f2769b6fb6f468eb51cb3f52ef0c73a','aebbed30476040c38bf017eb5b4c7017','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,','1','1','','学生管理','','','','','',30,'1','1','0','0','0','','','','1','2015-12-01 10:45:11','1','2015-12-01 10:45:11',NULL,'0','zh_CN'),('a3d8e848662041519818529dbb00401b','501a3a2c83c642f0b78109d68a63b304','01,501a3a2c83c642f0b78109d68a63b304,','1','3','article','校友留言','','','','','',50,'1','1','0','0','0','','','','1','2015-11-06 10:44:59','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('a493ce216baf4e47b0cc2a5e2632fcb9','8b0f959bf25e42b8af02a251f00ee55e','01,8b0f959bf25e42b8af02a251f00ee55e,','1','1','article','院历','','','','','',30,'1','1','0','0','0','','','','1','2015-11-16 15:16:25','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('a4f75f98e8b2406d88cb1ac18776d057','ce351667d5e7410c9247ae1e6e2a18c3','01,ce351667d5e7410c9247ae1e6e2a18c3,','1','3','article','长期进修申请','','','','','',20,'1','1','0','0','0','','','','1','2015-11-06 10:41:51','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('a59dc4a57f454e0ba335498e3a535477','504027b6bc854f798d2083f847e0b780','01,504027b6bc854f798d2083f847e0b780,','1','1','article','外管法规','','','','','',10,'1','1','0','0','0','','','','1','2015-11-16 14:35:24','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('a7df4b1b494d4b38a4e2160875f0f1dd','2','01,2,','1','3','article','师资力量','','','','','',70,'1','1','0','0','0','','','','1','2015-11-06 10:24:13','1','2015-12-01 10:43:22',NULL,'0','zh_CN'),('ae1c0fb48de04acc8a63143f16db7beb','2f7362c39b44404ab9a9ba71508becaa','01,2f7362c39b44404ab9a9ba71508becaa,','1','3','article','HSK考试','','','','','',10,'1','1','0','0','0','','','','1','2015-11-06 10:43:47','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('aebbed30476040c38bf017eb5b4c7017','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','','分团委','','','','','',10,'1','1','0','0','0','','','','1','2015-12-01 10:38:03','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('b2fcb1b6a7234eae9144bd24c61dcdc1','1','01,','1','3','article','《汉苑》期刊','','','','','',70,'1','1','0','0','0','','','','1','2015-11-06 10:45:38','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('b5c2a87abda84100b01f6f52e5412ade','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','article','社会实践','','','','','',50,'1','1','0','0','0','','','','1','2015-11-16 14:45:33','1','2015-12-01 10:30:14',NULL,'1','zh_CN'),('b7cb45513c8c4f249aa60b9699b0e0cd','ce351667d5e7410c9247ae1e6e2a18c3','01,ce351667d5e7410c9247ae1e6e2a18c3,','1','3','article','下载','','','','','',50,'0','0','0','0','0','','','','1','2015-11-06 10:42:47','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('c593024cf9264654ad9309dfe9212ffa','8b0f959bf25e42b8af02a251f00ee55e','01,8b0f959bf25e42b8af02a251f00ee55e,','1','1','article','餐饮介绍','','','','','',70,'1','1','0','0','0','','','','1','2015-11-16 15:17:44','1','2015-12-01 10:43:24',NULL,'0','zh_CN'),('c6bf3f6a996947ba9d0dcae0af740044','1','01,','1','3','article','联系我们','','','','','',80,'1','1','0','0','0','','','','1','2015-11-06 10:47:12','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('ccb1f0466b5645f4911cd6da9b809b62','1','01,','1','1','article','奖学金','','','','','',110,'0','0','0','0','0','','','','1','2015-11-16 10:51:08','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('ce351667d5e7410c9247ae1e6e2a18c3','1','01,','1','3','article','国际招生','','','','','',40,'1','1','0','0','0','','','','1','2015-11-06 10:40:29','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('d21cbf96fb2a40f8acd48b9bcfeee654','ccb1f0466b5645f4911cd6da9b809b62','01,ccb1f0466b5645f4911cd6da9b809b62,','1','1','article','孔子学院奖学金','/userfiles/1/_thumbs/images/cms/category/2015/11/recent-post-img.jpg','','','','',30,'1','1','0','0','0','','','','1','2015-11-16 10:52:44','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('d6833a2bda484fc2bd136bf8273b1dcd','2f7362c39b44404ab9a9ba71508becaa','01,2f7362c39b44404ab9a9ba71508becaa,','1','3','article','国际汉语教师考试','','','','','',20,'1','1','0','0','0','','','','1','2015-11-06 10:44:03','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('d8479d39b68b43c098719741e7ea17f2','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','article','学术天地','','','','','',50,'1','1','0','0','0','','','','1','2015-12-01 10:40:58','1','2015-12-01 11:04:52',NULL,'0','zh_CN'),('da59d28e52f04f1c94f99800c63d360c','012010c319b54b61878a951939e1a9ca','01,012010c319b54b61878a951939e1a9ca,','1','1','article','学生活动','','','','','',20,'1','1','0','0','0','','','','1','2015-11-16 14:45:05','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('dd073c93234c4e7da34426dae88f91d6','e6c0949faa5b49f79169585b7870ea6e','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,e6c0949faa5b49f79169585b7870ea6e,','1','1','','活动公告','','','','','',10,'1','1','0','0','0','','','','1','2015-12-01 10:46:20','1','2015-12-01 10:46:20',NULL,'0','zh_CN'),('de3ba6a0ce0540dfaf6097f7a8ebdabd','ce351667d5e7410c9247ae1e6e2a18c3','01,ce351667d5e7410c9247ae1e6e2a18c3,','1','3','article','短期进修申请','','','','','',10,'1','1','0','0','0','','','','1','2015-11-06 10:41:08','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('e1f4e633f1024e4da65f89fbdbd641de','8b0f959bf25e42b8af02a251f00ee55e','01,8b0f959bf25e42b8af02a251f00ee55e,','1','1','article','留学生住宿','','','','','',40,'1','1','0','0','0','','','','1','2015-11-16 15:16:40','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('e4d0a319399042b0a69dc3aaffda47fe','501a3a2c83c642f0b78109d68a63b304','01,501a3a2c83c642f0b78109d68a63b304,','1','3','article','校友注册','','/schoolmate','','','',40,'1','1','0','0','0','','','','1','2015-11-06 10:44:39','1','2015-12-01 10:43:23',NULL,'0','zh_CN'),('e6c0949faa5b49f79169585b7870ea6e','aebbed30476040c38bf017eb5b4c7017','01,012010c319b54b61878a951939e1a9ca,aebbed30476040c38bf017eb5b4c7017,','1','1','','学生会活动','','','','','',40,'1','1','0','0','0','','','','1','2015-12-01 10:45:40','1','2015-12-01 10:45:40',NULL,'0','zh_CN'),('fb99f6ff251944238a0938d0158c0fce','504027b6bc854f798d2083f847e0b780','01,504027b6bc854f798d2083f847e0b780,','1','1','article','签证管理','','','','','',20,'1','1','0','0','0','','','','1','2015-11-16 14:35:38','1','2015-12-01 10:43:23',NULL,'0','zh_CN');
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comment`
--

DROP TABLE IF EXISTS `cms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comment`
--

LOCK TABLES `cms_comment` WRITE;
/*!40000 ALTER TABLE `cms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_guestbook`
--

DROP TABLE IF EXISTS `cms_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_guestbook`
--

LOCK TABLES `cms_guestbook` WRITE;
/*!40000 ALTER TABLE `cms_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_link`
--

DROP TABLE IF EXISTS `cms_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `locale` varchar(5) DEFAULT 'zh',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_link`
--

LOCK TABLES `cms_link` WRITE;
/*!40000 ALTER TABLE `cms_link` DISABLE KEYS */;
INSERT INTO `cms_link` VALUES ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('10','22','58同城',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('11','23','视频大全',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('12','23','凤凰网',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('3','19','百度一下',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('32e6957dd91f43d6a964d89448eb5e3f','18','国际交流处','','','http://www.163.com',9,NULL,'1','2015-11-16 14:08:12','1','2015-11-16 14:14:32','','0','zh_CN'),('4','19','谷歌搜索',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('5','20','新浪网',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('6','20','腾讯网',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('7','21','淘宝网',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('8','21','新华网',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('9','22','赶集网',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1','zh_CN'),('ffd056d3ba8c4895a2970b49e0089d62','18','图书馆','','','http://www.sina.com',10,NULL,'1','2015-11-16 14:07:44','1','2015-11-16 14:14:27','','0','zh_CN');
/*!40000 ALTER TABLE `cms_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site`
--

DROP TABLE IF EXISTS `cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `row1col1` varchar(64) DEFAULT NULL,
  `row1col2` varchar(100) DEFAULT NULL,
  `row1col3` varchar(64) DEFAULT NULL,
  `row2col1` varchar(64) DEFAULT NULL,
  `row2col2` varchar(64) DEFAULT NULL,
  `row2col3` varchar(64) DEFAULT NULL,
  `row3col1` varchar(64) DEFAULT NULL,
  `row3col2` varchar(64) DEFAULT NULL,
  `row3col3` varchar(64) DEFAULT NULL,
  `homead` varchar(64) DEFAULT NULL COMMENT '首页广告',
  `aol` varchar(64) DEFAULT NULL COMMENT '在线申请',
  `download` varchar(64) DEFAULT NULL COMMENT '资料下载',
  `email` varchar(45) DEFAULT NULL COMMENT '邮件联络',
  `link` varchar(64) DEFAULT NULL COMMENT '友情链接',
  `qrcodecontents` varchar(500) DEFAULT NULL COMMENT '二维码',
  `locale` varchar(5) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `qrcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
INSERT INTO `cms_site` VALUES ('1','中文','大连外国语大学汉学院','/userfiles/1/images/cms/site/2015/11/logo.png','/z','描述','关键字','basic','Copyright &copy; 2015 by <a href=\"#\">ASV</a>. All Rights Reserved. 辽ICP备05003548','','1','2013-05-27 08:00:00','1','2015-11-21 19:07:55',NULL,'0','605de15fc58b4502bb9e5151b19084a0','/userfiles/1/files/cms/files/2015/11/a.mp4','ccb1f0466b5645f4911cd6da9b809b62','68a2085909e446cc894d9f23297ef665','501a3a2c83c642f0b78109d68a63b304','8b0f959bf25e42b8af02a251f00ee55e','012010c319b54b61878a951939e1a9ca','504027b6bc854f798d2083f847e0b780','2f7362c39b44404ab9a9ba71508becaa','5430fe2ede6f4b6191d79ce9a6e6e471','http://baidu.com','0bd1f5695e3143808cf026668432e20e','g.zw@asvcloud.com','18','大连外国语大学汉学院','zh_CN',1,'30822cb67e932a304386b19a52112157'),('2','English','英文子站','/userfiles/1/images/cms/site/2015/11/201511091305sd15.png','/z','描述','关键字','basic','Copyright &copy; 2015 by <a href=\"#\">ASV</a>. All Rights Reserved. 辽ICP备05003548','','1','2013-05-27 08:00:00','1','2015-11-05 14:52:39',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'en_US',2,NULL),('6f942c0960a34653866bb2f0612abf5a','日本語','日语站点','','','','','basic','','','1','2015-11-14 15:09:54','1','2015-11-14 15:09:54',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ja_JP',3,NULL);
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_scheme`
--

DROP TABLE IF EXISTS `gen_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_scheme`
--

LOCK TABLES `gen_scheme` WRITE;
/*!40000 ALTER TABLE `gen_scheme` DISABLE KEYS */;
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b','树结构','treeTable','com.thinkgem.jeesite.modules','test',NULL,'树结构生成','树结构','ThinkGem','f6e4dafaa72f4c509636484715f33a96','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9c9de9db6da743bb899036c6546061ac','单表','curd','com.thinkgem.jeesite.modules','test',NULL,'单表生成','单表','ThinkGem','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e6d905fd236b46d1af581dd32bdfb3b0','主子表','curd_many','com.thinkgem.jeesite.modules','test',NULL,'主子表生成','主子表','ThinkGem','43d6d5acffa14c258340ce6765e46c6f','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f','test_data_main','业务数据表','TestDataMain',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6e05c389f3c6415ea34e55e9dfb28934','test_data_child','业务数据子表','TestDataChild','test_data_main','test_data_main_id','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('aef6f1fc948f4c9ab1c1b780bc471cc2','test_data','业务数据表','TestData',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f6e4dafaa72f4c509636484715f33a96','test_tree','树结构表','TestTree',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658','aef6f1fc948f4c9ab1c1b780bc471cc2','sex','性别','char(1)','String','sex','0','1','1','1','1','1','=','radiobox','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('103fc05c88ff40639875c2111881996a','aef6f1fc948f4c9ab1c1b780bc471cc2','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('12fa38dd986e41908f7fefa5839d1220','6e05c389f3c6415ea34e55e9dfb28934','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('195ee9241f954d008fe01625f4adbfef','f6e4dafaa72f4c509636484715f33a96','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('19c6478b8ff54c60910c2e4fc3d27503','43d6d5acffa14c258340ce6765e46c6f','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1ac6562f753d4e599693840651ab2bf7','43d6d5acffa14c258340ce6765e46c6f','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1b8eb55f65284fa6b0a5879b6d8ad3ec','aef6f1fc948f4c9ab1c1b780bc471cc2','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','1','between','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1d5ca4d114be41e99f8dc42a682ba609','aef6f1fc948f4c9ab1c1b780bc471cc2','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('21756504ffdc487eb167a823f89c0c06','43d6d5acffa14c258340ce6765e46c6f','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('24bbdc0a555e4412a106ab1c5f03008e','f6e4dafaa72f4c509636484715f33a96','parent_ids','所有父级编号','varchar2(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('33152ce420904594b3eac796a27f0560','6e05c389f3c6415ea34e55e9dfb28934','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('35af241859624a01917ab64c3f4f0813','aef6f1fc948f4c9ab1c1b780bc471cc2','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('398b4a03f06940bfb979ca574e1911e3','aef6f1fc948f4c9ab1c1b780bc471cc2','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3a7cf23ae48a4c849ceb03feffc7a524','43d6d5acffa14c258340ce6765e46c6f','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','0','0','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3d9c32865bb44e85af73381df0ffbf3d','43d6d5acffa14c258340ce6765e46c6f','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('416c76d2019b4f76a96d8dc3a8faf84c','f6e4dafaa72f4c509636484715f33a96','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('46e6d8283270493687085d29efdecb05','f6e4dafaa72f4c509636484715f33a96','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4a0a1fff86ca46519477d66b82e01991','aef6f1fc948f4c9ab1c1b780bc471cc2','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4c8ef12cb6924b9ba44048ba9913150b','43d6d5acffa14c258340ce6765e46c6f','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('53d65a3d306d4fac9e561db9d3c66912','6e05c389f3c6415ea34e55e9dfb28934','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('56fa71c0bd7e4132931874e548dc9ba5','6e05c389f3c6415ea34e55e9dfb28934','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5a4a1933c9c844fdba99de043dc8205e','aef6f1fc948f4c9ab1c1b780bc471cc2','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5e5c69bd3eaa4dcc9743f361f3771c08','aef6f1fc948f4c9ab1c1b780bc471cc2','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('633f5a49ec974c099158e7b3e6bfa930','f6e4dafaa72f4c509636484715f33a96','name','名称','nvarchar2(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('652491500f2641ffa7caf95a93e64d34','6e05c389f3c6415ea34e55e9dfb28934','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6763ff6dc7cd4c668e76cf9b697d3ff6','f6e4dafaa72f4c509636484715f33a96','sort','排序','number(10)','Integer','sort','0','0','1','1','1','0','=','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('67d0331f809a48ee825602659f0778e8','43d6d5acffa14c258340ce6765e46c6f','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('68345713bef3445c906f70e68f55de38','6e05c389f3c6415ea34e55e9dfb28934','test_data_main_id','业务主表','varchar2(64)','String','testDataMain.id','0','1','1','1','0','0','=','input',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('71ea4bc10d274911b405f3165fc1bb1a','aef6f1fc948f4c9ab1c1b780bc471cc2','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','1','1','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('7f871058d94c4d9a89084be7c9ce806d','6e05c389f3c6415ea34e55e9dfb28934','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b48774cfe184913b8b5eb17639cf12d','43d6d5acffa14c258340ce6765e46c6f','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b7cf0525519474ebe1de9e587eb7067','6e05c389f3c6415ea34e55e9dfb28934','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b9de88df53e485d8ef461c4b1824bc1','43d6d5acffa14c258340ce6765e46c6f','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8da38dbe5fe54e9bb1f9682c27fbf403','aef6f1fc948f4c9ab1c1b780bc471cc2','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('92481c16a0b94b0e8bba16c3c54eb1e4','f6e4dafaa72f4c509636484715f33a96','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('9a012c1d2f934dbf996679adb7cc827a','f6e4dafaa72f4c509636484715f33a96','parent_id','父级编号','varchar2(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ad3bf0d4b44b4528a5211a66af88f322','aef6f1fc948f4c9ab1c1b780bc471cc2','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','1','1','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('bb1256a8d1b741f6936d8fed06f45eed','f6e4dafaa72f4c509636484715f33a96','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('ca68a2d403f0449cbaa1d54198c6f350','43d6d5acffa14c258340ce6765e46c6f','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','0','0','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cb9c0ec3da26432d9cbac05ede0fd1d0','43d6d5acffa14c258340ce6765e46c6f','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cfcfa06ea61749c9b4c4dbc507e0e580','f6e4dafaa72f4c509636484715f33a96','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d5c2d932ae904aa8a9f9ef34cd36fb0b','43d6d5acffa14c258340ce6765e46c6f','sex','性别','char(1)','String','sex','0','1','1','1','0','1','=','select','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e64050a2ebf041faa16f12dda5dcf784','6e05c389f3c6415ea34e55e9dfb28934','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e8d11127952d4aa288bb3901fc83127f','43d6d5acffa14c258340ce6765e46c6f','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb2e5afd13f147a990d30e68e7f64e12','aef6f1fc948f4c9ab1c1b780bc471cc2','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f5ed8c82bad0413fbfcccefa95931358','f6e4dafaa72f4c509636484715f33a96','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_template`
--

DROP TABLE IF EXISTS `gen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_template`
--

LOCK TABLES `gen_template` WRITE;
/*!40000 ALTER TABLE `gen_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave`
--

DROP TABLE IF EXISTS `oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT '流程实例编号',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `leave_type` varchar(20) DEFAULT NULL COMMENT '请假类型',
  `reason` varchar(255) DEFAULT NULL COMMENT '请假理由',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `reality_start_time` datetime DEFAULT NULL COMMENT '实际开始时间',
  `reality_end_time` datetime DEFAULT NULL COMMENT '实际结束时间',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假流程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave`
--

LOCK TABLES `oa_leave` WRITE;
/*!40000 ALTER TABLE `oa_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify`
--

DROP TABLE IF EXISTS `oa_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) DEFAULT NULL COMMENT '附件',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify`
--

LOCK TABLES `oa_notify` WRITE;
/*!40000 ALTER TABLE `oa_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify_record`
--

DROP TABLE IF EXISTS `oa_notify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告发送记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify_record`
--

LOCK TABLES `oa_notify_record` WRITE;
/*!40000 ALTER TABLE `oa_notify_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_test_audit`
--

DROP TABLE IF EXISTS `oa_test_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_test_audit` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批流程测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_test_audit`
--

LOCK TABLES `oa_test_audit` WRITE;
/*!40000 ALTER TABLE `oa_test_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_test_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_area`
--

DROP TABLE IF EXISTS `sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_area`
--

LOCK TABLES `sys_area` WRITE;
/*!40000 ALTER TABLE `sys_area` DISABLE KEYS */;
INSERT INTO `sys_area` VALUES ('1','0','0,','中国',10,'100000','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','辽宁省',20,'110000','2','1','2013-05-27 08:00:00','1','2015-11-19 16:37:18','','0'),('3','2','0,1,2,','大连市',30,'110101','3','1','2013-05-27 08:00:00','1','2015-11-19 16:37:27','','0'),('4','3','0,1,2,3,','西岗区',40,'110102','4','1','2013-05-27 08:00:00','1','2015-11-19 16:37:41','','0'),('5','3','0,1,2,3,','沙河口区',50,'110104','4','1','2013-05-27 08:00:00','1','2015-11-19 16:37:55','','0'),('6','3','0,1,2,3,','高新区',60,'110105','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('1','0','正常','del_flag','删除标记',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','yellow','黄色','color','颜色值',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('100','java.util.Date','Date','gen_java_type','Java类型\0\0',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('101','com.thinkgem.jeesite.modules.sys.entity.User','User','gen_java_type','Java类型\0\0',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('102','com.thinkgem.jeesite.modules.sys.entity.Office','Office','gen_java_type','Java类型\0\0',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('103','com.thinkgem.jeesite.modules.sys.entity.Area','Area','gen_java_type','Java类型\0\0',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('104','Custom','Custom','gen_java_type','Java类型\0\0',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('105','1','会议通告\0\0\0\0','oa_notify_type','通知通告类型',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','奖惩通告\0\0\0\0','oa_notify_type','通知通告类型',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','活动通告\0\0\0\0','oa_notify_type','通知通告类型',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','草稿','oa_notify_status','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','发布','oa_notify_status','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','橙色','color','颜色值',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('110','0','未读','oa_notify_read','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','已读','oa_notify_read','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','默认主题','theme','主题方案',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','cerulean','天蓝主题','theme','主题方案',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','readable','橙色主题','theme','主题方案',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','united','红色主题','theme','主题方案',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','flat','Flat主题','theme','主题方案',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','1','国家','sys_area_type','区域类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','2','省份、直辖市','sys_area_type','区域类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','3','地市','sys_area_type','区域类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','删除','del_flag','删除标记',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','4','区县','sys_area_type','区域类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','1','公司','sys_office_type','机构类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','2','部门','sys_office_type','机构类型',70,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','3','小组','sys_office_type','机构类型',80,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','4','其它','sys_office_type','机构类型',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','综合部','sys_office_common','快捷通用部门',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','2','开发部','sys_office_common','快捷通用部门',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','3','人力部','sys_office_common','快捷通用部门',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','1','一级','sys_office_grade','机构等级',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','2','二级','sys_office_grade','机构等级',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','显示','show_hide','显示/隐藏',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','3','三级','sys_office_grade','机构等级',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','4','四级','sys_office_grade','机构等级',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','1','所有数据','sys_data_scope','数据范围',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','2','所在公司及以下数据','sys_data_scope','数据范围',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','3','所在公司数据','sys_data_scope','数据范围',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','4','所在部门及以下数据','sys_data_scope','数据范围',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','5','所在部门数据','sys_data_scope','数据范围',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','8','仅本人数据','sys_data_scope','数据范围',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','9','按明细设置','sys_data_scope','数据范围',100,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','1','系统管理','sys_user_type','用户类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3f03192c6006444e8dbbdded76aa1838','US','美国','country','美国',2,'0','1','2015-11-22 15:14:51','1','2015-11-22 15:14:51','','0'),('4','0','隐藏','show_hide','显示/隐藏',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','2','部门经理','sys_user_type','用户类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40b151d969e841f09672103f3a2709d5','zh_CN','中文','locale','中文',1,'0','1','2015-11-12 11:21:51','1','2015-11-12 11:22:50','','0'),('41','3','普通用户','sys_user_type','用户类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','basic','基础主题','cms_theme','站点主题',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','blue','蓝色主题','cms_theme','站点主题',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','red','红色主题','cms_theme','站点主题',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','article','文章模型','cms_module','栏目模型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','picture','图片模型','cms_module','栏目模型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','download','下载模型','cms_module','栏目模型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','link','链接模型','cms_module','栏目模型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','special','专题模型','cms_module','栏目模型',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','是','yes_no','是/否',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','0','默认展现方式','cms_show_modes','展现方式',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','首栏目内容列表','cms_show_modes','展现方式',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','2','栏目第一条内容','cms_show_modes','展现方式',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','发布','cms_del_flag','内容状态',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','1','删除','cms_del_flag','内容状态',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','2','审核','cms_del_flag','内容状态',15,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','1','首页焦点图','cms_posid','推荐位',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','栏目页文章推荐','cms_posid','推荐位',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57451c87044b4a97a71ae1ab84f11d3a','en_US','英文','locale','英文',2,'0','1','2015-11-12 11:22:36','1','2015-11-12 11:22:57','','0'),('58','1','咨询','cms_guestbook','留言板分类',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58694c92cc7d4609b39ae8689c1fcb48','GB','英国','country','英国',3,'0','1','2015-11-22 15:16:37','1','2015-11-22 15:16:37','','0'),('59','2','建议','cms_guestbook','留言板分类',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','0','否','yes_no','是/否',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','3','投诉','cms_guestbook','留言板分类',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','其它','cms_guestbook','留言板分类',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','公休','oa_leave_type','请假类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','病假','oa_leave_type','请假类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','事假','oa_leave_type','请假类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','4','调休','oa_leave_type','请假类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','5','婚假','oa_leave_type','请假类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','接入日志','sys_log_type','日志类型',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','异常日志','sys_log_type','日志类型',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','请假流程','act_type','流程类型',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69e30eaf01f84ebc9a605089bc7f60ae','ko_KR','朝鲜语','locale','朝鲜语',4,'0','1','2015-11-12 11:27:48','1','2015-11-12 11:27:48','','0'),('7','red','红色','color','颜色值',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','test_audit','审批测试流程','act_type','流程类型',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','分类1','act_category','流程分类',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','分类2','act_category','流程分类',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('73','crud','增删改查','gen_category','代码生成分类',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('74','crud_many','增删改查（包含从表）','gen_category','代码生成分类',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('75','tree','树结构','gen_category','代码生成分类',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('76','=','=','gen_query_type','查询方式',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('77','!=','!=','gen_query_type','查询方式',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('78','&gt;','&gt;','gen_query_type','查询方式',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('79','&lt;','&lt;','gen_query_type','查询方式',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('8','green','绿色','color','颜色值',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','between','Between','gen_query_type','查询方式',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('81','like','Like','gen_query_type','查询方式',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('82','left_like','Left Like','gen_query_type','查询方式',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('83','right_like','Right Like','gen_query_type','查询方式',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('84','input','文本框','gen_show_type','字段生成方案',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('85','textarea','文本域','gen_show_type','字段生成方案',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('86','select','下拉框','gen_show_type','字段生成方案',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('87','checkbox','复选框','gen_show_type','字段生成方案',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('88','radiobox','单选框','gen_show_type','字段生成方案',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('89','dateselect','日期选择','gen_show_type','字段生成方案',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('9','blue','蓝色','color','颜色值',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','userselect','人员选择\0','gen_show_type','字段生成方案',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('91','officeselect','部门选择','gen_show_type','字段生成方案',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('92','areaselect','区域选择','gen_show_type','字段生成方案',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('93','String','String','gen_java_type','Java类型',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('94','Long','Long','gen_java_type','Java类型',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('95','dao','仅持久层','gen_category','代码生成分类\0\0\0\0\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('96','1','男','sex','性别',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('97','2','女','sex','性别',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('98','Integer','Integer','gen_java_type','Java类型\0\0',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('99','Double','Double','gen_java_type','Java类型\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('ac571a96bea74d7e84fd881eac002987','ja_JP','日文','locale','日文',3,'0','1','2015-11-12 11:24:59','1','2015-11-12 11:24:59','','0'),('ad03e2251667491f9ebfeca019ea84be','ru_RU','俄语','locale','俄语',5,'0','1','2015-11-12 11:29:01','1','2015-11-12 11:29:01','','0'),('b67a706bcf6b489fbd7ecb8d655de3f5','CN','中国','country','中国',1,'0','1','2015-11-22 15:14:16','1','2015-11-22 15:14:16','','0');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES ('d5e9c98a2f004c94a641efe66ac1ee6f','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:18:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('d5f9ef9c67a14dfb8943d410f9070e17','1','系统设置-系统设置-字典管理','1','2015-11-22 15:14:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/','GET','repage=&type=country',''),('d601597730b741e697b3abc831df9f0d','1','内容管理-内容管理-内容发布-链接模型','1','2015-11-16 14:07:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/','GET','repage=&category.id=23',''),('d60fba2ea7fd4bc9986d03e12a107e60','1','系统登录','1','2015-11-14 20:13:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447503072677',''),('d6249a8e8e2540c8a6cb4c0d7af99c06','1','内容管理-栏目设置-栏目管理','1','2015-11-13 11:59:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_10',''),('d62dbe65a2194d02bc30d29eabd65951','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 18:20:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=关于我们&id=&category.id=2',''),('d64b729910f54705bbf0946d24dc4340','1','系统登录','1','2015-11-16 11:31:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=2f6493999a0d40c1a7c5f4866dc0c36f',''),('d64c8a320aca469b98bac6b26d131ff6','1','内容管理-内容管理-内容发布','1','2015-11-12 15:45:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('d6774a0cc81740ada427f42ba7423d3a','1','内容管理-内容管理-内容发布','1','2015-12-01 10:26:12','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('d681e905c7a7465e9346c78141b33d1d','1','系统登录','1','2015-10-30 22:21:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446214864271',''),('d69e3ca2d60a425ca4d18b4fdda5be0e','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 18:20:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=短期进修&id=&category.id=7',''),('d69fad1b96f945cd817c39b48943dd46','1','系统登录','1','2015-12-01 10:03:57','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a','GET','',''),('d6a335e19f2542718d84f47b228542b9','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 18:16:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=国内教育&id=&category.id=10',''),('d6cc5b87bf024814bba3c57d55389e97','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-30 22:49:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=3',''),('d6e371d7a4a5477f91b9e987dce07a75','1','系统设置-系统设置-字典管理','1','2015-11-12 11:18:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/','POST','pageNo=1&pageSize=30&type=cms_show_modes&description=',''),('d70486fa7ae84fa085006d296b0fd911','1','系统登录','1','2015-11-03 21:32:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446557552359',''),('d70578df1afa4ac3af7502a5bbebbcc8','1','内容管理-内容管理-内容发布','1','2015-11-13 18:08:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_20',''),('d745fd1cfc9a415abe715cdf0375386e','1','系统设置-系统设置-菜单管理','1','2015-11-25 21:31:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/','GET','',''),('d747b920c794429780e5a168a0c3ab35','1','系统设置-系统设置-菜单管理-查看','1','2015-11-19 16:35:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/form','GET','id=80',''),('d74b3877b4c94712a6194ac1b74d53c3','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 23:05:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','repage=&category.id=3',''),('d76743df6f99412fbc534f86cafbbb62','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-12 15:50:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=1&office.id=1&office.name=山东省总公司&parent.id=1&parent.name=顶级栏目&module=article&locale=en&name=testsdfdf&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('d76afac3876c4efa98bc7c50e5c2846d','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 14:44:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','parent.id=012010c319b54b61878a951939e1a9ca',''),('d7ac962f443e45a9a37f383824536b8c','1','系统登录','1','2015-11-05 14:56:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446706566250',''),('d7b73498070c4b73895c5fdc6a903bee','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 17:29:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','',''),('d7c32d195f4e436396e51240083f36c5','1','系统登录','1','2015-10-30 17:32:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446197547829',''),('d7cb9821e113467ba59efce80e71e37b','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 17:21:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('d7dcadedb07e47498e22381082513e76','1','系统登录','1','2015-11-06 15:11:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446793893864',''),('d7e24b256f954e7084663afc903915e2','1','内容管理-内容管理-内容发布-文章模型','1','2015-12-01 11:06:48','125.40.16.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=d8479d39b68b43c098719741e7ea17f2',''),('d81454c562c542dc8024017e982abbdc','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-19 10:19:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('d824c15452234d6db2b9d248d965cdea','1','内容管理-栏目设置-栏目管理','1','2015-11-12 11:50:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_12',''),('d825d0ac90e64f2d85b1e62157c37099','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 13:54:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=ffdfdfdf&id=&category.id=86a205ff69094fb1b089898d71243208',''),('d83899722fe840deb42289b6adedbc11','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 17:13:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('d8405167609c4825bb557257e33d6840','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-12 11:49:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','',''),('d849dde98e2e42ddb10796c8150a9554','1','内容管理-栏目设置-栏目管理','1','2015-11-13 13:51:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('d88f2b1acbfa4c7c811a154c370185ea','1','内容管理-栏目设置-栏目管理','1','2015-11-13 16:10:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','locale=en',''),('d8a0e70f230349f897a802b3cfcd9d00','1','我的面板-个人信息-个人信息','1','2015-11-18 21:14:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('d8c47ae4a63b4b079b9d02a11812bc10','1','内容管理-栏目设置-栏目管理','1','2015-11-14 19:33:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_6',''),('d8c61e4eff6a4c53914e1fe9a28262b7','1','系统设置-机构用户-用户管理-查看','1','2015-11-02 17:14:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/list','GET','',''),('d8d6eabc8fca4d8ea5782923115c14d5','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-16 10:29:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=',''),('d8fc988b054349efa3ae8cb16b0479a8','1','系统登录','1','2015-11-08 14:14:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446963268817',''),('d908c865084a4365b6e2b360d3e0482a','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 18:07:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/findByIds','GET','ids=1,2,3',''),('d924a30a2df646a3b66ae567c8f73c0e','1','内容管理-栏目设置-栏目管理','1','2015-11-25 21:25:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_4',''),('d949c553e7634d128834c9bc0cc2cc44','1','系统设置-系统设置-字典管理','1','2015-11-22 15:16:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/','GET','repage=&type=country',''),('d951de97d7c34d83a284be2b4dd230a7','1','内容管理-内容管理','1','2015-11-02 23:24:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('d967778a1e824bf68b9de4c19e9c643a','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-16 10:29:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=5430fe2ede6f4b6191d79ce9a6e6e471',''),('d96e71d248ef4911b9c964faeda176bd','1','系统登录','1','2015-10-30 15:31:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a','GET','',''),('d97ed817ccf84c84a758b292dd45bc54','1','内容管理-内容管理-内容发布-文章模型','1','2015-12-01 11:07:14','125.40.16.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','repage=&category.id=d8479d39b68b43c098719741e7ea17f2',''),('d98f9f1d97c44f8b850a17242ef380d8','1','系统登录','1','2015-11-02 16:02:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446451378297',''),('d98fa23c89434e2bb398d71771c1c0e6','1','内容管理-栏目设置-栏目管理','1','2015-11-11 09:38:50','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('d99638c00d9e4ad49125671a6436c717','1','系统登录','1','2015-11-06 12:34:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446784457196',''),('d9d25a4b09044fa7b6836630cac7fe6f','1','系统设置-机构用户-用户管理-查看','1','2015-11-02 16:19:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/form','GET','id=2',''),('d9d8cea9de114d25a9dd636734b6f30f','1','内容管理-栏目设置-首页设置','1','2015-11-16 13:37:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','repage=',''),('d9e2824f15d345fcb3069a58043be1e3','1','内容管理-内容管理-内容发布','1','2015-11-02 17:15:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('d9fdb930fd504766b8832df5aec0ca31','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:57:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=',''),('d9ff8210c35e4369b5cab78062bc67df','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 14:45:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','parent.id=012010c319b54b61878a951939e1a9ca',''),('da01047daab2442cb12e4974d1eccad6','1','内容管理-内容管理','1','2015-11-02 16:24:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('da26df64fece4fafb713337116837e84','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 18:11:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('da2c2dfadbc44da18c5fece433e00e90','1','系统登录','1','2015-11-15 20:17:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447589869381',''),('da31794afb894237978e18d349861e2a','1','内容管理-内容管理','1','2015-10-30 10:05:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('da3fb908062e4516beedb89190f5b643','1','内容管理-栏目设置-站点设置-修改','1','2015-11-03 21:19:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/site/save','POST','id=1&name=默认站点&title=JeeSite Web&logo=&description=JeeSite&keywords=JeeSite&theme=basic&copyright=\r\n	Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548\r\n&customIndexView=&domain=/z',''),('da814512cc8f480586eeb28c3abb52a9','1','内容管理-栏目设置-栏目管理-查看','1','2015-12-01 10:44:03','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/form','GET','parent.id=aebbed30476040c38bf017eb5b4c7017',''),('da9d415a22974978abd7f2d55fabf86c','1','系统登录','1','2015-11-12 16:25:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447316734040',''),('dacc3ccad4484466aa60b5141426f6b7','1','内容管理-栏目设置-栏目管理','1','2015-11-16 09:48:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('dadc397f57b7421dad8b879e3a3f2cb2','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 18:20:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','repage=&category.id=86a205ff69094fb1b089898d71243208',''),('daea144ccc8c4992acb8a5378df99c3b','1','内容管理-栏目设置-首页设置','1','2015-11-14 22:55:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_10',''),('daedfef438f043f7be86e584d2baa535','1','内容管理-内容管理','1','2015-11-17 16:49:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('db2110c78d944a2caee0b70219e3472b','1','系统登录','1','2015-11-12 16:15:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447316124053',''),('db286bf8864a47a882f73566e6a74486','1','内容管理-内容管理','1','2015-12-01 10:31:24','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/none','GET','',''),('db2cd7d2dc704ecd88cb5ba21c4a8192','1','系统登录','1','2015-10-30 10:08:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446170881881',''),('db310a7e65db4f94b073a22eb98cf4b5','1','我的面板-个人信息-个人信息','1','2015-11-02 22:33:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('db5c6957ec124ff6a87305954495c062','1','系统登录','1','2015-11-12 20:49:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_5',''),('db5fec6016294f879db5434efcd0d8e1','1','系统登录','1','2015-11-12 20:22:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447330701916',''),('db662c88a60a4ceea91daea8b0e40f99','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 20:24:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','id=1',''),('dbccf13bf2904bbda8fdd218211d4501','1','内容管理-栏目设置-栏目管理','1','2015-10-30 22:49:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('dbe2a5fa135443639e22ab7954af7eb6','1','内容管理-栏目设置-栏目管理','1','2015-11-06 10:44:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('dc074c8df22f401783261bfd484e72a6','1','系统登录','1','2015-11-12 11:38:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447299514217',''),('dc0e468d6f9d46d2bf98ac350d7b31c4','1','内容管理-内容管理','1','2015-11-12 15:32:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('dc13eeb45d0944f4b45b0136e25a4869','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-12 18:17:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','',''),('dc18f18c06644abab83b02b3e0b6cedb','1','内容管理-内容管理','1','2015-11-16 14:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('dc31a7d720ed4d61907a4987698b2719','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:00:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=',''),('dc3b01e6ada6494f8d4d09f0d1956302','1','内容管理-内容管理','1','2015-11-13 18:10:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('dc45069d444a46768e5c25f969182309','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-17 16:46:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','',''),('dc4d2d90314644ba9f19a25f7f827d71','1','系统登录','1','2015-11-02 22:53:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446475992734',''),('dc5b5bb556db4374a04f9e16e01ca8b3','1','系统登录','1','2015-11-02 17:35:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446456925154',''),('dc5f8433ba88467793bdf274b7094c92','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-16 13:35:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=&office.id=1&office.name=山东省总公司&parent.id=1&parent.name=顶级栏目&module=article&locale=zh&name=通知公告&image=&href=&target=&description=&keywords=&sort=130&inMenu=0&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('dc81aaa257ca424b8f377600855a33a8','1','内容管理-栏目设置-首页设置','1','2015-11-16 16:11:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','repage=',''),('dcaf2aebdeb3484da05f5b8df987b77c','1','系统设置-机构用户-用户管理','1','2015-11-19 17:00:56','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('dccdf41e8967438396b3752771161e28','1','系统设置-系统设置-角色管理-修改','1','2015-11-25 21:36:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/role/save','POST','id=2&office.id=2&office.name=领导&oldName=公司管理员&name=公司管理员&oldEnname=hr&enname=hr&roleType=assignment&sysData=1&useable=1&dataScope=2&menuIds=1,27,28,29,30,71,56,57,58,59,31,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,7489e53f7dd247839...&officeIds=&remarks=',''),('dcd3519db71044118520e782742f6827','1','系统登录','1','2015-11-19 12:17:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447906651860',''),('dcdd188b5aaf4439bfeb6d5fa5711bb1','1','内容管理-栏目设置-首页设置','1','2015-11-16 15:10:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_40',''),('dcf11fdd640346d39ac9f4a06af662c1','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-12 20:31:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','',''),('dcf3bd4ee3104278ba78ac5c2408e23d','1','内容管理-内容管理','1','2015-11-19 16:42:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('dcf6055bbc394356af403efdff25c808','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-16 14:36:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/updateSort','POST','ids=2&sorts=10',''),('dd276770ccad4be995c5261e32092917','1','内容管理-栏目设置-栏目管理','1','2015-11-15 20:30:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_11',''),('dd464a034c6e408a9e2ad1493afaa93b','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:19:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=ffdfdfdf&id=&category.id=86a205ff69094fb1b089898d71243208',''),('dd5c399b860247c298f01449a65e454a','1','系统登录','1','2015-10-30 20:04:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446206657638',''),('dd6027c91c2f4a848bb4fe2c9e11b315','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 13:54:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=',''),('dd6c66c01436464495443df0cb544597','1','内容管理-内容管理','1','2015-11-12 18:59:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('dd7386640dd94e66b8edf2b6e5ec8780','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 22:35:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/findByIds','GET','ids=1,2,3',''),('dd8f44440af14336a18ae6b0a5fbf9b2','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:29:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=13&office.id=4&office.name=市场部&parent.id=10&parent.name=国内教育&module=article&name=下载&image=&href=&target=&description=&keywords=&sort=50&inMenu=0&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('dd9a185e6d244a5398584a541ef4d7b3','1','系统设置-机构用户-用户管理','1','2015-11-22 15:10:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/index','GET','',''),('ddaa6d6b5a73427ea01bce6f2284beb4','1','系统登录','1','2015-11-16 17:27:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447666051061',''),('ddac2c0b4ad5475e90c56d1d324ce0e0','1','内容管理-内容管理','1','2015-11-12 15:39:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('ddbbb05eb9314bcc8a208c358b7b914e','1','内容管理-内容管理-内容发布-链接模型','1','2015-11-16 14:06:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/','GET','repage=&category.id=21',''),('ddce4998c6b5406f899ca85ffece7a81','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:06:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','',''),('ddd09287fbca4251a47817ba8f7f7200','1','系统登录','1','2015-11-15 13:04:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447563844992',''),('dde6dd46c1a9401a9a0a97f7932f4bf0','1','内容管理-栏目设置-栏目管理','1','2015-11-16 14:05:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('ddefa95a4d5b4ac48878f62bc127a3c1','1','系统设置-系统设置-字典管理','1','2015-11-12 11:18:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/','GET','',''),('ddf0fd8ce38d46059f49af26f084c203','1','系统登录','1','2015-11-08 17:28:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446974904543',''),('ddfad0544f3e4ab2b67d78573c169591','1','内容管理-栏目设置-首页设置','1','2015-11-14 20:58:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_33',''),('de186d16bcf749ebaf386e2de281e07a','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-13 16:14:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=67fe7ec3e37d435aafe750b399a96374&office.id=1&office.name=山东省总公司&parent.id=86a205ff69094fb1b089898d71243208&parent.name=ffdfdfdf&module=article&locale=en&name=a&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('de30c589f8b9462799189f8a2573eb0d','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:57:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=&id=&category.id=',''),('de51e1c5a02d48daa6c403219ca591de','1','内容管理-栏目设置-栏目管理','1','2015-11-08 12:13:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('de54681b467f4639b608ba5a9e31c974','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:30:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=8',''),('de5de61e9ca342d8867cd4972c0f9792','1','内容管理-内容管理','1','2015-11-19 10:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('de6e2ef43fca4bf2873edf15113c5944','1','系统登录','1','2015-10-30 20:44:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446209076581',''),('de6ff84292444d9ca9d90d45e15e7588','1','内容管理-栏目设置-站点设置-查看','1','2015-11-16 10:53:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','id=1',''),('de78fbc486b6495f874632ddb8508dfc','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-16 15:16:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=&office.id=1&office.name=山东省总公司&parent.id=8b0f959bf25e42b8af02a251f00ee55e&parent.name=校园生活&module=article&locale=zh&name=院历&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('de858a7f4dd54c6db885ac8980dec0d8','1','系统登录','1','2015-11-12 21:12:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447333636956',''),('de9a0d1a3ea241689ff42aece3b62644','1','系统登录','1','2015-11-12 15:49:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447314595569',''),('deb95a00e2e84004b8b7e0b15abd3e80','1','系统登录','1','2015-11-08 13:44:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446961450865',''),('debce3a1921f49c181da09878254a5b7','1','系统设置-系统设置-字典管理-查看','1','2015-11-22 15:14:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/form','GET','description=中国&type=country&sort=11',''),('dec769d7f4ac4a128680130a7a2e519e','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 18:00:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('dec8610e0e6540eb94906514dab4f315','1','内容管理-栏目设置-栏目管理-查看','1','2015-12-01 10:40:21','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/form','GET','id=6efb300d4e104d02ac5465b1edf66a81',''),('decd478461e54982b145c6ed5e330ea7','1','系统设置-系统设置-字典管理','1','2015-11-19 13:59:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/','POST','pageNo=2&pageSize=30&type=sex&description=',''),('decf5858fb284a30b6ed767b4c2a5215','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-16 14:53:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=6efb300d4e104d02ac5465b1edf66a81',''),('ded1960a310a4134b5884c17ec0d2a74','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-11 09:31:49','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=&office.id=3&office.name=综合部&parent.id=2f7362c39b44404ab9a9ba71508becaa&parent.name=考试信息&module=article&name=学院考试&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('dee83133301446f196a2f72409b7a299','1','系统登录','1','2015-11-14 16:27:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447489634944',''),('dee91a7ab438488c9e0caaca3a78f827','1','我的面板-个人信息-个人信息','1','2015-11-19 17:04:49','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('deecf29f048d4ce89e4da9fcef39ef0f','1','系统设置-机构用户-用户管理','1','2015-11-19 16:39:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('df10ce9ce8c8467fbc33a1f46f3f2994','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-13 13:50:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=86a205ff69094fb1b089898d71243208',''),('df5ed3312d054f9f8560a1444633ce11','1','内容管理-内容管理-校友管理','1','2015-11-25 22:49:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/schoolmate/list','GET','tabPageId=jerichotabiframe_7',''),('df9ab0942fc841c88562e7c305003d16','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:21:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','id=3',''),('dfacf7673b9e490883e743ca955b9d8d','1','系统登录','1','2015-10-30 23:01:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446217275661',''),('dfccfc48277b4579937ee558fb344112','1','系统设置-机构用户-用户管理-查看','1','2015-11-19 16:42:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/list','GET','',''),('dfcfbbf3e7ff4d54b7e17aa86d4a584c','1','我的面板-个人信息-个人信息','1','2015-10-30 09:27:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('dfd9941bac904f778d2d5071ae0ea816','2','内容管理-栏目设置-首页设置','1','2015-11-14 22:08:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_2','org.apache.jasper.JasperException: An exception occurred processing JSP page /WEB-INF/views/modules/cms/siteList.jsp at line 36\n\n33: 			<tr>\n34: 				<td><a href=\"${ctx}/cms/site/form?id=${site.id}\" title=\"${site.name}\">${fns:abbr(site.name,40)}</a></td>\n35: 				<td>${fns:abbr(site.title,40)}</td>\n36: 				<td>${fns:abbr(site.sort,40)}</td>\n37: 				<td>${fns:abbr(site.locale_zh,40)}</td>\n38: 				<td>${fns:abbr(site.description,40)}</td>\n39: 				<td>${fns:abbr(site.keywords,40)}</td>\n\n\nStacktrace:\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:574)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:476)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:291)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1244)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:861)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:291)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:346)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:262)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:217)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:142)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:518)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1091)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:673)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1500)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1456)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\nCaused by: javax.el.ELException: Problems calling function \'fns:abbr\'\n	at org.apache.el.parser.AstFunction.getValue(AstFunction.java:188)\n	at org.apache.el.ValueExpressionImpl.getValue(ValueExpressionImpl.java:184)\n	at org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate(PageContextImpl.java:943)\n	at org.apache.jsp.WEB_002dINF.views.modules.cms.siteList_jsp._jspx_meth_c_005fforEach_005f0(siteList_jsp.java:564)\n	at org.apache.jsp.WEB_002dINF.views.modules.cms.siteList_jsp._jspService(siteList_jsp.java:218)\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:438)\n	... 72 more\nCaused by: javax.el.PropertyNotFoundException: Property \'sort\' not found on type com.thinkgem.jeesite.modules.cms.entity.Site\n	at javax.el.BeanELResolver$BeanProperties.get(BeanELResolver.java:268)\n	at javax.el.BeanELResolver$BeanProperties.access$300(BeanELResolver.java:221)\n	at javax.el.BeanELResolver.property(BeanELResolver.java:355)\n	at javax.el.BeanELResolver.getValue(BeanELResolver.java:95)\n	at org.apache.jasper.el.JasperELResolver.getValue(JasperELResolver.java:110)\n	at org.apache.el.parser.AstValue.getValue(AstValue.java:169)\n	at org.apache.el.parser.AstFunction.getValue(AstFunction.java:183)\n	... 79 more\n'),('e00ad3f421eb4a398016675dbd04e4ca','1','我的面板-个人信息-个人信息','1','2015-11-25 21:36:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('e02fae8367294bcdb75551ec8ada1c38','1','内容管理-栏目设置-首页设置','1','2015-11-16 16:10:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_45',''),('e037f9e8e2b6408886134a58e8e87a1a','1','系统设置-系统设置-菜单管理','1','2015-11-17 16:48:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/','GET','tabPageId=jerichotabiframe_9',''),('e0847d811f4e4139a4a3ac427da4ee42','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-16 14:53:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','repage=&category.id=b5c2a87abda84100b01f6f52e5412ade',''),('e0ba79c1d68e409d95e5541a3f133fa9','1','内容管理-内容管理','1','2015-12-01 10:26:13','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/tree','GET','',''),('e0f4ed64704145d7a33710c7e0eba604','1','系统登录','1','2015-11-12 20:29:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447331232072',''),('e10bcc5e3ea9415e9e7e2fc34165900e','1','系统设置-系统设置-字典管理','1','2015-11-19 13:41:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/','POST','pageNo=1&pageSize=30&type=&description=男',''),('e14992cb1db346b7bfaa27930525a2d0','1','内容管理-栏目设置-首页设置','1','2015-11-14 20:59:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_35',''),('e1722097c2914492b7cc5199e1a9b53c','1','系统登录','1','2015-10-31 16:46:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446281165809',''),('e1909ae0e92246dfa839a68b1fde5efe','1','系统设置-系统设置-菜单管理-查看','1','2015-11-19 16:35:26','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/form','GET','id=79',''),('e195bcfef70c4b508c790667e8d574bf','1','内容管理-栏目设置-栏目管理','1','2015-11-12 15:45:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('e1ee3742a24c4e8a9ffb9c9ff3a43f4e','1','内容管理-内容管理-内容发布-链接模型-修改','1','2015-11-16 14:08:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/save','POST','id=&category.id=18&category.name=友情链接&title=国际交流处&color=&image=&href=http://www.163.com&weight=0&weightDate=&remarks=&delFlag=0',''),('e1f0b5b51df643e68e2dbfea9e16d17e','1','内容管理-内容管理','1','2015-11-13 18:11:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('e1f42985547245e1b6ebf1942824113c','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 09:44:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','',''),('e231f9d2f43e43a0bc3bab9d5e8255c8','1','代码生成-生成示例-树结构','1','2015-11-19 16:34:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/test/testTree','GET','tabPageId=jerichotabiframe_7',''),('e25d3616ad2c41b681c96faf72e728ce','1','内容管理-内容管理','1','2015-11-25 22:41:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('e267788f69914037bf003d2a33211c61','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:26:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/delete','GET','id=14',''),('e26e67dba51142eea526ba8a5e7320ed','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-16 09:48:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=首页广告&id=&category.id=5430fe2ede6f4b6191d79ce9a6e6e471',''),('e27a3addcd2e4eb599f8323552aa5df9','1','系统登录','1','2015-11-15 10:22:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447554167227',''),('e2805bc2608244e686909d3d35ede67d','1','系统登录','1','2015-11-12 15:15:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447312523945',''),('e28d7889dc91417f9f86ab0d371e1ea7','1','内容管理-内容管理-内容发布-链接模型-修改','1','2015-11-16 14:06:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/delete','GET','id=1&categoryId=19',''),('e2b36a64fc05489ca146f28a2ba3144f','1','系统登录','1','2015-11-12 20:10:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447329899436',''),('e2c82a9a3cd44158bf1039089de04827','1','内容管理-内容管理-内容发布','1','2015-11-13 18:16:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_27',''),('e2d506253c98480bbddff47166969211','1','系统登录','1','2015-11-14 18:19:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447496377803',''),('e2ff2e31527f4dda82a8b4b5036e5e30','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-12 18:09:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','',''),('e32ec48997ee4126b55004dac4185c28','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:37:19','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('e33819c60f7f45c48d004e281d9d008c','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 17:18:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('e352b087eea64d78933c0587aa2eb213','1','内容管理-内容管理','1','2015-11-16 14:48:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('e3547f13fa56473d94b94283923f0565','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:18:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('e36806e8166c4086809d793470f30292','1','内容管理-栏目设置-栏目管理','1','2015-11-12 18:05:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_13',''),('e36af2a6fb934121b4b980174c07d973','1','系统登录','1','2015-10-30 15:41:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446190865223',''),('e36d25317b1b4224b0ab43ff984c6c12','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-16 14:52:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=b5c2a87abda84100b01f6f52e5412ade',''),('e372b918bcab4ac396d2178ca0c69d30','1','系统登录','1','2015-10-30 16:41:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446194479894',''),('e373e27ffa424d0793a704fb5f58d7e2','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:35:24','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','',''),('e3a3133cb96a4cb29d05d90ae886bf8f','1','内容管理-内容管理-内容发布-文章模型','1','2015-10-30 09:47:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=4',''),('e3a79e4debff404f9666f28eb07d4a49','1','内容管理-内容管理','1','2015-11-02 18:24:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('e3bb5463e5cb43509f9949b1fc86724f','1','内容管理-栏目设置-站点设置','1','2015-11-19 17:01:26','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_3',''),('e3be26a68b344401987d20608ce1f255','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 11:14:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('e3f7d57bf9664c558558fdc885a9324e','1','内容管理-内容管理-内容发布-文章模型-修改','1','2015-12-01 11:07:14','125.40.16.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/save','POST','id=&category.id=d8479d39b68b43c098719741e7ea17f2&category.name=学术天地&locale=zh_CN&title=测试&color=&link=&keywords=&weight=0&weightDate=&description=&image=&attachment=&articleData.content=\r\n	地方\r\n&articleData.copyfrom=&articleData.relation=&articleData.allowComment=0&_posidList=on&createDate=&delFlag=0&customContentView=&viewConfig=',''),('e4190d2f68f9487abd7f616fe957a8e4','1','内容管理-内容管理','1','2015-10-30 08:41:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('e4292f14cb6d42cf8defc5312b5e9637','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:33:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=18&office.id=5&office.name=技术部&parent.id=1&parent.name=顶级栏目&module=link&name=友情链接&image=&href=&target=&description=&keywords=&sort=90&inMenu=0&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('e4316242f58f4eee9ede0bad3edc9dde','1','内容管理-栏目设置-首页设置','1','2015-11-14 20:43:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_27',''),('e440766f188b404e8978cb32a94a00c1','1','系统设置-机构用户-用户管理-查看','1','2015-10-31 16:36:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/list','GET','',''),('e47d0318ac724f20b96146a13bb9411a','1','系统登录','1','2015-10-30 20:14:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446207262615',''),('e482d215d96a44c19926f03a95cf1b20','1','内容管理-栏目设置-栏目管理','1','2015-11-16 13:35:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','locale=zh',''),('e485ed37fee547149c7c5805962d0b5e','1','内容管理-栏目设置-栏目管理','1','2015-11-12 14:09:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_21',''),('e48b868644014ecabf27ec436076e25d','1','系统登录','1','2015-10-31 17:06:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446282379590',''),('e4fee9357cde43d498f49d0e3cc37134','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 20:44:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','',''),('e500fa02bf1840e49ecaa5d5adee6610','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:43:24','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','',''),('e52632c3b7aa4ce58442d2e450740a65','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 14:26:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=86a205ff69094fb1b089898d71243208',''),('e532c5e046d44f1faf9e18608f9666af','1','系统设置-系统设置-菜单管理','1','2015-11-19 10:19:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/','GET','tabPageId=jerichotabiframe_9',''),('e5495dd1b2644be6b233cb78785f3cda','1','内容管理-内容管理','1','2015-11-13 10:07:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('e576d1407db34f79a7860339d0fc633c','1','内容管理-内容管理','1','2015-11-16 10:29:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('e58df0e230fa4e44bea0713adf940be4','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:26:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=12',''),('e59242561a5e4de2bd7207ab99b74b14','1','系统登录','1','2015-10-31 16:56:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446281767040',''),('e59a19bff5fd4c8f98bcc1c59b4c7cb4','1','我的面板-个人信息-个人信息','1','2015-11-21 19:07:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','',''),('e59e3976edba440c93a950e49f997bac','1','系统设置-机构用户-用户管理-查看','1','2015-11-19 13:40:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/form','GET','id=2',''),('e5a43b2dd5b7471892d2822ed83771cb','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 23:10:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('e5aaf9d8858b4c12aadb682cdb0d8f91','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-13 13:45:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=633baafb527448eeb27e12252205be23&office.id=1&office.name=山东省总公司&parent.id=1&parent.name=顶级栏目&module=article&locale=en&name=英文顶级栏目&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=0&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('e5b6d32d67bd4a278fe58b7a921e9721','1','系统设置-机构用户-用户管理-查看','1','2015-11-19 16:41:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/list','GET','',''),('e5c9d4aca13e4dc7b6bd53ce8011763f','1','系统登录','1','2015-11-13 18:11:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_22',''),('e5ef2b0c56ef462ab4369d1b41390edb','1','系统设置-机构用户-用户管理','1','2015-11-13 21:41:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/index','GET','tabPageId=jerichotabiframe_10',''),('e61864def6f14882af6a4c643d785abd','1','系统登录','1','2015-11-15 13:44:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447566262934',''),('e626f3293a974ebab91e43e65400bd2b','1','内容管理-栏目设置-站点设置-查看','1','2015-11-03 21:19:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/site/form','GET','id=1',''),('e63a0951749c4265bc8db7dd3401d5f0','1','系统设置-机构用户-用户管理-查看','1','2015-11-19 10:19:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/list','GET','',''),('e66df1ca30c24268a25025edce4aec4f','1','内容管理-内容管理-内容发布','1','2015-11-02 16:24:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_5',''),('e66fa397942d4493b617ebdd45f6a302','1','内容管理-栏目设置-栏目管理','1','2015-11-17 16:43:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('e67340c7049a4115b2c063dea911d880','1','我的面板-个人信息-个人信息','1','2015-11-19 16:54:06','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('e6747eac05f348dbb880651f4005146c','1','我的面板-个人信息-个人信息','1','2015-11-19 16:34:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('e692e96face146c4b23ad7c025004562','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-26 00:23:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','id=3',''),('e69f328027a547ad959d2a74df376d1f','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 18:16:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('e6a028e48a3642f7a5803047f90e5ee5','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:18:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('e6a631ab6646486194bb4e032e04f105','1','系统设置-系统设置-字典管理','1','2015-11-12 11:22:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/','GET','repage=&type=locale',''),('e6aab9aa6184424a9a047711de1dd813','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:16:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=1,2,3,',''),('e6ae0681203544c58eacb3ed1b0fb286','1','系统登录','1','2015-11-14 22:49:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447512545378',''),('e6b1ad8946604a8f9e9dfc218ac00fd9','1','系统登录','1','2015-11-16 11:19:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447643305505',''),('e6e5e8d6bd914c0e84c26726b86b8044','1','系统登录','1','2015-11-14 22:43:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447512185374',''),('e6ee2e9f372545728a57a94b06d8fd7a','1','内容管理-栏目设置-首页设置','1','2015-11-14 20:27:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_24',''),('e6f8e6d5b41b4625b205dd2e71bbc9eb','1','内容管理-内容管理-内容发布-链接模型','1','2015-11-16 14:06:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/','GET','repage=&category.id=19',''),('e6fa900498c34410940d4cf3af3b4652','1','内容管理-内容管理-校友管理','1','2015-11-25 22:44:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/schoolmate/list','GET','tabPageId=jerichotabiframe_4',''),('e72175933aa74b32bc1df154c046595a','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:25:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=11',''),('e72469b1d9614fb1b5b5e1ba415fbfd9','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-19 10:20:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=e4d0a319399042b0a69dc3aaffda47fe&office.id=3&office.name=综合部&parent.id=501a3a2c83c642f0b78109d68a63b304&parent.name=校友动态&module=article&locale=zh_CN&name=校友分布&image=&href=/test&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('e72c53a499254eb68cb768bd2ac6cd6c','1','内容管理-内容管理-内容发布','1','2015-11-13 18:12:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_24',''),('e72f610c9ef7467ea9987fb3bf105e1a','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:17:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=关于我们&id=&category.id=2',''),('e73be2d90a51480ab79797fc96fdaf37','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-13 13:50:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=633baafb527448eeb27e12252205be23',''),('e75c884696e54228b6c12ebf70a51e42','1','内容管理-内容管理-内容发布-链接模型-查看','1','2015-11-16 14:05:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/form','GET','id=5',''),('e765ddc73f3342698dd605c8e09fd511','1','系统登录','1','2015-10-30 09:14:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446167332006',''),('e776d560baf24a98b597c59f4f739b87','1','我的面板-个人信息-个人信息','1','2015-12-01 10:32:51','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('e7875f40298b4cddb0fed8d298c7440e','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-05 14:58:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/findByIds','GET','ids=1,2,3,',''),('e7a6f55ad41f44c1b0def3e4268249d3','1','系统登录','1','2015-11-03 23:06:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446563161228',''),('e812da4092b443068b251fc71bf9e6fc','1','系统登录','1','2015-11-12 18:59:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a','GET','',''),('e827db108cb24fe5a91675e9a61c8160','1','内容管理-内容管理-校友管理','1','2015-11-25 23:04:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/schoolmate/list','GET','tabPageId=jerichotabiframe_11',''),('e83b0ef03e674b9c8a45f638d2a55735','1','系统登录','1','2015-10-31 21:38:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446298713193',''),('e83bbd86a30c4e48bd98484989c0ee88','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 14:36:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','parent.id=504027b6bc854f798d2083f847e0b780',''),('e845532c3d6f4fae9f52db98f45163a0','1','系统登录','1','2015-10-30 17:11:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446196285856',''),('e855203515894f379cb4aa733a95a93a','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 13:55:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=7',''),('e8601550e1fc402980b64885d7a88cf6','1','内容管理-栏目设置-栏目管理-修改','1','2015-12-01 10:46:20','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/save','POST','id=&office.id=1&office.name=大连外国语大学汉学院&parent.id=e6c0949faa5b49f79169585b7870ea6e&parent.name=学生会活动&module=&locale=zh_CN&name=活动公告&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('e884e934ad7f49d68cdc7d9dea486ff4','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:48:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=27',''),('e886e684eb4149a1b3968312036c3044','1','内容管理-栏目设置-首页设置','1','2015-11-15 09:11:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','',''),('e8982b4582124c87b01fabb0c877d4bf','1','内容管理-内容管理-内容发布','1','2015-11-02 18:14:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('e8dbc400eb714837be2c85dfbb496bd3','1','在线办公-通知通告-我的通告','1','2015-10-30 10:23:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_8',''),('e90265b2aeb84f70a2144d56c79180aa','1','系统登录','1','2015-11-16 11:19:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447643546500',''),('e9062eb83b784f4aa44f7e112f2b43a7','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-16 14:52:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','repage=&category.id=00ba6d29cbb04d5f9e396c767ffad1b7',''),('e9259bddaa9b4ea7bb3573938516e4db','1','系统设置-系统设置-角色管理','1','2015-11-19 16:33:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/role/','GET','repage=',''),('e926186a6b924ff082f1c9e826ccf991','1','系统设置-机构用户-用户管理-查看','1','2015-11-19 17:00:57','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/list','GET','',''),('e930c90cb1fa42e89bb03ce0b19c97cb','1','系统设置-机构用户-区域管理','1','2015-11-19 16:37:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/area/','GET','',''),('e9311368d0c1407a816d1ca94e81d59f','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:15:10','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('e93b79dd719748bbaa72c4485716114d','1','系统登录','1','2015-11-13 13:34:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447392865050',''),('e93d6700913f4b92b3f890e7fe32c617','1','系统登录','1','2015-11-14 21:27:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447507642546',''),('e946a6f8b81e401982e5e9cfee1e53e0','1','内容管理-内容管理-内容发布','1','2015-11-02 22:34:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('e95245c769a54480bfae992910b88f45','1','内容管理-内容管理','1','2015-11-03 21:02:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('e96a3995ace84cd7a4bae93617c20e2b','1','内容管理-栏目设置-栏目管理-修改','1','2015-12-01 10:47:13','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/save','POST','id=&office.id=1&office.name=大连外国语大学汉学院&parent.id=e6c0949faa5b49f79169585b7870ea6e&parent.name=学生会活动&module=&locale=zh_CN&name=活动报名&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('e9738a8e66c849c582b38b41dff2197a','1','内容管理-内容管理-内容发布-文章模型','1','2015-12-01 10:14:50','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/article/','GET','category.id=501a3a2c83c642f0b78109d68a63b304',''),('e98c747a675b4078a98b76d5ee6ea2f7','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-25 22:50:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=',''),('e9adacc3e10e40c0932e1e3fc264008c','1','系统登录','1','2015-11-16 17:37:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447666654042',''),('e9d3bfbea7c64017957f35fdbf987185','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:23:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=48d3464824c04fd3b397317d45d9fd4e',''),('e9d867e577914305acfe99609b6ac48a','1','内容管理-栏目设置-栏目管理','1','2015-11-06 10:26:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('e9db63dae6d9446b901a6908f762fa1a','1','系统登录','1','2015-11-14 20:26:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447503972691',''),('e9dce2ce366a437985f86845f2f6cd18','1','内容管理-栏目设置-栏目管理','1','2015-11-06 10:26:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('e9f032580f444c5fa21a663048760967','1','内容管理-栏目设置-首页设置','1','2015-11-14 22:17:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_6',''),('ea07e346da7d46e891829debb977a35f','1','内容管理-栏目设置-栏目管理','1','2015-11-08 12:13:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('ea0aea507f654b96b95c51ad707e2a9a','1','内容管理-内容管理-内容发布','1','2015-12-01 10:21:35','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('ea0bb1028476486b81d3103d5c8e5fcc','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:44:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=&office.id=3&office.name=综合部&parent.id=2f7362c39b44404ab9a9ba71508becaa&parent.name=考试信息&module=article&name=《国际汉语教师证书》考试&image=&href=&target=&description=&keywords=&sort=20&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('ea0c3616208e43cabda54e7740fa7d1c','1','系统设置-机构用户-用户管理-查看','1','2015-11-02 16:20:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/list','GET','',''),('ea0f6892e7e9475ca3f13fdc9db2c3e5','1','内容管理-内容管理','1','2015-11-16 11:41:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('ea3a3596a9c34f949c1c75a9429f43e9','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-12 14:11:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','',''),('ea404152fe7b498abb33b3848d5dbd13','1','系统登录','1','2015-11-12 20:22:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447330625919',''),('ea709a8b95e2467295b1bb2ef4d23c5a','1','内容管理-内容管理-内容发布-文章模型','1','2015-12-01 10:11:41','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/article/','GET','category.id=8b0f959bf25e42b8af02a251f00ee55e',''),('ea758d14f56940f79009710b5dde67b3','1','系统登录','1','2015-11-08 16:37:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446971822610',''),('ea8fb56e8ae84eae8a34ef4779c5e021','1','内容管理-内容管理-校友管理-查看','1','2015-11-25 23:29:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/schoolmate/list/','GET','repage=',''),('ea9904993b90465cb1764d73b1f1a06f','1','内容管理-内容管理-内容发布','1','2015-12-01 10:34:10','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('eab5c7a514a44852a583b7ee62dded49','1','系统设置-机构用户-用户管理-查看','1','2015-11-26 00:25:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/list','GET','',''),('eaeb327c66514f06b600adf033f9d01d','1','内容管理-栏目设置-站点设置-修改','1','2015-11-16 17:40:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/save','POST','id=1&name=默认站点&title=大连外国语大学汉学院&sort=1&locale=zh&logo=/userfiles/1/images/cms/site/2015/11/201511091305sd15.png&description=描述&keywords=关键字&homeAD=5430fe2ede6f4b6191d79ce9a6e6e471&_homeAD=首页广告&row1col1=605de15fc58b4502bb9e5151b19084a0&_row1col1=学院动态&row1col2=11&_row1col2=本科教育&row1col3=ccb1f0466b5645f4911cd6da9b809b62&_row1col3=奖学金&row2col1=68a2085909e446cc894d9f23297ef665&_row2col1=通知公告&row2col2=501a3a2c83c642f0b78109d68a63b304&_row2col2=校友动态&row2col3=8b0f959bf25e42b8af02a251f00ee55e&_row2col3=校园生活&row3col1=012010c319b54b61878a951939e1a9ca&_row3col1=第二课堂&row3col2=504027b6bc854f798d2083f847e0b780&_row3col2=留学生管理&row3col3=2f7362c39b44404ab9a9ba71508becaa&_row3col3=考试信息&aol=http://baidu.com&download=5&_download=学院领导&email=g.zw@asvcloud.com&link=18&_link=友情链接&qrcodecontents=大连外国语大学汉学院中文网站二维码测试&copyright=Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548&customIndexView=&domain=/z',''),('eb1535a60cd84b8786e4556c315935df','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:31:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=&office.id=3&office.name=综合部&parent.id=6&parent.name=国际教育&module=&name=研究生教育&image=&href=&target=&description=&keywords=&sort=50&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('eb168514f6d54d389917d8c71dd064ab','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-10-30 10:05:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','category.name=网站简介&id=&category.id=3',''),('eb2195855240413496ae8fcc0da04251','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-13 13:45:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=633baafb527448eeb27e12252205be23',''),('eb2c1b48772e43eba159ad8068c9f4f3','1','内容管理-内容管理-内容发布','1','2015-11-02 17:13:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('eb3c7ffb379440aeb938e8ff29fc29cd','1','内容管理-栏目设置-栏目管理-修改','1','2015-12-01 10:40:58','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/save','POST','id=&office.id=1&office.name=大连外国语大学汉学院&parent.id=012010c319b54b61878a951939e1a9ca&parent.name=第二课堂&module=&locale=zh_CN&name=学术天地&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('eb3f710bb0534ae387cae0017745a60b','1','内容管理-内容管理','1','2015-11-12 11:31:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('eb41f720eec347078b16ca71a02d8493','1','系统设置-系统设置-菜单管理-修改','1','2015-11-25 21:34:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/save','POST','id=&parent.id=7489e53f7dd24783971afbf013f12b2d&parent.name=校友管理&name=修改&href=&target=&icon=&sort=20&isShow=0&permission=cms:schoolmate:edit&remarks=',''),('eb499d7a8938461d97b67b83337a1729','1','内容管理-栏目设置-栏目管理','1','2015-11-12 11:33:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_8',''),('eb5a547e87434b3bb417d8be8aedd52c','1','我的面板-个人信息-个人信息','1','2015-11-02 18:28:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('eb723354081b43dea97489380b3729c0','1','内容管理-内容管理','1','2015-11-02 18:11:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('eba63743d336451a86e25971f99c7915','1','内容管理-内容管理-校友管理','1','2015-11-25 21:36:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/schoolmate/list','GET','tabPageId=jerichotabiframe_2',''),('ebbf8a92327645f4b8d81778856f4ddc','1','内容管理-栏目设置-栏目管理','1','2015-11-13 11:44:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','name=en',''),('ebe13b9015624a8580b064f46b947f7e','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:41:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=&office.id=3&office.name=综合部&parent.id=ce351667d5e7410c9247ae1e6e2a18c3&parent.name=国际招生&module=article&name= 短期进修申请&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('ebe630f3b9494021bf7a5f95dab641bd','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 18:24:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('ebee53bf50664224b488cba0e858f029','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-16 09:50:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','repage=&category.id=5430fe2ede6f4b6191d79ce9a6e6e471',''),('ebfd483ffc5b427b966b443b821b91b0','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 22:23:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','id=1',''),('ec1bfc57e365447a906033df2c1c6a81','1','内容管理-内容管理','1','2015-11-15 20:27:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none/','GET','category.id=24',''),('ec67dcb531e54ca4bdc6e1710ad37306','1','内容管理-栏目设置-栏目管理','1','2015-11-16 10:52:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('ec695e965c864f53837166b8a7790706','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:26:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('ec8432c3576d49be9bae3e13125749e7','1','系统登录','1','2015-11-06 16:55:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446800157868',''),('ec958316b88b4dfb9f0d875472a73f2f','1','系统登录','1','2015-11-12 20:10:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447329959437',''),('ecf57072855a43a4816c50cc40527354','1','系统登录','1','2015-11-03 20:54:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a','GET','',''),('ecf5b494152445ae8221fe5bc6b78ab9','1','内容管理-栏目设置-栏目管理','1','2015-11-12 14:13:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_22',''),('ed016c70777740ba9ffe0725f8c483cc','1','系统设置-机构用户-用户管理-查看','1','2015-11-02 15:43:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/list','GET','',''),('ed172b2950304bb49897613706071844','1','系统登录','1','2015-11-12 21:00:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447333156947',''),('ed19f7a741cf4b2d8114e51b63b9599a','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 23:10:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('ed232f4b98f4459f849431e1d5366e5e','1','系统设置-机构用户-机构管理-修改','1','2015-11-19 16:41:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/office/save','POST','id=13&parent.id=12&parent.name=部门一&area.id=4&area.name=西岗区&name=领导&code=201001&type=2&grade=3&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('ed2f47c2b84144eeb43a5a9e036a7af0','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-12 11:33:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','',''),('ed41ecebee0f4c34afa34bb18a0ebc4c','1','系统登录','1','2015-11-03 21:59:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446559181319',''),('ed48b589f6674504b1ee6a07613562ec','1','内容管理-栏目设置-栏目管理','1','2015-11-06 10:32:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('ed4916d735f94cd4a50f23f4f556e20f','1','内容管理-内容管理-内容发布-链接模型-修改','1','2015-11-16 14:07:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/delete','GET','id=11&categoryId=23',''),('ed4d02e2cc4c400fbc5a29755287b640','1','内容管理-栏目设置-栏目管理','1','2015-11-13 10:09:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('edaf527d9153464387ee8fc5001e7ff4','1','内容管理-内容管理','1','2015-11-25 23:20:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('edc9675758404275be4084fa5f823f06','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:28:06','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','',''),('edec7a6c97d5438e9615d8a0e28d9315','1','我的面板-个人信息-个人信息','1','2015-12-01 10:26:07','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('eded80c5dac1463db297ec7524a1c2ff','1','我的面板-个人信息-个人信息','1','2015-11-02 23:22:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ee05bfc120cb423f84cfaddfa13ce53b','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 17:13:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('ee091b2846464541a0719177f10f22aa','1','系统登录','1','2015-12-01 11:07:51','125.40.16.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a','GET','',''),('ee18f9cc422c4412bad972b2e422c02e','1','系统登录','1','2015-10-30 09:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446169859916',''),('ee1f5c06be554deabdbf90c6ca9a33de','1','系统登录','1','2015-11-03 21:25:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446557130361',''),('ee2af7812b4e477984cb4a216a949236','1','内容管理-内容管理','1','2015-11-02 18:16:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('ee3c0d306df84dfc8dd97b5e111798d1','1','系统设置-机构用户-区域管理-修改','1','2015-11-19 16:37:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/area/save','POST','id=2&parent.id=1&parent.name=中国&name=辽宁省&code=110000&type=2&remarks=',''),('ee59193e7b98409997b92221d6941b1f','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 22:23:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('ee76ebee935443799bf45d060e7f4489','1','系统设置-机构用户-用户管理','1','2015-10-30 09:47:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/index','GET','tabPageId=jerichotabiframe_6',''),('ee976643eed842e4ac452276d25d9921','1','内容管理-内容管理-内容发布','1','2015-11-02 17:14:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('eea3b777134a45229455ecb246d6e100','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-19 10:51:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=e4d0a319399042b0a69dc3aaffda47fe',''),('eebf049e08da4f1bab8164c78045f28b','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:42:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=b7cb45513c8c4f249aa60b9699b0e0cd',''),('eed4b377a2b94ed2bf9ff9488971b41c','1','系统登录','1','2015-10-30 17:01:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446195682869',''),('eef8fd4e4be8420f92241431a556bbfb','1','我的面板-个人信息-个人信息','1','2015-11-19 16:32:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ef0d671096944a94a93b1f8b9119e123','1','系统登录','1','2015-11-03 21:39:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446557973350',''),('ef1278f783eb4698946b9d6de058f1e7','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 19:24:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','',''),('ef20dfd37cbc4e009f9a4a1e22b65a28','1','系统登录','1','2015-11-16 10:48:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447642103532',''),('ef5076b2803a4f63aefe3fdaa4648b26','1','系统登录','1','2015-11-13 15:06:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447398390001',''),('ef5a6974d44a4be59e088905a43838a8','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:26:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('ef731cad5ca1490eb50a997a15bfc954','1','系统登录','1','2015-11-12 15:35:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447313754843',''),('ef79c9cc9f31493e8165f0d5437ca775','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:41:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','parent.id=ce351667d5e7410c9247ae1e6e2a18c3',''),('ef9eef4d43c441dba91defe52af55485','1','系统设置-机构用户-用户管理-查看','1','2015-11-20 12:11:53','59.46.218.5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/sys/user/list','GET','',''),('ef9fbbcf9f544394961d7c04d79f1c18','1','内容管理-栏目设置-栏目管理-查看','1','2015-12-01 10:44:26','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/form','GET','parent.id=aebbed30476040c38bf017eb5b4c7017',''),('efacd1580c9c436d9e1bc1ed79e1d71e','1','系统登录','1','2015-11-15 10:12:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447553563234',''),('efbee600df244cc18c9f6c2e6d432d30','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-15 09:14:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('efc25eead1524deebbc75cc400e66b47','1','内容管理-内容管理-内容发布','1','2015-11-05 14:52:08','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('efff4148078c4f968ead88e7677d2e19','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:15:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=关于我们&id=&category.id=2',''),('f03c534bc96548838884ae4bd2751243','1','我的面板-个人信息-个人信息','1','2015-12-01 10:49:52','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f0729d67d15045aa9ea38b69bf5bc778','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 15:17:56','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('f098c85b908d46f7a332813804d7dfa1','1','系统设置-系统设置-字典管理','1','2015-11-12 11:27:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/','GET','repage=&type=locale',''),('f0a7cc79388e487285e770443904e043','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 14:04:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=19',''),('f0bb983626444da0894fe98b7b2a6000','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:25:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=关于我们&id=&category.id=2',''),('f0bc148ccd1643d187db47840ddd6ecb','1','我的面板-个人信息-个人信息','1','2015-11-03 21:14:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f0c22e5215ac4750b203a5faa1d42b75','1','系统登录','1','2015-11-05 18:48:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446720514045',''),('f0db19f3afe44078aaa2258031c51cf0','2','内容管理-栏目设置-首页设置','1','2015-11-14 22:19:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_7','org.apache.jasper.JasperException: An exception occurred processing JSP page /WEB-INF/views/modules/cms/siteList.jsp at line 37\n\n34: 				<td><a href=\"${ctx}/cms/site/form?id=${site.id}\" title=\"${site.name}\">${fns:abbr(site.name,40)}</a></td>\n35: 				<td>${fns:abbr(site.title,40)}</td>\n36: 				<td>${fns:abbr(site.sort,40)}</td>\n37: 				<td>${fns:abbr(site.locale_zh,40)}</td>\n38: 				<td>${fns:abbr(site.description,40)}</td>\n39: 				<td>${fns:abbr(site.keywords,40)}</td>\n40: 				<td>${site.theme}</td>\n\n\nStacktrace:\n	at org.apache.jasper.servlet.JspServletWrapper.handleJspException(JspServletWrapper.java:574)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:476)\n	at org.apache.jasper.servlet.JspServlet.serviceJspFile(JspServlet.java:396)\n	at org.apache.jasper.servlet.JspServlet.service(JspServlet.java:340)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:291)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.catalina.core.ApplicationDispatcher.invoke(ApplicationDispatcher.java:720)\n	at org.apache.catalina.core.ApplicationDispatcher.processRequest(ApplicationDispatcher.java:466)\n	at org.apache.catalina.core.ApplicationDispatcher.doForward(ApplicationDispatcher.java:391)\n	at org.apache.catalina.core.ApplicationDispatcher.forward(ApplicationDispatcher.java:318)\n	at org.springframework.web.servlet.view.InternalResourceView.renderMergedOutputModel(InternalResourceView.java:168)\n	at org.springframework.web.servlet.view.AbstractView.render(AbstractView.java:303)\n	at org.springframework.web.servlet.DispatcherServlet.render(DispatcherServlet.java:1244)\n	at org.springframework.web.servlet.DispatcherServlet.processDispatchResult(DispatcherServlet.java:1027)\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:971)\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:893)\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:970)\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:861)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:846)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:291)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.obtainContent(SiteMeshFilter.java:129)\n	at com.opensymphony.sitemesh.webapp.SiteMeshFilter.doFilter(SiteMeshFilter.java:77)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter$1.call(AbstractShiroFilter.java:365)\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:346)\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:262)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:85)\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:239)\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:206)\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:217)\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:142)\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:518)\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1091)\n	at org.apache.coyote.AbstractProtocol$AbstractConnectionHandler.process(AbstractProtocol.java:673)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1500)\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.run(NioEndpoint.java:1456)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\n	at java.lang.Thread.run(Thread.java:745)\nCaused by: javax.el.ELException: Problems calling function \'fns:abbr\'\n	at org.apache.el.parser.AstFunction.getValue(AstFunction.java:188)\n	at org.apache.el.ValueExpressionImpl.getValue(ValueExpressionImpl.java:184)\n	at org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate(PageContextImpl.java:943)\n	at org.apache.jsp.WEB_002dINF.views.modules.cms.siteList_jsp._jspx_meth_c_005fforEach_005f0(siteList_jsp.java:567)\n	at org.apache.jsp.WEB_002dINF.views.modules.cms.siteList_jsp._jspService(siteList_jsp.java:218)\n	at org.apache.jasper.runtime.HttpJspBase.service(HttpJspBase.java:70)\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\n	at org.apache.jasper.servlet.JspServletWrapper.service(JspServletWrapper.java:438)\n	... 72 more\nCaused by: javax.el.PropertyNotFoundException: Property \'locale_zh\' not found on type com.thinkgem.jeesite.modules.cms.entity.Site\n	at javax.el.BeanELResolver$BeanProperties.get(BeanELResolver.java:268)\n	at javax.el.BeanELResolver$BeanProperties.access$300(BeanELResolver.java:221)\n	at javax.el.BeanELResolver.property(BeanELResolver.java:355)\n	at javax.el.BeanELResolver.getValue(BeanELResolver.java:95)\n	at org.apache.jasper.el.JasperELResolver.getValue(JasperELResolver.java:110)\n	at org.apache.el.parser.AstValue.getValue(AstValue.java:169)\n	at org.apache.el.parser.AstFunction.getValue(AstFunction.java:183)\n	... 79 more\n'),('f0de99ddd24b402e84ecb74baf666761','1','系统设置-系统设置-字典管理-查看','1','2015-11-12 11:28:28','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/form','GET','sort=10',''),('f10ab22d51b24809a0c613cef4776186','1','系统设置-机构用户-机构管理-查看','1','2015-11-19 16:41:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/office/form','GET','id=13',''),('f1103ce885954e1c97de2d7a24ddfc9b','1','系统登录','1','2015-10-30 17:53:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446198751805',''),('f11e7ce1c3094b7c8a8656be5eb805d8','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-13 13:52:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/delete','GET','id=633baafb527448eeb27e12252205be23',''),('f11fc871e2874d0891a3185a2db90b61','1','内容管理-内容管理-内容发布-文章模型-修改','1','2015-11-02 22:35:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/save','POST','id=1&category.id=3&category.name=网站简介&title=文章标题标题标题标题&color=green&link=&keywords=关键字1,关键字2&weight=0&weightDate=&description=&image=&files=/userfiles/1/files/cms/article/2015/11/Infinity_Connect_Web_App_Customization_Guide_v9_a.pdf&articleData.content=\r\n	文章内容内容内容内容\r\n&articleData.copyfrom=来源&articleData.relation=1,2,3,&articleData.allowComment=1&_posidList=on&createDate=2013-05-27 08:00:00&delFlag=0&customContentView=&viewConfig=',''),('f14014c51a6a4988ab7bac0c8de66e77','1','系统登录','1','2015-10-30 09:14:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446167692002',''),('f1935c6163df4817bc3f76fca1bf51e7','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-10-30 08:42:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','category.name=网站简介&id=&category.id=3',''),('f195879749124a688b2ea109c25c09ad','1','内容管理-栏目设置-栏目管理','1','2015-11-12 18:10:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_14',''),('f1ada16690be4268946cec8ae167d2ae','1','内容管理-内容管理-内容发布-文章模型-修改','1','2015-11-02 23:15:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/save','POST','id=1&category.id=3&category.name=网站简介&title=文章标题标题标题标题a&color=green&link=&keywords=关键字1,关键字2&weight=0&weightDate=&description=&image=&attachment=/userfiles/1/files/cms/article/2015/11/Infinity_Connect_Web_App_Customization_Guide_v9_a.pdf&articleData.content=\r\n	文章内容内容内容内容\r\n&articleData.copyfrom=来源&articleData.relation=1,2,3,&articleData.allowComment=1&_posidList=on&createDate=2013-05-27 08:00:00&delFlag=0&customContentView=&viewConfig=',''),('f1bf0f6495da48bc88adf4e15746c573','1','系统设置-系统设置-字典管理','1','2015-11-19 13:58:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/','GET','tabPageId=jerichotabiframe_2',''),('f1c5f639288c429aaf25dae18480d0f0','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:02:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=&id=&category.id=',''),('f1c7fdf12f574d9db7d9519230bfd787','1','系统登录','1','2015-11-12 18:17:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447323233385',''),('f1d824c6157245ab8afc0fc888d2f2e4','1','系统登录','1','2015-11-13 14:05:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447394306054',''),('f1e64990fdab4592b73d03e94de53d09','1','内容管理-内容管理','1','2015-11-19 16:17:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('f1f1fb1cd08a4927ae740dff44b25fe9','1','内容管理-内容管理-内容发布','1','2015-11-17 11:45:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('f1fcd2a98a894f499315aafa8d8a7994','1','内容管理-栏目设置-栏目管理','1','2015-11-16 14:36:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('f1fd97224bd34325bd78a871bf7ee331','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-12 15:46:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=1&office.id=1&office.name=山东省总公司&parent.id=1&parent.name=顶级栏目&module=article&locale=en&name=testsdfdf&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('f21a2591ad4a4b77960f9787455edebf','1','内容管理-栏目设置-站点设置-查看','1','2015-11-03 20:58:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/site/form','GET','id=1',''),('f21bb16fe46348fab39f77f41f6f7d52','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:29:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=国际招生&id=&category.id=ce351667d5e7410c9247ae1e6e2a18c3',''),('f23a7c7f5964468dbba51d4039bc1e39','1','内容管理-栏目设置-站点设置-修改','1','2015-11-16 17:46:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/save','POST','id=1&name=默认站点&title=大连外国语大学汉学院&sort=1&locale=zh&logo=/userfiles/1/images/cms/site/2015/11/201511091305sd15.png&description=描述&keywords=关键字&homeAD=5430fe2ede6f4b6191d79ce9a6e6e471&_homeAD=首页广告&row1col1=605de15fc58b4502bb9e5151b19084a0&_row1col1=学院动态&row1col2=11&_row1col2=本科教育&row1col3=ccb1f0466b5645f4911cd6da9b809b62&_row1col3=奖学金&row2col1=68a2085909e446cc894d9f23297ef665&_row2col1=通知公告&row2col2=501a3a2c83c642f0b78109d68a63b304&_row2col2=校友动态&row2col3=8b0f959bf25e42b8af02a251f00ee55e&_row2col3=校园生活&row3col1=012010c319b54b61878a951939e1a9ca&_row3col1=第二课堂&row3col2=504027b6bc854f798d2083f847e0b780&_row3col2=留学生管理&row3col3=2f7362c39b44404ab9a9ba71508becaa&_row3col3=考试信息&aol=http://baidu.com&download=5&_download=学院领导&email=g.zw@asvcloud.com&link=18&_link=友情链接&qrcodecontents=大连外国语大学汉学院中文网站二维码测试&copyright=Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548&customIndexView=&domain=/z',''),('f2424f5e3db848a8b8df80c88ee98240','1','内容管理-栏目设置-栏目管理','1','2015-11-13 13:36:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('f248ed6d863849b0a5276bed18b35a4a','1','内容管理-内容管理','1','2015-10-30 22:49:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('f27e8a35ed774de29db2961c3eb2d044','1','我的面板-个人信息-个人信息','1','2015-11-12 20:12:43','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f28131b079d94ec491139cdbab35faba','1','系统登录','1','2015-11-19 11:57:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447905443895',''),('f28150c7613e4e749569eaab48c1a16f','1','内容管理-栏目设置-栏目管理','1','2015-10-30 23:24:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('f2b28e14ee934b979e0bb5a11ca2e96a','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 20:20:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','',''),('f2cca836202d40d78036077842db529f','1','系统登录','1','2015-11-16 11:19:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447643425502',''),('f2d455400e864ca2819734404f249581','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:50:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=&id=&category.id=',''),('f2d8a10e9c6a4ce8b1661e3772376395','1','内容管理-内容管理','1','2015-11-02 18:06:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('f2dd674b2ca54a679fac79f826f3d8cc','1','系统登录','1','2015-11-16 16:37:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447663022087',''),('f2de568ecfb64218b67567c7878d71dc','1','系统登录','1','2015-11-12 12:09:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447301389127',''),('f2e76beb030a4ae3a7f6a624d023a679','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-30 23:22:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=3',''),('f2eb42f40cad401082ec93850f46c763','1','内容管理-内容管理','1','2015-11-13 15:12:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('f2f971d273544a6ba911ca94817ab46d','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-26 00:25:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('f31e5836c7864e0d9940eb0c6c5d0334','1','系统登录','1','2015-11-02 19:48:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446464925986',''),('f355ca50dd264c4ba3b97efc5ab439db','1','内容管理-栏目设置-栏目管理','1','2015-12-01 11:49:43','125.40.16.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','locale=zh_CN',''),('f356b0ce526b42a9b54b9eab289b7722','1','系统设置-系统设置-字典管理','1','2015-11-12 11:20:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/','GET','',''),('f362fed184dc4640bee175efb54b8e10','1','内容管理-内容管理-内容发布','1','2015-11-02 18:03:11','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('f3760461213b4e8397118e3c05c7f7eb','1','我的面板-个人信息-个人信息','1','2015-10-30 09:08:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f398e73e9e56405ba39748c3845dabfb','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 14:58:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=',''),('f39d680a3ce64479b18ecd4efc39266e','1','内容管理-栏目设置-栏目管理','1','2015-11-13 11:46:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','locale=en',''),('f39f6b53de6a4385bd4b0c9dfca05f55','1','系统登录','1','2015-11-08 14:54:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446965685759',''),('f3bca2c8e8e64ae788918bae1092e3bb','1','内容管理-内容管理','1','2015-11-08 12:13:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('f3bd554a030b4dfca96965826859dc86','1','内容管理-内容管理','1','2015-11-13 14:58:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('f3be69458ce443b4b33db0dd3d47b470','1','系统设置-系统设置-字典管理-修改','1','2015-11-12 11:22:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/dict/save','POST','id=57451c87044b4a97a71ae1ab84f11d3a&value=en&label=英文&type=locale&description=英文&sort=2&remarks=',''),('f3d07c2c139b4e469eabed5c9cdd1c4b','1','系统设置-机构用户-区域管理-查看','1','2015-11-19 16:37:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/area/form','GET','id=4',''),('f403f4bae70541cfab25e9577fd36762','1','内容管理-栏目设置-首页设置','1','2015-11-15 09:10:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_8',''),('f40cdc722ada471691cbf1c3322c9639','1','我的面板-个人信息-个人信息','1','2015-10-30 09:19:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f432f1a923a541c2b80d7367a4751437','1','内容管理-栏目设置-站点设置-修改','1','2015-11-16 14:47:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/save','POST','id=1&name=默认站点&title=大连外国语大学汉学院&sort=1&locale=zh&logo=/userfiles/1/images/cms/site/2015/11/201511091305sd15.png&description=描述&keywords=关键字&homeAD=5430fe2ede6f4b6191d79ce9a6e6e471&_homeAD=首页广告&row1col1=605de15fc58b4502bb9e5151b19084a0&_row1col1=学院动态&row1col2=11&_row1col2=本科教育&row1col3=ccb1f0466b5645f4911cd6da9b809b62&_row1col3=奖学金&row2col1=605de15fc58b4502bb9e5151b19084a0&_row2col1=学院动态&row2col2=501a3a2c83c642f0b78109d68a63b304&_row2col2=校友动态&row2col3=18&_row2col3=友情链接&row3col1=012010c319b54b61878a951939e1a9ca&_row3col1=第二课堂&row3col2=c6bf3f6a996947ba9d0dcae0af740044&_row3col2=联系我们&row3col3=2f7362c39b44404ab9a9ba71508becaa&_row3col3=考试信息&aol=df&download=5&_download=学院领导&email=dfdf&link=18&_link=友情链接&qcode=adfdfd&copyright=Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548&customIndexView=&domain=/z',''),('f43501b65f70490bb8681a335d9147ef','1','内容管理-栏目设置-栏目管理','1','2015-11-11 09:31:09','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('f438f9138bda4344a86ad91c9da79c51','1','系统登录','1','2015-11-12 21:21:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447334476977',''),('f44b65a906824565bfb6953c3a6a046d','1','内容管理-栏目设置-栏目管理-修改','1','2015-12-01 10:32:01','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/save','POST','id=095976ad1f9a4ad29646b43ec8caefb7&office.id=3&office.name=综合部&parent.id=501a3a2c83c642f0b78109d68a63b304&parent.name=校友动态&module=&locale=zh_CN&name=优秀毕业生&image=&href=&target=&description=&keywords=&sort=20&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('f462c6f2f2df471a8c552e84041e9846','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 23:10:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/findByIds','GET','ids=1,2,3,',''),('f46923abe86f4a53ba583762e1cd1e48','1','内容管理-内容管理','1','2015-11-02 23:05:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('f4b2ad1131894162bd9f1864ba5ef351','1','内容管理-栏目设置-栏目管理','1','2015-11-13 21:33:46','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','locale=en',''),('f4d83f06cd3f4ab1821b9eff4bf76f6b','1','内容管理-内容管理','1','2015-11-13 12:01:24','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('f4df7604cad34cb482097fe7ce72b7a0','1','内容管理-栏目设置-栏目管理','1','2015-11-12 15:32:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('f4e04ef7a2594ee9aeeb283c3a5ff252','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 16:27:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','POST','pageNo=1&pageSize=30&category.id=3&category.name=网站简介&title=&delFlag=0',''),('f4f5b5ea00dc411a942a53c1c48c0912','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-15 20:27:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=24',''),('f4ff31a56b4e42d8a30306b4a80b3bfe','1','系统登录','1','2015-11-16 11:31:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447644266484',''),('f51c6a9f7d804a0c9a97a9f8979cbef6','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:44:47','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','',''),('f52b5caa64684534b11dadea23f904f2','1','系统登录','1','2015-11-14 20:13:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447503132679',''),('f584b02af699413eb44537a2492c7b26','1','系统登录','1','2015-11-13 16:18:37','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447402716827',''),('f5888595407e4cdd9935132ccc3d626e','1','系统登录','1','2015-11-02 15:51:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446450718303',''),('f5a10202499846fb8d50fe90b665ac14','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-17 10:27:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=67fe7ec3e37d435aafe750b399a96374',''),('f5b56848c9e64b3ab57e3c3e3f2f58ee','1','系统登录','1','2015-10-31 19:37:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446291452371',''),('f5c3019b8e2d48458e18ee601413cf23','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-16 14:35:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=&office.id=1&office.name=山东省总公司&parent.id=1&parent.name=顶级栏目&module=article&locale=zh&name=留学生管理&image=&href=&target=&description=&keywords=&sort=140&inMenu=0&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('f5c8de55e00146c48606052eed5abd5f','1','系统登录','1','2015-11-15 11:43:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447559000112',''),('f6003b4f70754b8db81e9bd14f6407ee','1','内容管理-栏目设置-站点设置-修改','1','2015-11-16 10:36:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/save','POST','id=1&name=默认站点&title=大连外国语大学汉学院&sort=1&locale=zh&logo=/userfiles/1/images/cms/site/2015/11/201511091305sd15.png&description=描述&keywords=关键字&homeAD=首页广告&_homeAD=首页广告&row1col1=3&_row1col1=走进大连&row1col2=11&_row1col2=本科教育&row1col3=ce351667d5e7410c9247ae1e6e2a18c3&_row1col3=国际招生&row2col1=3&_row2col1=走进大连&row2col2=501a3a2c83c642f0b78109d68a63b304&_row2col2=校友动态&row2col3=18&_row2col3=友情链接&row3col1=c6bf3f6a996947ba9d0dcae0af740044&_row3col1=联系我们&row3col2=c6bf3f6a996947ba9d0dcae0af740044&_row3col2=联系我们&row3col3=2f7362c39b44404ab9a9ba71508becaa&_row3col3=考试信息&aol=df&download=5&_download=学院领导&email=dfdf&link=18&_link=友情链接&qcode=adfdfd&copyright=Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548&customIndexView=&domain=/z',''),('f6569baa99cf4b7ea26628c2cc8c2fdf','1','系统设置-机构用户-用户管理-查看','1','2015-11-19 17:04:44','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/list','GET','',''),('f65a2728232843ddb9bdeed6240f99e7','1','我的面板-个人信息-个人信息','1','2015-11-08 12:13:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f65d6e2aabff424fab1b2de0cb5e5954','1','我的面板-个人信息-个人信息','1','2015-11-19 16:43:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','',''),('f66abd3b01734eefa6b553ac7ec06b7f','1','内容管理-内容管理-公共留言-查看','1','2015-11-19 10:16:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/guestbook/','GET','status=2&tabPageId=jerichotabiframe_2',''),('f66c93e339394d07b4bdf26015db5385','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 17:04:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('f67096ad76f6452abcb80b41c9736167','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-26 00:25:32','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','POST','pageNo=1&pageSize=30&category.id=3&category.name=走进大连&title=&delFlag=2',''),('f69b53c38ca9432f9d7123ba115d0a37','1','内容管理-栏目设置-栏目管理','1','2015-11-12 20:35:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('f6a5f2c928b64c808bf92f82de3e0f77','1','内容管理-内容管理-内容发布','1','2015-11-02 18:34:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('f6ac83eaefab44ea9f0ea438276f69eb','1','系统登录','1','2015-11-12 21:00:41','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447332976942',''),('f6cd73ffb96b428091ce9ef856ba0fd0','1','我的面板-个人信息-个人信息','1','2015-12-01 10:38:51','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f6f0fa1e8cb94d288019d67a361b77da','1','系统登录','1','2015-11-06 10:39:35','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446777575513',''),('f71ae6abf1c5439f8142e3d132b0303e','1','系统登录','1','2015-11-16 13:12:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447650736343',''),('f7206922984141bc9a0822c4453390db','1','系统登录','1','2015-11-15 15:05:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447571104826',''),('f732469832fa48c6a53e85719636ccaf','1','系统登录','1','2015-11-05 17:27:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446715674151',''),('f75173f0c18f4dcc895f444ea11a3b6f','1','系统登录','1','2015-11-14 16:37:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447490235933',''),('f7738f71a37044c0a4870ca551a98231','1','内容管理-内容管理','1','2015-11-13 12:00:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('f79b5d65e43b4168be7578665d1202a2','1','内容管理-内容管理-内容发布-链接模型-查看','1','2015-11-16 14:14:29','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/link/form','GET','id=32e6957dd91f43d6a964d89448eb5e3f',''),('f79dd3488d604537a0c3acb3382e3276','1','内容管理-内容管理-内容发布','1','2015-11-02 17:45:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('f7a666d9c1674f819e3c8b51e6845be1','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 22:27:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('f7b4472318c64d8ab6653cee37ae3b0f','1','系统登录','1','2015-10-30 20:54:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446209679561',''),('f7c1949c0da14d08b88f185a3706c626','1','内容管理-内容管理-内容发布','1','2015-11-02 18:11:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('f7f32a13f1b24bf88c17f6cea905460b','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-17 16:44:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=24',''),('f7f57189298740078088c7f130484563','1','内容管理-栏目设置-站点设置-查看','1','2015-11-13 21:35:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','id=2',''),('f81ad6be857e43a0b274799fb1e23366','1','系统登录','1','2015-10-30 09:40:58','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446169257921',''),('f85f22ffb8cf433ba8b6d4648a680900','1','内容管理-内容管理-内容发布','1','2015-11-13 18:07:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_18',''),('f867ecdbbaa84206ab1e848125197b57','1','内容管理-栏目设置-栏目管理','1','2015-11-13 16:13:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','POST','locale=en',''),('f873914618954b1ea289190013badfd9','1','我的面板-个人信息-个人信息','1','2015-11-02 23:24:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('f87acfc08f8a4a918adf69ccb0547aa4','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 18:26:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('f89ea64819d446cfa1ce29c325a0a8f9','1','在线办公-流程管理-模型管理','1','2015-11-26 00:24:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/act/model','GET','tabPageId=jerichotabiframe_9',''),('f8f561ad3d8841f5afc1d2579fb8ac95','1','内容管理-栏目设置-栏目管理','1','2015-11-16 15:00:27','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('f901f3c1ac4d45ce848a881e48b9b193','1','内容管理-栏目设置-首页设置','1','2015-11-14 19:34:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_7',''),('f91d46b6c6644a639178ded933b7cc58','1','系统登录','1','2015-10-31 21:18:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446297505224',''),('f9385b583d074416a8c04235de06f602','1','内容管理-栏目设置-栏目管理','1','2015-11-06 10:27:16','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','',''),('f968adda37cc4df8a42a79fd41271033','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 10:01:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','',''),('f96f60b4d8d745d88fee4c609b532c29','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 14:09:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','id=2',''),('f97bbf47ec2240748337abffba93249c','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 14:35:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','parent.id=504027b6bc854f798d2083f847e0b780',''),('f97e03dfd5e04c07a802352701c46a93','1','系统登录','1','2015-11-12 17:06:39','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447319198717',''),('f99b121579084dd2b48fe6b8b5c423b4','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-16 11:33:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=d21cbf96fb2a40f8acd48b9bcfeee654&office.id=1&office.name=山东省总公司&parent.id=ccb1f0466b5645f4911cd6da9b809b62&parent.name=奖学金&module=article&locale=zh&name=孔子学院奖学金&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('f9ce092401e44a0fac4d284aa73b34c1','1','内容管理-内容管理','1','2015-11-13 13:52:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('f9d2c999f7ef44c286bfd5cd9e5430b5','1','系统登录','1','2015-11-26 12:21:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a','GET','',''),('f9dca5bd82fc436eb27c7ac848cf4d54','1','系统登录','1','2015-11-12 11:48:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447300116156',''),('f9df940c75b643d8b963661b5b3f7cbd','1','内容管理-内容管理-内容发布','1','2015-12-01 11:49:36','125.40.16.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('f9e496a4faa540d49820b16621210660','1','内容管理-内容管理-内容发布','1','2015-11-02 23:10:22','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('fa12f9f5ac3d42ec9b695eeecfaade93','1','内容管理-栏目设置-栏目管理','1','2015-11-13 11:45:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_7',''),('fa16afa3d4794fa18b06ba577d416479','1','系统登录','1','2015-11-08 12:43:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446957824950',''),('fa1c9671696c4bf98ba9ee83e1471c13','1','系统登录','1','2015-11-16 14:21:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447654893247',''),('fa24f227399d42aeb9f27126b2a8b595','1','内容管理-栏目设置-栏目管理','1','2015-11-12 15:32:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('fa3bf1a27718408cb2b7651e9e2aa4b2','1','内容管理-栏目设置-栏目管理','1','2015-11-13 13:42:38','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('fa57973bb7df4c01b35e336b3e11419e','1','内容管理-内容管理','1','2015-11-11 09:31:06','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('fa5863fd69d04278b3430d18b52a276a','1','系统设置-系统设置-字典管理-修改','1','2015-11-22 15:14:51','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/dict/save','POST','id=&value=US&label=美国&type=country&description=美国&sort=2&remarks=',''),('fa5d6ba14f204959a5656b425746099b','1','系统设置-系统设置-菜单管理-查看','1','2015-11-13 21:41:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/form','GET','parent.id=32',''),('fa6b8e293e1c48868b38180a4e4bf26e','1','内容管理-内容管理','1','2015-11-02 18:31:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('fa751a25fa9d468788f6bc511086cc68','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 18:14:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('fa8576c152ad446392e31c8c79624139','1','系统登录','1','2015-11-08 14:44:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446965082778',''),('fa8a5324f5374a7fbee25562b2037b93','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 18:16:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=86a205ff69094fb1b089898d71243208',''),('faa29cb950444a15a36a310751a71759','1','内容管理-内容管理','1','2015-11-13 18:12:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('fabe05330aad4b2a85d3ab508bd95d51','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 14:19:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=86a205ff69094fb1b089898d71243208',''),('fae3c3d188c84aa08924aa498b4b258e','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 18:20:06','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=国内教育&id=&category.id=10',''),('fae592c014cb47319667b90e21c2876c','1','内容管理-栏目设置-栏目管理','1','2015-12-01 10:40:58','59.46.218.3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7','/a/cms/category/','GET','',''),('fafeb884d8a148ccb2979f4342b9a48b','1','内容管理-内容管理','1','2015-11-13 14:58:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('fb2f06ce62714852a729bf234e524711','1','内容管理-内容管理','1','2015-11-16 09:48:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('fb3165f44caf496093bd68da1ca76939','1','内容管理-内容管理','1','2015-11-19 13:40:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('fb56ad06a2a0433e81ffd6ef3e1d43d8','1','系统设置-机构用户-用户管理','1','2015-11-19 16:42:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/index','GET','',''),('fb643e36d0e34477ae6f1c7c4e0a6808','1','系统设置-机构用户-用户管理-查看','1','2015-11-02 16:20:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/form','GET','id=11',''),('fb690b85fdb34b08b312bd69f83c9b85','1','内容管理-内容管理','1','2015-11-02 23:03:34','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('fb6a20599f2b45c18e7a2442da36e6ba','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-16 15:16:57','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/save','POST','id=&office.id=1&office.name=山东省总公司&parent.id=8b0f959bf25e42b8af02a251f00ee55e&parent.name=校园生活&module=article&locale=zh&name=留学生医疗保障&image=&href=&target=&description=&keywords=&sort=50&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('fb747ad091e84f05a14b3cf6375fcb83','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-19 13:50:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('fb8a574c51224b0c9f0687f2e3c9f4f9','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 14:30:02','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=6',''),('fbb371ffce1d458d92bd1b1c0d5e8bcd','1','内容管理-内容管理','1','2015-11-13 18:13:53','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('fbc1595068e84c2e9872eab269cf95fa','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 13:54:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=7',''),('fbce1edf67574a6c99af13a9284e8048','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-26 00:25:33','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','POST','pageNo=1&pageSize=30&category.id=3&category.name=走进大连&title=&delFlag=2',''),('fbde7af089054e8bbdbebe3075505154','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-02 23:16:12','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/form','GET','id=1',''),('fbe1bfc9dde14d22983c1e30de7ef59e','1','内容管理-栏目设置-首页设置','1','2015-11-16 14:47:20','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','repage=',''),('fbea531bfcf34ac6868fc300976c6018','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-15 20:30:23','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=24',''),('fbfa19f63fb042e69aa86d00b8a0d98b','1','内容管理-内容管理','1','2015-11-16 09:41:13','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('fc05ea0afecc413ebe2d009069c0a75b','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-16 14:35:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','parent.id=504027b6bc854f798d2083f847e0b780',''),('fc09c3890c3144d9973d44d90f9aadf2','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 14:41:41','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=2',''),('fc1a6c281cf44558b6b4a113b2af6316','1','系统登录','1','2015-11-06 12:45:18','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446785118407',''),('fc36c921707c47a38f7b94f8e7bb29fd','1','系统登录','1','2015-11-06 13:47:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446788840991',''),('fc750bbba95e419f86e750225c5fcf0f','1','内容管理-栏目设置-首页设置','1','2015-11-14 17:29:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_2',''),('fc972067e58848f58e553497930bccf6','1','内容管理-栏目设置-站点设置-查看','1','2015-11-15 09:08:00','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','',''),('fca4aba05eae429f8b286bf03f64a1a9','1','系统设置-机构用户-用户管理','1','2015-11-19 16:38:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('fcc22b69f6e84f83a2a4da4ba6e81a36','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 08:52:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/list','GET','',''),('fcc28366056d4e99a7ff51b5d2fd08dd','1','内容管理-栏目设置-站点设置-修改','1','2015-11-21 19:07:55','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/save','POST','id=1&name=中文&title=大连外国语大学汉学院&sort=1&locale=zh_CN&logo=/userfiles/1/images/cms/site/2015/11/logo.png&description=描述&keywords=关键字&homeAD=5430fe2ede6f4b6191d79ce9a6e6e471&_homeAD=首页广告&row1col1=605de15fc58b4502bb9e5151b19084a0&_row1col1=学院动态&row1col2=/userfiles/1/files/cms/files/2015/11/a.mp4&row1col3=ccb1f0466b5645f4911cd6da9b809b62&_row1col3=奖学金&row2col1=68a2085909e446cc894d9f23297ef665&_row2col1=通知公告&row2col3=8b0f959bf25e42b8af02a251f00ee55e&_row2col3=校园生活&row3col1=012010c319b54b61878a951939e1a9ca&_row3col1=第二课堂&row3col2=504027b6bc854f798d2083f847e0b780&_row3col2=留学生管理&row3col3=2f7362c39b44404ab9a9ba71508becaa&_row3col3=考试信息&aol=http://baidu.com&download=0bd1f5695e3143808cf026668432e20e&_download=资料下载&email=g.zw@asvcloud.com&link=18&_link=友情链接&qrcodecontents=大连外国语大学汉学院&copyright=Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548&customIndexView=&domain=/z',''),('fcd6239c6c3344e68c0ed50a294a7f3e','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:41:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','parent.id=ce351667d5e7410c9247ae1e6e2a18c3',''),('fcdece6b44a34d9cbb6b182bda87257f','1','系统登录','1','2015-11-12 12:19:54','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447301994476',''),('fd0d6ae65fae43539725b197a46bb49b','1','内容管理-栏目设置-首页设置','1','2015-11-14 20:30:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','tabPageId=jerichotabiframe_26',''),('fd0fb1ebfc49433eb59b5d92c9290d89','1','内容管理-栏目设置-栏目管理-修改','1','2015-11-06 10:26:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/save','POST','id=12&office.id=4&office.name=市场部&parent.id=10&parent.name=国内教育&module=article&name=研究生教育&image=&href=&target=&description=&keywords=&sort=40&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=0&customListView=&customContentView=&viewConfig=',''),('fd3382ce391e462283cd3162cfff199e','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-13 18:16:31','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','repage=&category.id=86a205ff69094fb1b089898d71243208',''),('fd48ee71df874ee3b885227ceb741b4e','1','我的面板-个人信息-个人信息','1','2015-11-12 22:38:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('fd5f4b507be5420c9bdf53788be8ccf2','1','内容管理-内容管理','1','2015-11-19 16:42:30','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/none','GET','',''),('fda604e6c85742118106a1cdb89abb26','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-16 13:36:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=1,2,3,',''),('fdb4aaabd9c34adaa549e0f5b0024ba1','1','系统登录','1','2015-11-21 19:07:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a','GET','',''),('fdcc0d85655b4a28819da68bae7ae6d5','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-17 16:45:50','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','id=24',''),('fdead4075ad74d55b10daf7da1afc1a5','1','内容管理-栏目设置-栏目管理','1','2015-11-19 16:16:42','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('fded088862dd495aaa691cace706abea','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-15 20:45:03','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','id=7',''),('fdf1e425b6cd4aaf9b3d6576a9231863','1','内容管理-栏目设置-站点设置-修改','1','2015-11-14 22:27:44','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/save','POST','id=1&name=默认站点&title=大连外国语大学汉学院&sort=1&locale=ko&logo=&description=描述&keywords=关键字&homeADs[0].image=/userfiles/1/images/photo/2015/10/ASV(lddogo)-01.png&homeADs[0].des=xxxx&homeADs[1].image=dddddf&homeADs[1].des=dddddfdfdf&row1col1=0&_row1col1=请选择栏目&row1col2=0&_row1col2=请选择栏目&row1col3=0&_row1col3=请选择栏目&row2col1=0&_row2col1=请选择栏目&row2col2=0&_row2col2=请选择栏目&row2col3=0&_row2col3=请选择栏目&row3col1=0&_row3col1=请选择栏目&row3col2=0&_row3col2=请选择栏目&row3col3=0&_row3col3=请选择栏目&aol=&download=0&_download=请选择栏目&email=&link=0&_link=请选择栏目&qcode=&copyright=Copyright © 2015 by ASV. All Rights Reserved. 辽ICP备05003548&customIndexView=&domain=/z',''),('fdf2ae80b0854655909cdb2a6d2ec430','1','系统登录','1','2015-11-06 16:03:52','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446797031831',''),('fdf869769343453d9d653e0e90fca6dc','1','内容管理-栏目设置-首页设置','1','2015-11-15 09:07:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/','GET','',''),('fe205e43387a464ebf465dbd71b204db','1','系统设置-机构用户-机构管理-查看','1','2015-11-19 16:39:21','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/office/list','GET','id=&parentIds=0,',''),('fe228f12877645aea95f80e045ee9211','1','内容管理-内容管理','1','2015-10-30 22:49:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/none','GET','',''),('fe7e7d93488c456abe966e00ec68cd61','1','系统登录','1','2015-11-05 19:59:07','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446724746957',''),('fe904c36de5e4e01b16fa1da1da88b97','1','内容管理-内容管理-内容发布-文章模型-修改','1','2015-11-16 11:42:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/save','POST','id=&category.id=2f6493999a0d40c1a7c5f4866dc0c36f&category.name=中国政府奖学金&locale=zh&title=2015-2016年获得政府奖学金人员名单&color=&link=&keywords=&weight=0&weightDate=&description=&image=&attachment=&articleData.content=奋斗奋斗奋斗&articleData.copyfrom=&articleData.relation=&articleData.allowComment=1&_posidList=on&createDate=&delFlag=0&customContentView=&viewConfig=',''),('feb7da51d4364a839e82f2dd320a7d8f','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-06 10:43:40','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','parent.id=2f7362c39b44404ab9a9ba71508becaa',''),('feca4ab5c4094360ab11b5cbbaf947ea','1','内容管理-内容管理','1','2015-11-13 15:26:17','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/tree','GET','',''),('fecbb29e203e403d8cac61a7910c16a4','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-05 14:46:09','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/category/form','GET','id=25',''),('fed0001d0fea49e9ad6648ef20075593','1','我的面板-个人信息-个人信息','1','2015-11-19 17:09:30','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('feea2690110b47449573ff94a6861c93','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-02 22:34:49','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/article/','GET','category.id=3',''),('fef9ed9fd67f42f6b3212aa7ca2049ed','1','系统登录','1','2015-11-13 13:04:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447391050086',''),('fefa68214b534703af5e93c01fa74af2','1','系统设置-机构用户-机构管理','1','2015-11-19 16:42:04','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/office/','GET','tabPageId=jerichotabiframe_2',''),('ff018a2669ca40efb88aa6f738f85fed','1','内容管理-栏目设置-站点设置-查看','1','2015-11-14 19:47:05','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/site/form','GET','',''),('ff08fe94d1a9420ab1ae94004350bf83','1','系统登录','1','2015-11-02 18:58:15','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1446461895295',''),('ff29b1ef3ce8496d8754cd1d4f167c4a','1','内容管理-内容管理-内容发布-文章模型','1','2015-11-26 00:23:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/','GET','category.id=5',''),('ff31d1c2a12b4257b917725eec8bb816','1','我的面板-个人信息-个人信息','1','2015-11-06 10:18:48','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ff32349e33834ee2a2413376c9651bba','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-19 16:54:18','192.168.1.108','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/findByIds','GET','ids=',''),('ff361a36f84346e3929b96019b9731d8','1','我的面板-个人信息-个人信息','1','2015-10-30 09:22:10','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ff3763fb86b84a59a23d44f713b5d7c5','1','内容管理-内容管理-内容发布-文章模型-查看','1','2015-11-13 15:26:19','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/article/form','GET','category.name=关于我们&id=&category.id=2',''),('ff4ed74b9c3447adae38c39ca8e6ee62','1','系统设置-系统设置-菜单管理','1','2015-11-19 16:34:59','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/sys/menu/','GET','tabPageId=jerichotabiframe_11',''),('ff848b8ae0f0452ca657dac4ec3102ea','1','内容管理-内容管理','1','2015-11-05 14:45:36','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/tree','GET','',''),('ffaaee9a97d64888a0703825e3ddda18','1','系统登录','1','2015-11-19 13:40:45','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a','GET','',''),('ffb56abd494248b19d3a32933cbc3964','1','系统登录','1','2015-11-16 13:42:25','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/oa/oaNotify/self/count','GET','updateSession=0&t=1447652545299',''),('ffd43c92d8db49ca92c6cad5b10b3c73','1','内容管理-内容管理-内容发布','1','2015-11-02 23:24:01','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36','/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('ffdd5e85bb974bacac45bc3843185de3','1','内容管理-栏目设置-栏目管理','1','2015-11-16 15:16:14','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/','GET','',''),('ffe55fddd960400a8712d6ff452b10b9','1','内容管理-栏目设置-栏目管理-查看','1','2015-11-13 16:09:47','0:0:0:0:0:0:0:1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36','/a/cms/category/form','GET','parent.id=86a205ff69094fb1b089898d71243208','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mdict`
--

DROP TABLE IF EXISTS `sys_mdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_mdict`
--

LOCK TABLES `sys_mdict` WRITE;
/*!40000 ALTER TABLE `sys_mdict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','编辑',60,'','','','0','test:testData:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('0ca004d6b1bf4bcab9670a5060d82a55','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','树结构',90,'/test/testTree','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('1','0','0,','功能菜单',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','字典管理',60,'/sys/dict/',NULL,'th-list','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,2,3,10,','查看',30,NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,2,3,10,','修改',40,NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','2','0,1,2,','机构用户',970,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','13','0,1,2,13,','区域管理',50,'/sys/area/',NULL,'th','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','14','0,1,2,13,14,','查看',30,NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','14','0,1,2,13,14,','修改',40,NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','13','0,1,2,13,','机构管理',40,'/sys/office/',NULL,'th-large','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,2,13,17,','查看',30,NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,2,13,17,','修改',40,NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','系统设置',900,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','13','0,1,2,13,','用户管理',30,'/sys/user/index',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','20','0,1,2,13,20,','查看',30,NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','20','0,1,2,13,20,','修改',40,NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','2','0,1,2,','关于帮助',990,NULL,NULL,NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','23','0,1,2,23','官方首页',30,'http://jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','23','0,1,2,23','项目支持',50,'http://jeesite.com/donation.html','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','23','0,1,2,23','论坛交流',80,'http://bbs.jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('27','1','0,1,','我的面板',100,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','27','0,1,27,','个人信息',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','28','0,1,27,28,','个人信息',30,'/sys/user/info',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','系统设置',980,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','28','0,1,27,28,','修改密码',40,'/sys/user/modifyPwd',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','1','0,1,','内容管理',500,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','31','0,1,31,','栏目设置',990,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','32','0,1,31,32','栏目管理',30,'/cms/category/',NULL,'align-justify','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','33','0,1,31,32,33,','查看',30,NULL,NULL,NULL,'0','cms:category:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','33','0,1,31,32,33,','修改',40,NULL,NULL,NULL,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','32','0,1,31,32','站点设置',40,'/cms/site/',NULL,'certificate','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','36','0,1,31,32,36,','查看',30,NULL,NULL,NULL,'0','cms:site:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','36','0,1,31,32,36,','修改',40,NULL,NULL,NULL,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','32','0,1,31,32,','切换站点',50,'/cms/site/select','','retweet','0','cms:site:select','1','2013-05-27 08:00:00','1','2015-11-17 16:49:36','','0'),('3c92c17886944d0687e73e286cada573','79','0,1,79,','生成示例',120,'','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('4','3','0,1,2,3,','菜单管理',30,'/sys/menu/',NULL,'list-alt','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','31','0,1,31,','内容管理',500,NULL,NULL,NULL,'1','cms:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','40','0,1,31,40,','内容发布',30,'/cms/',NULL,'briefcase','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','41','0,1,31,40,41,','文章模型',40,'/cms/article/',NULL,'file','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','42','0,1,31,40,41,42,','查看',30,NULL,NULL,NULL,'0','cms:article:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','42','0,1,31,40,41,42,','修改',40,NULL,NULL,NULL,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','42','0,1,31,40,41,42,','审核',50,NULL,NULL,NULL,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','41','0,1,31,40,41,','链接模型',60,'/cms/link/',NULL,'random','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','46','0,1,31,40,41,46,','查看',30,NULL,NULL,NULL,'0','cms:link:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','46','0,1,31,40,41,46,','修改',40,NULL,NULL,NULL,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4855cf3b25c244fb8500a380db189d97','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','查看',30,'','','','0','test:testDataMain:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('49','46','0,1,31,40,41,46,','审核',50,NULL,NULL,NULL,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','4','0,1,2,3,4,','查看',30,NULL,NULL,NULL,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','40','0,1,31,40,','评论管理',40,'/cms/comment/?status=2',NULL,'comment','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','50','0,1,31,40,50,','查看',30,NULL,NULL,NULL,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','50','0,1,31,40,50,','审核',40,NULL,NULL,NULL,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','40','0,1,31,40,','公共留言',80,'/cms/guestbook/?status=2',NULL,'glass','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','53','0,1,31,40,53,','查看',30,NULL,NULL,NULL,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','53','0,1,31,40,53,','审核',40,NULL,NULL,NULL,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','71','0,1,27,71,','文件管理',90,'/../static/ckfinder/ckfinder.html',NULL,'folder-open','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','56','0,1,27,40,56,','查看',30,NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','56','0,1,27,40,56,','上传',40,NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','56','0,1,27,40,56,','修改',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59fb3088f5f04861ae9d7cddf418ce0d','7489e53f7dd24783971afbf013f12b2d','0,1,31,40,7489e53f7dd24783971afbf013f12b2d,','查看',10,'','','','0','cms:schoolmate:view','1','2015-11-25 21:32:52','1','2015-11-25 21:32:52','','0'),('6','4','0,1,2,3,4,','修改',40,NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','31','0,1,31,','统计分析',600,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','60','0,1,31,60,','信息量统计',30,'/cms/stats/article',NULL,'tasks','1','cms:stats:article','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','0,1,','在线办公',200,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','62','0,1,62,','个人办公',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','63','0,1,62,63,','请假办理',300,'/oa/leave',NULL,'leaf','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','64','0,1,62,63,64,','查看',30,NULL,NULL,NULL,'0','oa:leave:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','64','0,1,62,63,64,','修改',40,NULL,NULL,NULL,'0','oa:leave:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','2','0,1,2,','日志查询',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','67','0,1,2,67,','日志查询',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','62','0,1,62,','流程管理',300,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','3','0,1,2,3,','角色管理',50,'/sys/role/',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','69','0,1,62,69,','流程管理',50,'/act/process',NULL,'road','1','act:process:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('71','27','0,1,27,','文件管理',90,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72','69','0,1,62,69,','模型管理',100,'/act/model',NULL,'road','1','act:model:edit','1','2013-09-20 08:00:00','1','2013-09-20 08:00:00',NULL,'0'),('73','63','0,1,62,63,','我的任务',50,'/act/task/todo/',NULL,'tasks','1',NULL,'1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('74','63','0,1,62,63,','审批测试',100,'/oa/testAudit',NULL,NULL,'1','oa:testAudit:view,oa:testAudit:edit','1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('7489e53f7dd24783971afbf013f12b2d','40','0,1,31,40,','校友管理',90,'/schoolmate/list','','','1','','1','2015-11-25 21:29:46','1','2015-11-25 21:31:32','','0'),('75','1','0,1,','在线演示',3000,NULL,NULL,NULL,'1',NULL,'1','2013-10-08 08:00:00','1','2013-10-08 08:00:00',NULL,'1'),('79','1','0,1,','代码生成',5000,'','','','0','','1','2013-10-16 08:00:00','1','2015-11-19 16:35:28','','0'),('8','7','0,1,2,3,7,','查看',30,NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','79','0,1,79,','代码生成',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('81','80','0,1,79,80,','生成方案配置',30,'/gen/genScheme',NULL,NULL,'1','gen:genScheme:view,gen:genScheme:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('82','80','0,1,79,80,','业务表配置',20,'/gen/genTable',NULL,NULL,'1','gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('83','80','0,1,79,80,','代码模板管理',90,'/gen/genTemplate',NULL,NULL,'1','gen:genTemplate:view,gen:genTemplate:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'1'),('84','67','0,1,2,67,','连接池监视',40,'/../druid',NULL,NULL,'1',NULL,'1','2013-10-18 08:00:00','1','2013-10-18 08:00:00',NULL,'0'),('85','76','0,1,75,76,','行政区域',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('86','75','0,1,75,','组件演示',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('87','86','0,1,75,86,','组件演示',30,'/test/test/form',NULL,NULL,'1','test:test:view,test:test:edit','1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('88','62','0,1,62,','通知通告',20,'','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('89','88','0,1,62,88,','我的通告',30,'/oa/oaNotify/self','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('9','7','0,1,2,3,7,','修改',40,NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','88','0,1,62,88,','通告管理',50,'/oa/oaNotify','','','1','oa:oaNotify:view,oa:oaNotify:edit','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('afab2db430e2457f9cf3a11feaa8b869','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','编辑',60,'','','','0','test:testTree:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b1f6d1b86ba24365bae7fd86c5082317','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','主子表',60,'/test/testDataMain','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('ba8092291b40482db8fe7fc006ea3d76','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','单表',30,'/test/testData','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('beb25213fa734e2f9f491f698fab8332','7489e53f7dd24783971afbf013f12b2d','0,1,31,40,7489e53f7dd24783971afbf013f12b2d,','修改',20,'','','','0','cms:schoolmate:edit','1','2015-11-25 21:34:00','1','2015-11-25 21:34:00','','0'),('c2e4d9082a0b4386884a0b203afe2c5c','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','查看',30,'','','','0','test:testTree:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('d15ec45a4c5449c3bbd7a61d5f9dd1d2','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','编辑',60,'','','','0','test:testDataMain:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('df7ce823c5b24ff9bada43d992f373e2','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','查看',30,'','','','0','test:testData:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('fd99c4b951314a6e9265d8094bf5b7c0','32','0,1,31,32,','首页设置',60,'/cms/site/','','','1','','1','2015-11-13 21:41:59','1','2015-11-13 21:45:59','','1');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_office`
--

DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_office`
--

LOCK TABLES `sys_office` WRITE;
/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES ('1','0','0,','大连外国语大学汉学院',10,'2','100000','1','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:39:21','','0'),('10','7','0,1,7,','市场部',30,'3','200003','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','7','0,1,7,','技术部',40,'3','200004','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','7','0,1,7,','部门一',0,'4','201000','1','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:40:27','','0'),('13','12','0,1,7,12,','领导',10,'4','201001','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:41:37','','0'),('14','12','0,1,7,12,','综合部',20,'4','201002','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','12','0,1,7,12,','市场部',30,'4','201003','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','12','0,1,7,12,','技术部',40,'4','201004','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','0,1,7,','部门二',40,'5','201010','1','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:40:56','','0'),('18','17','0,1,7,17,','领导',10,'5','201011','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:41:50','','0'),('19','17','0,1,7,17,','综合部',20,'5','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','领导',10,'2','100001','2','1','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:41:25','','0'),('20','17','0,1,7,17,','市场部',30,'5','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','17','0,1,7,17,','技术部',40,'5','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','7','0,1,7,','部门三',50,'6','201010','1','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:41:07','','0'),('23','22','0,1,7,22,','领导',10,'6','201011','2','3','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:41:59','','0'),('24','22','0,1,7,22,','综合部',20,'6','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','22','0,1,7,22,','市场部',30,'6','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','22','0,1,7,22,','技术部',40,'6','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','0,1,','综合部',20,'2','100002','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','0,1,','市场部',30,'2','100003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','0,1,','技术部',40,'2','100004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','研发部',50,'2','100005','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','1','0,1,','机构一',20,'3','200000','1','2','','','','','','','1','','','1','2013-05-27 08:00:00','1','2015-11-19 16:40:04','','0'),('8','7','0,1,7,','公司领导',10,'3','200001','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','0,1,7,','综合部',20,'3','200002','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','2','系统管理员','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2015-11-19 16:33:59','','0'),('2','2','公司管理员','hr','assignment','2','1','1','1','2013-05-27 08:00:00','1','2015-11-25 21:36:33','','0'),('3','1','本公司管理员','a','assignment','3',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','部门管理员','b','assignment','4',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','本部门管理员','c','assignment','5',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','普通用户','d','assignment','8',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','济南市管理员','e','assignment','9',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES ('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),('1','19'),('1','2'),('1','20'),('1','21'),('1','22'),('1','23'),('1','24'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','31'),('1','32'),('1','33'),('1','34'),('1','35'),('1','36'),('1','37'),('1','38'),('1','39'),('1','4'),('1','40'),('1','41'),('1','42'),('1','43'),('1','44'),('1','45'),('1','46'),('1','47'),('1','48'),('1','49'),('1','5'),('1','50'),('1','51'),('1','52'),('1','53'),('1','54'),('1','55'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','60'),('1','61'),('1','67'),('1','68'),('1','7'),('1','71'),('1','8'),('1','84'),('1','85'),('1','9'),('2','1'),('2','10'),('2','11'),('2','12'),('2','13'),('2','14'),('2','15'),('2','16'),('2','17'),('2','18'),('2','19'),('2','2'),('2','20'),('2','21'),('2','22'),('2','23'),('2','24'),('2','27'),('2','28'),('2','29'),('2','3'),('2','30'),('2','31'),('2','32'),('2','33'),('2','34'),('2','35'),('2','36'),('2','37'),('2','38'),('2','39'),('2','4'),('2','40'),('2','41'),('2','42'),('2','43'),('2','44'),('2','45'),('2','46'),('2','47'),('2','48'),('2','49'),('2','5'),('2','50'),('2','51'),('2','52'),('2','53'),('2','54'),('2','55'),('2','56'),('2','57'),('2','58'),('2','59'),('2','59fb3088f5f04861ae9d7cddf418ce0d'),('2','6'),('2','60'),('2','61'),('2','67'),('2','68'),('2','7'),('2','71'),('2','7489e53f7dd24783971afbf013f12b2d'),('2','8'),('2','84'),('2','85'),('2','9'),('2','beb25213fa734e2f9f491f698fab8332'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','25'),('3','26'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','71'),('3','72'),('3','73'),('3','74'),('3','75'),('3','76'),('3','77'),('3','78'),('3','79'),('3','8'),('3','80'),('3','81'),('3','82'),('3','83'),('3','84'),('3','85'),('3','86'),('3','87'),('3','88'),('3','89'),('3','9'),('3','90');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_office`
--

DROP TABLE IF EXISTS `sys_role_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_office`
--

LOCK TABLES `sys_role_office` WRITE;
/*!40000 ALTER TABLE `sys_role_office` DISABLE KEYS */;
INSERT INTO `sys_role_office` VALUES ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');
/*!40000 ALTER TABLE `sys_role_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','1','2','admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0001','系统管理员','thinkgem@163.com','8675','8675','1','','125.40.16.243','2015-12-01 11:49:34','1','1','2013-05-27 08:00:00','1','2015-11-19 17:01:21','最高管理员','0'),('10','7','11','jn_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','济南技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','12','13','lc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','济南历城领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','12','18','lx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','济南历下领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','22','23','gx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','济南高新领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','2','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','管理员',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','3','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','4','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','5','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','6','sd_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','研发部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','7','8','jn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','济南领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','9','jn_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','济南综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','10','jn_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','济南市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES ('1','1'),('1','2'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('2','1'),('3','2'),('4','3'),('5','4'),('6','5'),('7','2'),('7','7'),('8','2'),('9','1');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data`
--

DROP TABLE IF EXISTS `test_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data`
--

LOCK TABLES `test_data` WRITE;
/*!40000 ALTER TABLE `test_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_child`
--

DROP TABLE IF EXISTS `test_data_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_child`
--

LOCK TABLES `test_data_child` WRITE;
/*!40000 ALTER TABLE `test_data_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_main`
--

DROP TABLE IF EXISTS `test_data_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_main`
--

LOCK TABLES `test_data_main` WRITE;
/*!40000 ALTER TABLE `test_data_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_tree`
--

DROP TABLE IF EXISTS `test_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_tree`
--

LOCK TABLES `test_tree` WRITE;
/*!40000 ALTER TABLE `test_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_schoolmate`
--

DROP TABLE IF EXISTS `zone_schoolmate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_schoolmate` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `firstname` varchar(64) NOT NULL COMMENT '名',
  `familyname` varchar(64) NOT NULL COMMENT '性',
  `cnname` varchar(64) DEFAULT NULL COMMENT '中文名',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `nationality` varchar(10) DEFAULT NULL COMMENT '国籍',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `occupations` varchar(64) DEFAULT NULL COMMENT '职业',
  `workingaddress` varchar(100) DEFAULT '' COMMENT '工作地址',
  `zipcode` varchar(10) DEFAULT '' COMMENT '邮编',
  `learningtype` varchar(10) DEFAULT '' COMMENT '学习类别',
  `enrollment` date DEFAULT NULL COMMENT '入学时间',
  `graduation` date DEFAULT NULL COMMENT '毕业时间',
  `address` varchar(100) DEFAULT '' COMMENT '永久地址',
  `tel` varchar(32) DEFAULT '' COMMENT '电话',
  `email` varchar(100) DEFAULT '' COMMENT '邮件',
  `fax` varchar(32) DEFAULT '' COMMENT '传真',
  `subject` varchar(100) DEFAULT '' COMMENT '主修专业',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='校友录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_schoolmate`
--

LOCK TABLES `zone_schoolmate` WRITE;
/*!40000 ALTER TABLE `zone_schoolmate` DISABLE KEYS */;
INSERT INTO `zone_schoolmate` VALUES ('1942c5d1b9ae46789c6ec275e2711e9b','zhongwei','guo','郭中伟','2015-11-25','CN','2','dfdf','地方大幅度','大幅度发达','啊啊啊','2015-11-25','2015-11-25','地方大大大大的辅导费','大幅度发大幅度辅导费','2323@3332','333333333333333333333333','啊地方大幅度发',NULL,'2015-11-22 22:33:38','1','2015-11-25 23:06:11',NULL,'0'),('3ca651556a884b319a79e53d18112d30','的地','4','','2015-11-23','CN','1','dfdf','fdfdfdfd','dfdfdf','dfsdfd','2015-11-23','2015-11-23','dfad','dfadfad','fdfd@sdf','fdf','dfdfd',NULL,'2015-11-23 21:42:26',NULL,'2015-11-23 21:42:26',NULL,'0'),('4166882aae134c2199bd60f6963700d8','a','b','ddd','2015-11-25','CN','2','dadfad','dfdfdf','3343','dfd','2015-11-26','2015-11-21','dfdf','fdfdf','ffff','2222','ddasddfd','1','2015-11-25 22:56:19','1','2015-11-25 23:04:33',NULL,'1'),('560b437659a14866afeae70753c08ff5','中伟','郭','郭中伟','1984-11-02','CN','1','职业','地址','433434343','asd飞','2015-11-01','2015-11-22','联系地址','453434','guozhw@neusoft.com','D大调','专业',NULL,'2015-11-22 22:25:34',NULL,'2015-11-22 22:25:34',NULL,'0');
/*!40000 ALTER TABLE `zone_schoolmate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-01 22:30:50