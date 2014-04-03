/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50172
 Source Host           : localhost
 Source Database       : dev_store

 Target Server Type    : MySQL
 Target Server Version : 50172
 File Encoding         : utf-8

 Date: 04/02/2014 19:18:31 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `store_pedido`
-- ----------------------------
DROP TABLE IF EXISTS `store_pedido`;
CREATE TABLE `store_pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comprador` varchar(150) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `custom` varchar(150) DEFAULT NULL,
  `coupon` varchar(50) DEFAULT NULL,
  `subtotal` varchar(50) DEFAULT NULL,
  `envio` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `fac_nombre` varchar(200) DEFAULT NULL,
  `fac_calle` varchar(250) DEFAULT NULL,
  `fac_colonia` varchar(250) DEFAULT NULL,
  `fac_cp` varchar(5) DEFAULT NULL,
  `fac_ciudad` varchar(100) DEFAULT NULL,
  `fac_estado` varchar(100) DEFAULT NULL,
  `fac_pais` varchar(100) DEFAULT NULL,
  `fac_telefono` varchar(50) DEFAULT NULL,
  `envio_nombre` varchar(250) DEFAULT NULL,
  `envio_calle` varchar(250) DEFAULT NULL,
  `envio_colonia` varchar(250) DEFAULT NULL,
  `envio_cp` varchar(5) DEFAULT NULL,
  `envio_ciudad` varchar(100) DEFAULT NULL,
  `envio_estado` varchar(100) DEFAULT NULL,
  `envio_pais` varchar(100) DEFAULT NULL,
  `envio_telefono` varchar(50) DEFAULT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_uri` varchar(255) DEFAULT NULL,
  `payment_text` tinytext,
  `payment_info` text,
  `shipping` varchar(50) DEFAULT NULL,
  `shipping_id` varchar(255) DEFAULT NULL,
  `shipping_uri` varchar(255) DEFAULT NULL,
  `shipping_text` tinytext,
  `shipping_info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `store_pedido`
-- ----------------------------
BEGIN;
INSERT INTO `store_pedido` VALUES ('1', '3', '0', '24jLmTRtZZRGvAtqU5zEYROq7jf5lBBt', null, '487.83', '199', '686.83', 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Aguascalientes', 'Mexico', null, 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Aguascalientes', 'Mexico', null, null, null, null, null, null, null, null, null, null, null), ('2', '3', '0', 'iErmRnIFZLuQyIjlYAWl00cV4UqhDpFc', null, '487.83', '199', '686.83', 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Distrito Federal', 'Mexico', null, 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Distrito Federal', 'Mexico', null, null, null, null, null, null, null, null, null, null, null), ('3', '3', '0', 'OQNvYFiU213DGe0UYrh4a0Mxu56R4cnZ', null, '487.83', '199', '686.83', 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Aguascalientes', 'Mexico', null, 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Aguascalientes', 'Mexico', null, 'paypal', 'IDDELATPV', 'uri://tpv', '', '', 'uri://shipping', 'IDDEELENVIO', '', '', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
