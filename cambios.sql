/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50516
 Source Host           : localhost
 Source Database       : dev_store

 Target Server Type    : MySQL
 Target Server Version : 50516
 File Encoding         : utf-8

 Date: 04/28/2014 00:51:14 AM
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
	`payment_text` tinytext DEFAULT NULL,
	`payment_info` text DEFAULT NULL,
	`shipping` varchar(50) DEFAULT NULL,
	`shipping_id` varchar(255) DEFAULT NULL,
	`shipping_uri` varchar(255) DEFAULT NULL,
	`shipping_text` tinytext DEFAULT NULL,
	`shipping_info` text DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=6 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_pedido`
-- ----------------------------
BEGIN;
INSERT INTO `store_pedido` VALUES ('1', '2', '0', 'WzZ26KGS596sHNgnQZNITFZ7shjgcJ0p', null, '809.97', '199', '1008.97', 'Andros Romo', 'Paseo Tollocan 742', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de México', 'Mexico', null, 'Andros Romo', 'Montecito 38', 'Napoles', '03810', 'DF', 'Distrito Federal', 'Mexico', null, 'paypal', 'IDDELATPV', 'uri://tpv', '', '', 'estandar', 'IDDEELENVIO', 'uri://shipping', '', ''), ('2', '2', '0', 's98zIZXn9gbLGV3YaweRl3gsg7lXhRIo', null, '809.97', '199', '1008.97', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('3', '2', '0', 'Wq4Gu7iOegflytblnBwTaHhOivfZtvWb', null, '809.97', '199', '1008.97', 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', null, 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', null, 'conectaio', '38100000000042290121213001160013', 'https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128', '080514', '{\"expiry_date\": \"080514\", \"type\": \"oxxo\", \"barcode_url\": \"https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128\", \"barcode\": \"38100000000042290121213001160013\", \"object\": \"cash_payment\"}', '', 'HELL YEAH 3', 'HELL YEAH 3', '', ''), ('4', '2', '0', 'jXlKIgWQAxD5ozoBN8xFIvxoQq7nP3U9', null, '1800.00', '199', '1999.00', 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', null, 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', null, 'conectaio', '38100000000042290121213001160013', 'https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128', '080514', '{\"expiry_date\": \"080514\", \"type\": \"oxxo\", \"barcode_url\": \"https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128\", \"barcode\": \"38100000000042290121213001160013\", \"object\": \"cash_payment\"}', '', '00000', 'uri://', '', ''), ('5', '2', '0', '69Hy0IXD8Sz1SjeG8Iku4XkwjHgGTBVf', null, '1800.00', '199', '1999.00', 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de México', 'Mexico', null, 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de México', 'Mexico', null, 'paypal', 'IDDELATPV', 'uri://tpv', '', '', 'estandar', 'IDDEELENVIO', 'uri://shipping', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `userprofile_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `userprofile_userprofile`;
CREATE TABLE `userprofile_userprofile` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) NOT NULL,
	`calle` varchar(200) DEFAULT NULL,
	`direccion` varchar(200) DEFAULT NULL,
	`cp` decimal(5,0) DEFAULT NULL,
	`ciudad` varchar(100) DEFAULT NULL,
	`estado` varchar(100) DEFAULT NULL,
	`telefono` varchar(15) DEFAULT NULL,
	`calle_envio` varchar(200) DEFAULT NULL,
	`direccion_envio` varchar(200) DEFAULT NULL,
	`cp_envio` decimal(5,0) DEFAULT NULL,
	`ciudad_envio` varchar(100) DEFAULT NULL,
	`estado_envio` varchar(100) DEFAULT NULL,
	`telefono_envio` varchar(15) DEFAULT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `user_id` (user_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=4 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `userprofile_userprofile`
-- ----------------------------
BEGIN;
INSERT INTO `userprofile_userprofile` VALUES ('1', '4', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de Mexico', '0445524952830', 'Montecito 33', 'Napoles', '3810', 'DF', 'México', '525562667150'), ('2', '2', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de Mexico', '525562667150', 'Montecito 33', 'Napoles', '3810', 'DF', 'México', '525562667150'), ('3', '3', null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
