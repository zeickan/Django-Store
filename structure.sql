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

 Date: 03/31/2014 19:05:16 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(80) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `name` (`name`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`group_id` int(11) NOT NULL,
	`permission_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `group_id` (group_id, permission_id),
	INDEX `auth_group_permissions_5f412f9a` (group_id),
	INDEX `auth_group_permissions_83d7f98b` (permission_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=FIXED COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	`content_type_id` int(11) NOT NULL,
	`codename` varchar(100) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `content_type_id` (content_type_id, codename),
	INDEX `auth_permission_37ef4eb4` (content_type_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=52 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `auth_permission`
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission'), ('2', 'Can change permission', '1', 'change_permission'), ('3', 'Can delete permission', '1', 'delete_permission'), ('4', 'Can add group', '2', 'add_group'), ('5', 'Can change group', '2', 'change_group'), ('6', 'Can delete group', '2', 'delete_group'), ('7', 'Can add user', '3', 'add_user'), ('8', 'Can change user', '3', 'change_user'), ('9', 'Can delete user', '3', 'delete_user'), ('10', 'Can add content type', '4', 'add_contenttype'), ('11', 'Can change content type', '4', 'change_contenttype'), ('12', 'Can delete content type', '4', 'delete_contenttype'), ('13', 'Can add session', '5', 'add_session'), ('14', 'Can change session', '5', 'change_session'), ('15', 'Can delete session', '5', 'delete_session'), ('16', 'Can add site', '6', 'add_site'), ('17', 'Can change site', '6', 'change_site'), ('18', 'Can delete site', '6', 'delete_site'), ('19', 'Can add log entry', '7', 'add_logentry'), ('20', 'Can change log entry', '7', 'change_logentry'), ('21', 'Can delete log entry', '7', 'delete_logentry'), ('22', 'Can add rango', '8', 'add_rango'), ('23', 'Can change rango', '8', 'change_rango'), ('24', 'Can delete rango', '8', 'delete_rango'), ('25', 'Can add role', '9', 'add_role'), ('26', 'Can change role', '9', 'change_role'), ('27', 'Can delete role', '9', 'delete_role'), ('28', 'Can add tipo', '10', 'add_tipo'), ('29', 'Can change tipo', '10', 'change_tipo'), ('30', 'Can delete tipo', '10', 'delete_tipo'), ('31', 'Can add colaborador', '11', 'add_colaborador'), ('32', 'Can change colaborador', '11', 'change_colaborador'), ('33', 'Can delete colaborador', '11', 'delete_colaborador'), ('34', 'Can add categoria', '12', 'add_categoria'), ('35', 'Can change categoria', '12', 'change_categoria'), ('36', 'Can delete categoria', '12', 'delete_categoria'), ('37', 'Can add colores', '13', 'add_colores'), ('38', 'Can change colores', '13', 'change_colores'), ('39', 'Can delete colores', '13', 'delete_colores'), ('40', 'Can add producto', '14', 'add_producto'), ('41', 'Can change producto', '14', 'change_producto'), ('42', 'Can delete producto', '14', 'delete_producto'), ('43', 'Can add pedido', '15', 'add_pedido'), ('44', 'Can change pedido', '15', 'change_pedido'), ('45', 'Can delete pedido', '15', 'delete_pedido'), ('46', 'Can add user profile', '16', 'add_userprofile'), ('47', 'Can change user profile', '16', 'change_userprofile'), ('48', 'Can delete user profile', '16', 'delete_userprofile'), ('49', 'Can add PayPal IPN', '17', 'add_paypalipn'), ('50', 'Can change PayPal IPN', '17', 'change_paypalipn'), ('51', 'Can delete PayPal IPN', '17', 'delete_paypalipn');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`password` varchar(128) NOT NULL,
	`last_login` datetime NOT NULL,
	`is_superuser` tinyint(1) NOT NULL,
	`username` varchar(30) NOT NULL,
	`first_name` varchar(30) NOT NULL,
	`last_name` varchar(30) NOT NULL,
	`email` varchar(75) NOT NULL,
	`is_staff` tinyint(1) NOT NULL,
	`is_active` tinyint(1) NOT NULL,
	`date_joined` datetime NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `username` (username)
) ENGINE=`MyISAM` AUTO_INCREMENT=4 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `auth_user`
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$10000$N8qg86cOak2Y$mfbwwk4bKuOd3Ii4+GSjvLGI5uwiLAOY/neII3LhgiE=', '2014-03-28 01:44:53', '1', 'admin', '', '', 'admin@domain.com', '1', '1', '2014-03-28 01:42:41'), ('2', 'pbkdf2_sha256$10000$1BTjQ77BlBCF$V+Y5dgbRNjyDccVCQSE5Sp5O3+y+pt860U5f1e27vxE=', '2014-03-28 01:45:39', '0', 'zeickan', 'Andros', 'Romo', 'zeickan@gmail.com', '0', '1', '2014-03-28 01:45:33'), ('3', 'pbkdf2_sha256$10000$1TP7iKl3OwoQ$HaCWChwOii6hITaaX5mEbsxJRdj8AXr5RFg7/dwNgnY=', '2014-03-28 20:54:04', '0', 'laura', 'Laura', 'Guzman', 'laura@besign.com', '0', '1', '2014-03-28 20:53:59');
COMMIT;

-- ----------------------------
--  Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) NOT NULL,
	`group_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `user_id` (user_id, group_id),
	INDEX `auth_user_groups_6340c63c` (user_id),
	INDEX `auth_user_groups_5f412f9a` (group_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=FIXED COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`user_id` int(11) NOT NULL,
	`permission_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `user_id` (user_id, permission_id),
	INDEX `auth_user_user_permissions_6340c63c` (user_id),
	INDEX `auth_user_user_permissions_83d7f98b` (permission_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=FIXED COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`action_time` datetime NOT NULL,
	`user_id` int(11) NOT NULL,
	`content_type_id` int(11) DEFAULT NULL,
	`object_id` longtext DEFAULT NULL,
	`object_repr` varchar(200) NOT NULL,
	`action_flag` smallint(5) UNSIGNED NOT NULL,
	`change_message` longtext NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `django_admin_log_6340c63c` (user_id),
	INDEX `django_admin_log_37ef4eb4` (content_type_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=169 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `django_admin_log`
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES ('1', '2013-10-15 20:25:16', '1', '3', '2', 'admin', '1', ''), ('2', '2013-10-15 20:26:47', '1', '3', '2', 'admin', '2', 'Modifica password,first_name,last_name,email,is_staff y is_superuser.'), ('3', '2013-10-15 20:29:30', '1', '12', '1', 'Productos', '1', ''), ('4', '2013-10-15 20:30:08', '1', '12', '2', 'Productos :: Esmaltes', '1', ''), ('5', '2013-10-15 20:30:25', '1', '13', '1', 'Roji', '1', ''), ('6', '2013-10-15 20:30:30', '1', '13', '2', 'Rosa', '1', ''), ('7', '2013-10-15 20:30:34', '1', '13', '3', 'Azul', '1', ''), ('8', '2013-10-15 20:30:36', '1', '14', '1', 'Prueba', '1', ''), ('9', '2013-10-15 20:30:45', '1', '13', '1', 'Rojo', '2', 'Modifica color.'), ('10', '2013-10-17 18:46:03', '1', '12', '3', 'Productos :: Esmaltado permanente LED', '1', ''), ('11', '2013-10-17 18:47:11', '1', '12', '4', 'Productos :: Starter Kit', '1', ''), ('12', '2013-10-17 18:47:35', '1', '12', '5', 'Productos :: Pro Kit', '1', ''), ('13', '2013-10-17 18:47:50', '1', '12', '6', 'Productos :: Nail Art Kits', '1', ''), ('14', '2013-10-17 18:48:11', '1', '12', '7', 'Accesorios', '1', ''), ('15', '2013-10-17 18:48:21', '1', '12', '7', 'Productos :: Accesorios', '2', 'Modifica parent.'), ('16', '2013-10-17 18:52:40', '1', '14', '2', 'Azure Allure', '1', ''), ('17', '2013-10-17 18:54:24', '1', '14', '2', 'Azure Allure', '2', 'Modifica descripcion.'), ('18', '2013-10-17 19:04:02', '2', '14', '1', 'Prueba', '2', 'Modifica imagen.'), ('19', '2013-10-17 19:05:13', '2', '14', '3', 'Prueba de permisos', '1', ''), ('20', '2013-10-17 19:05:40', '2', '14', '3', 'Prueba de permisos', '3', ''), ('21', '2013-10-17 19:05:40', '2', '14', '1', 'Prueba', '3', ''), ('22', '2013-10-17 20:49:03', '1', '14', '4', 'Blase Beauty', '1', ''), ('23', '2013-10-17 21:18:26', '1', '14', '5', 'Blushful Moments', '1', ''), ('24', '2013-10-17 21:19:25', '1', '14', '6', 'Vipaccess', '1', ''), ('25', '2013-10-17 21:20:00', '1', '14', '7', 'Alwaysslate', '1', ''), ('26', '2013-10-17 21:20:32', '1', '14', '8', 'Runaway Red', '1', ''), ('27', '2013-10-17 21:21:02', '1', '14', '9', 'Richfamous', '1', ''), ('28', '2013-10-17 21:21:34', '1', '14', '10', 'Scandalous', '1', ''), ('29', '2013-10-17 21:22:07', '1', '14', '11', 'Callagentbottle', '1', ''), ('30', '2013-10-17 21:22:41', '1', '14', '12', 'Casanovas Kiss', '1', ''), ('31', '2013-10-17 21:23:08', '1', '14', '13', 'Champagnenights', '1', ''), ('32', '2013-10-17 21:24:07', '1', '14', '14', 'Creme de la Creme', '1', ''), ('33', '2013-10-17 21:24:49', '1', '14', '15', 'Divabottle', '1', ''), ('34', '2013-10-17 21:25:16', '1', '14', '16', 'Espressobottle', '1', ''), ('35', '2013-10-17 21:25:53', '1', '14', '17', 'Martini', '1', ''), ('36', '2013-10-17 21:26:49', '1', '14', '18', 'Meet me in mykonos', '1', ''), ('37', '2013-10-17 21:27:19', '1', '14', '19', 'Paradiso Blue', '1', ''), ('38', '2013-10-17 21:28:21', '1', '14', '20', 'Paradiso Blue', '1', ''), ('39', '2013-10-17 21:29:00', '1', '14', '21', 'Parisian Chic', '1', ''), ('40', '2013-10-17 21:29:30', '1', '14', '22', 'Publicity', '1', ''), ('41', '2013-10-17 21:29:59', '1', '14', '23', '9inchheels', '1', ''), ('42', '2013-10-17 21:30:52', '1', '14', '24', 'Simply Adorable', '1', ''), ('43', '2013-10-17 21:31:38', '1', '14', '25', 'I simply love your nails', '1', ''), ('44', '2013-10-17 21:32:21', '1', '14', '26', 'Style Saavy', '1', ''), ('45', '2013-10-17 21:32:59', '1', '14', '27', 'Shimmery Silouette', '1', ''), ('46', '2013-10-17 21:33:57', '1', '14', '28', 'Only in hollywood', '1', ''), ('47', '2013-10-17 21:34:34', '1', '14', '29', 'One of a kind', '1', ''), ('48', '2013-10-17 21:35:04', '1', '14', '30', 'Haule couture', '1', ''), ('49', '2013-10-17 21:36:57', '1', '14', '31', 'Dripping in luxury', '1', ''), ('50', '2013-10-17 21:37:28', '1', '14', '32', 'My inspiration', '1', ''), ('51', '2013-10-17 21:37:59', '1', '14', '33', 'Camera flash', '1', ''), ('52', '2013-10-17 21:38:29', '1', '14', '34', 'Tinsel town', '1', ''), ('53', '2013-10-17 21:38:58', '1', '14', '35', 'Thank you mom&dad', '1', ''), ('54', '2013-10-17 21:39:35', '1', '14', '36', 'I am so honored', '1', ''), ('55', '2013-10-17 21:40:07', '1', '14', '37', 'Wow', '1', ''), ('56', '2013-10-17 21:40:37', '1', '14', '38', 'The perfect pair', '1', ''), ('57', '2013-10-17 21:41:20', '1', '14', '39', 'Star power', '1', ''), ('58', '2013-10-17 21:41:47', '1', '14', '40', 'What a surprise', '1', ''), ('59', '2013-10-17 21:42:23', '1', '14', '41', 'Who are you wearing', '1', ''), ('60', '2013-10-17 21:42:51', '1', '14', '42', 'Award winning', '1', ''), ('61', '2013-10-17 21:43:15', '1', '14', '43', 'Adreamcometrue', '1', ''), ('62', '2013-10-17 21:43:40', '1', '14', '44', 'Afterparty playful', '1', ''), ('63', '2013-10-17 21:44:10', '1', '14', '45', 'And the winner is', '1', ''), ('64', '2013-10-17 21:44:26', '1', '14', '44', 'After party playful', '2', 'Modifica nombre.'), ('65', '2013-10-17 21:44:36', '1', '14', '43', 'A dream come true', '2', 'Modifica nombre.'), ('66', '2013-10-17 21:44:48', '1', '14', '35', 'Thank you mom & dad', '2', 'Modifica nombre.'), ('67', '2013-10-17 21:45:10', '1', '14', '23', '9 inch heels', '2', 'Modifica nombre.'), ('68', '2013-10-17 21:45:22', '1', '14', '18', 'Meet me in my konos', '2', 'Modifica nombre.'), ('69', '2013-10-17 21:45:35', '1', '14', '16', 'Espresso', '2', 'Modifica nombre.'), ('70', '2013-10-17 21:45:48', '1', '14', '15', 'Diva', '2', 'Modifica nombre.'), ('71', '2013-10-17 21:45:59', '1', '14', '13', 'Champagne nights', '2', 'Modifica nombre.'), ('72', '2013-10-17 21:46:13', '1', '14', '11', 'Callagent', '2', 'Modifica nombre.'), ('73', '2013-10-17 21:46:28', '1', '14', '7', 'Always slate', '2', 'Modifica nombre.'), ('74', '2013-10-17 21:47:50', '1', '14', '46', 'An eveningtore member bot', '1', ''), ('75', '2013-10-17 21:48:32', '1', '14', '47', 'Best dressed', '1', ''), ('76', '2013-10-17 21:49:00', '1', '14', '48', 'Black stretch limo', '1', ''), ('77', '2013-10-17 21:49:26', '1', '14', '49', 'Camera shy', '1', ''), ('78', '2013-10-17 21:49:52', '1', '14', '50', 'Can did moment', '1', ''), ('79', '2013-10-17 21:50:28', '1', '14', '51', 'Draped in rubies bot', '1', ''), ('80', '2013-10-17 21:50:58', '1', '14', '52', 'Drop dead gorgeous', '1', ''), ('81', '2013-10-17 21:51:23', '1', '14', '53', 'Envelope please', '1', ''), ('82', '2013-10-17 21:51:49', '1', '14', '54', 'Fake bake', '1', ''), ('83', '2013-10-17 21:52:19', '1', '14', '55', 'Glitterazzi', '1', ''), ('84', '2013-10-17 21:52:44', '1', '14', '56', 'Glitz & glamorous ', '1', ''), ('85', '2013-10-17 21:53:28', '1', '14', '57', 'Its not a taupe', '1', ''), ('86', '2013-10-17 21:53:59', '1', '14', '58', 'Just marvelous darling', '1', ''), ('87', '2013-10-17 21:54:27', '1', '14', '59', 'Leading lady ', '1', ''), ('88', '2013-10-17 21:55:01', '1', '14', '60', 'Lighter shade of gray', '1', ''), ('89', '2013-10-17 21:55:57', '1', '14', '61', 'Love those baby blues ', '1', ''), ('90', '2013-10-17 21:56:27', '1', '14', '62', 'Midnight affair', '1', ''), ('91', '2013-10-17 21:57:01', '1', '14', '63', 'My favourite designer ', '1', ''), ('92', '2013-10-17 21:58:11', '1', '14', '64', 'Nervous with anticipation', '1', ''), ('93', '2013-10-17 21:58:37', '1', '14', '65', 'Nominated for', '1', ''), ('94', '2013-10-17 21:59:17', '1', '14', '66', 'Ohlaliscious', '1', ''), ('95', '2013-10-17 21:59:45', '1', '14', '67', 'Oh so 90210', '1', ''), ('96', '2013-10-17 21:59:56', '1', '14', '66', 'Oh laliscious', '2', 'Modifica nombre.'), ('97', '2013-10-17 22:00:28', '1', '14', '68', 'Paparazzied', '1', ''), ('98', '2013-10-17 22:00:51', '1', '14', '69', 'Plum up the volume', '1', ''), ('99', '2013-10-17 22:02:02', '1', '14', '70', 'Red carpet reddy', '1', ''), ('100', '2013-10-17 22:08:03', '1', '14', '71', 'Simplys tunning', '1', ''), ('101', '2013-10-17 22:08:28', '1', '14', '72', 'Take a bow', '1', ''), ('102', '2013-10-17 22:08:51', '1', '14', '73', 'Thank you thank you', '1', ''), ('103', '2013-10-17 22:09:28', '1', '14', '74', 'The night is young', '1', ''), ('104', '2013-10-17 22:09:58', '1', '14', '75', 'Toast of the town', '1', ''), ('105', '2013-10-17 22:10:21', '1', '14', '76', 'Tre chic', '1', ''), ('106', '2013-10-17 22:10:47', '1', '14', '77', 'Violetta darling', '1', ''), ('107', '2013-10-17 22:11:08', '1', '14', '78', 'White hot', '1', ''), ('108', '2013-10-17 22:11:39', '1', '14', '79', 'You like me you really like me', '1', ''), ('109', '2013-10-17 22:12:02', '1', '14', '80', 'Sands crete', '1', ''), ('110', '2013-10-17 22:12:22', '1', '14', '81', 'Shazzam', '1', ''), ('111', '2013-10-17 22:13:04', '1', '14', '82', 'Show me the money', '1', ''), ('112', '2013-10-17 22:13:36', '1', '14', '83', 'Skys the limit', '1', ''), ('113', '2013-10-17 22:14:20', '1', '14', '84', 'Sunset over sag harbour', '1', ''), ('114', '2013-10-17 22:14:48', '1', '14', '85', 'Socialite status', '1', ''), ('115', '2013-10-17 22:15:15', '1', '14', '86', 'Country club chic', '1', ''), ('116', '2013-10-17 22:15:49', '1', '14', '87', 'Day party diva', '1', ''), ('117', '2013-10-17 22:16:17', '1', '14', '88', 'Mimosas by the pool 2', '1', ''), ('118', '2013-10-17 22:16:48', '1', '14', '89', 'High society', '1', ''), ('119', '2013-10-17 22:17:26', '1', '14', '90', 'Swagg in bottle', '1', ''), ('120', '2013-10-17 22:18:02', '1', '14', '91', 'Tangerine on the rocks', '1', ''), ('121', '2013-10-17 22:18:39', '1', '14', '92', 'Behind the scene', '1', ''), ('122', '2013-10-17 22:19:22', '1', '14', '93', 'Front row fab', '1', ''), ('123', '2013-10-17 22:19:43', '1', '14', '94', 'In style', '1', ''), ('124', '2013-10-17 22:20:12', '1', '14', '95', 'On the cat walk', '1', ''), ('125', '2013-10-17 22:20:34', '1', '14', '96', 'On trend', '1', ''), ('126', '2013-10-17 22:21:07', '1', '14', '97', 'Own the runway 2', '1', ''), ('127', '2013-10-17 22:21:34', '1', '14', '98', 'Dress for success', '1', ''), ('128', '2013-10-17 22:22:13', '1', '14', '99', 'Make up time', '1', ''), ('129', '2013-10-17 22:22:40', '1', '14', '100', 'Shimmering gown', '1', ''), ('130', '2013-10-17 22:23:10', '1', '14', '101', 'Perfect high heels', '1', ''), ('131', '2013-10-17 22:25:12', '1', '14', '102', 'ESMALTADO PERMANENTE LED', '1', ''), ('132', '2013-10-17 22:29:58', '1', '14', '103', 'PREP/PREPARADOR', '1', ''), ('133', '2013-10-17 22:32:24', '1', '14', '102', 'ESMALTADO PERMANENTE LED', '2', 'Modifica descripcion.'), ('134', '2013-10-17 22:32:32', '1', '14', '103', 'PREP/PREPARADOR', '2', 'No ha modificado ningún campo.'), ('135', '2013-10-17 22:34:26', '1', '14', '104', 'STRUCTURE/BASE', '1', ''), ('136', '2013-10-17 22:35:12', '1', '14', '105', 'PURIFY/LIMPIADOR', '1', ''), ('137', '2013-10-17 22:35:50', '1', '14', '106', 'ERASE/REMOVEDOR', '1', ''), ('138', '2013-10-17 22:36:04', '1', '14', '105', 'PURIFY/LIMPIADOR', '2', 'Modifica descripcion.'), ('139', '2013-10-17 22:36:59', '1', '14', '107', 'BRILLANCE / BRILLO', '1', ''), ('140', '2013-10-17 22:37:47', '1', '14', '108', 'REVITALIZE / REVITALIZADOR', '1', ''), ('141', '2013-10-17 22:38:41', '1', '14', '109', 'PORTABLE LIGHT / LÁMPARA PORTÁTIL', '1', ''), ('142', '2013-10-17 22:39:57', '1', '14', '110', 'STARTER KIT', '1', ''), ('143', '2013-10-17 22:40:53', '1', '14', '111', 'ESMALTADO PERMANENTE LED', '1', ''), ('144', '2013-10-17 22:41:29', '1', '14', '112', 'PREP/PREPARADOR', '1', ''), ('145', '2013-10-17 22:42:13', '1', '14', '113', 'STRUCTURE/BASE', '1', ''), ('146', '2013-10-17 22:42:38', '1', '14', '114', 'PURIFY/LIMPIADOR', '1', ''), ('147', '2013-10-17 22:43:06', '1', '14', '115', 'ERASE/REMOVEDOR', '1', ''), ('148', '2013-10-17 22:44:04', '1', '14', '107', 'BRILLIANCE / BRILLO', '2', 'Modifica nombre.'), ('149', '2013-10-17 22:44:32', '1', '14', '116', 'BRILLIANCE / BRILLO', '1', ''), ('150', '2013-10-17 22:45:09', '1', '14', '117', 'REVITALIZE / REVITALIZADOR', '1', ''), ('151', '2013-10-17 22:46:09', '1', '14', '118', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL', '1', ''), ('152', '2013-10-17 22:46:46', '1', '14', '119', 'PRO KIT', '1', ''), ('153', '2013-10-17 22:52:29', '1', '14', '120', 'TIPS & TRICKS', '1', ''), ('154', '2013-10-17 22:53:45', '1', '14', '121', 'MANICURA FRANCESA', '1', ''), ('155', '2013-10-17 22:54:51', '1', '14', '122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', '1', ''), ('156', '2013-10-17 22:59:41', '1', '14', '123', 'MUST HAVES KIT ', '1', ''), ('157', '2013-10-17 23:00:33', '1', '14', '124', 'REMOVE', '1', ''), ('158', '2013-10-17 23:01:47', '1', '14', '125', 'ACCESORIES KIT', '1', ''), ('159', '2013-10-17 23:02:08', '1', '14', '124', 'REMOVE', '2', 'Modifica descripcion.'), ('160', '2013-10-17 23:02:31', '1', '14', '123', 'MUST HAVES KIT ', '2', 'Modifica descripcion.'), ('161', '2013-11-08 18:14:26', '2', '13', '4', 'Morado', '1', ''), ('162', '2013-11-08 18:28:49', '2', '15', '1', 'zeickan', '1', ''), ('163', '2013-11-08 18:29:11', '2', '15', '1', 'zeickan', '2', 'Modifica paid.'), ('164', '2013-11-08 18:30:06', '2', '15', '1', 'zeickan', '2', 'Modifica paid.'), ('165', '2013-11-13 18:40:26', '2', '14', '9', 'Richfamous', '2', 'Modifica colores.'), ('166', '2013-11-13 18:40:35', '2', '14', '6', 'Vipaccess', '2', 'Modifica colores.'), ('167', '2013-11-13 18:40:41', '2', '14', '7', 'Always slate', '2', 'Modifica colores.'), ('168', '2013-11-13 18:40:49', '2', '14', '8', 'Runaway Red', '2', 'Modifica colores.');
COMMIT;

-- ----------------------------
--  Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL,
	`app_label` varchar(100) NOT NULL,
	`model` varchar(100) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `app_label` (app_label, model)
) ENGINE=`MyISAM` AUTO_INCREMENT=18 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `django_content_type`
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES ('1', 'permission', 'auth', 'permission'), ('2', 'group', 'auth', 'group'), ('3', 'user', 'auth', 'user'), ('4', 'content type', 'contenttypes', 'contenttype'), ('5', 'session', 'sessions', 'session'), ('6', 'site', 'sites', 'site'), ('7', 'log entry', 'admin', 'logentry'), ('8', 'rango', 'humano', 'rango'), ('9', 'role', 'humano', 'role'), ('10', 'tipo', 'humano', 'tipo'), ('11', 'colaborador', 'humano', 'colaborador'), ('12', 'categoria', 'store', 'categoria'), ('13', 'colores', 'store', 'colores'), ('14', 'producto', 'store', 'producto'), ('15', 'pedido', 'store', 'pedido'), ('16', 'user profile', 'userprofile', 'userprofile'), ('17', 'PayPal IPN', 'ipn', 'paypalipn');
COMMIT;

-- ----------------------------
--  Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
	`session_key` varchar(40) NOT NULL,
	`session_data` longtext NOT NULL,
	`expire_date` datetime NOT NULL,
	PRIMARY KEY (`session_key`),
	INDEX `django_session_b7b81f0c` (expire_date)
) ENGINE=`MyISAM` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `django_session`
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('0qxz4xdwriwzfesbr9m79xuyafud3l0q', 'Y2U0YWUxZGI0YTRlOGVhM2FjYWRiZWIyZjJjOWM4ZmJiMGE1NjYxNTqAAn1xAShVBmJhc2tldF1xAihVATZVATdVAThVAjExcQNVATllVQ1fYXV0aF91c2VyX2lkigECVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kdS4=', '2013-11-29 01:04:42'), ('8eu8h4xecorq9tv5dewy062wxiyxhbl9', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-29 20:53:40'), ('95x00tv02kjytvfb6o46umwwxh1agman', 'YTBjMGJkYWIxOWE3MmZiNTg0Yzk3Njc4NTU0MjcwOGZhYTU4ZGM2ZTqAAn1xAShVBmJhc2tldF1xAihVATdVATZVATlVAThlVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigECdS4=', '2013-11-27 18:43:15'), ('8fspsd8rgn15z1v183t4vd3cu1ganljm', 'OTdmMmUzZWZmZTE5ZDg5ODk3YzcwMzUyNDY5ZGUzYjk5ZDllMTFiMTqAAn1xAS4=', '2014-04-11 20:53:13'), ('d2307nf4ay452ra7ous98x43jbsne3n4', 'MzgzMzcyMTNiNWU4YWQxOGQ3OGE4ZmMyOWYxMTdlYTIzNjU0ZWI4MjqAAn1xAShVBmJhc2tldF1xAihVATRVATVVAThVAzEyMXEDVQMxMTFxBFUDMTI0cQVlVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigECdS4=', '2014-04-11 01:46:17'), ('b9xnjjq4i1mbajph15xxttzv5km6k7k4', 'MzIyYWNlYjA4ODFiY2QwODkxYjAwYjlkZDA0ZDlmODYzMWIxZjBkMzqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu', '2013-11-15 17:28:28'), ('c05twm5xnzakcl8ftdwkri5o7o99t3kp', 'NzFjOTU2ZTk0OTNmNzMxMzc2ODg3YTNiNDI4N2I2YzgwMmViYjM0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-31 19:03:14'), ('cqfci5etd33lkd4uggj74iacqsgmjk42', 'OWY5ZDFmZjlkNGY4MmQ1ODgzNjFhYWEzZDIyMTUxZTJkMGU3NjkxMjqAAn1xAShVBmJhc2tldF1xAihVATJVATRVATVlVQ1fYXV0aF91c2VyX2lkigECVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kdS4=', '2013-12-06 00:46:23'), ('f5k6ap8zys0bgjtyn98kppts6mp4o5ju', 'NzFjOTU2ZTk0OTNmNzMxMzc2ODg3YTNiNDI4N2I2YzgwMmViYjM0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-11-25 23:25:35'), ('m5lsa7xk9rqn974u3tt1dyv3ekgw7s1q', 'NzFjOTU2ZTk0OTNmNzMxMzc2ODg3YTNiNDI4N2I2YzgwMmViYjM0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-11-15 19:36:04'), ('mavobmr2b7ot848ksvell1av95zw2oc6', 'Y2EwNGUzNzEyMzkyMWQyNWQwMDU4MGVmMzJlYWJjOTdiY2E4NzM4NjqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==', '2014-04-10 01:29:06'), ('mgxx1n9fau8mh3qfvg7pxcx34ik5u2fs', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-31 18:39:51'), ('ogf9zueoi28uloacymzljtcm408gi3bj', 'NzFjOTU2ZTk0OTNmNzMxMzc2ODg3YTNiNDI4N2I2YzgwMmViYjM0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-11-22 17:58:35'), ('vw9agq8l6muz6u0phkvyv1l0m4f6y0bf', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-31 18:39:55'), ('hbcizhgqnahp1ux51eoeazy7un8ww7r3', 'YjhlMzhhN2E0MzU3OWYxYWIyNmY5MWEwZDMyMzc5MjVlMTA1NDk4MDqAAn1xAShVBmJhc2tldF1xAihVAzEwMnEDVQMxMDNxBFUDMTA2cQVVAzEwN3EGVQMxMTBxB1UDMTA5cQhVAzEwOHEJZVUNX2F1dGhfdXNlcl9pZIoBA1USX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHUu', '2014-04-15 00:27:56');
COMMIT;

-- ----------------------------
--  Table structure for `django_site`
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`domain` varchar(100) NOT NULL,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=2 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `django_site`
-- ----------------------------
BEGIN;
INSERT INTO `django_site` VALUES ('1', 'example.com', 'example.com');
COMMIT;

-- ----------------------------
--  Table structure for `humano_colaborador`
-- ----------------------------
DROP TABLE IF EXISTS `humano_colaborador`;
CREATE TABLE `humano_colaborador` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`email` varchar(255) NOT NULL,
	`twitter` varchar(50) NOT NULL,
	`pais` varchar(80) NOT NULL,
	`rango_id` int(11) NOT NULL,
	`role_id` int(11) NOT NULL,
	`tipo_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `humano_colaborador_f03de403` (rango_id),
	INDEX `humano_colaborador_278213e1` (role_id),
	INDEX `humano_colaborador_acf1eac4` (tipo_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `humano_rango`
-- ----------------------------
DROP TABLE IF EXISTS `humano_rango`;
CREATE TABLE `humano_rango` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `humano_role`
-- ----------------------------
DROP TABLE IF EXISTS `humano_role`;
CREATE TABLE `humano_role` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `humano_tipo`
-- ----------------------------
DROP TABLE IF EXISTS `humano_tipo`;
CREATE TABLE `humano_tipo` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`titulo` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=1 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Table structure for `paypal_ipn`
-- ----------------------------
DROP TABLE IF EXISTS `paypal_ipn`;
CREATE TABLE `paypal_ipn` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`business` varchar(127) NOT NULL,
	`charset` varchar(32) NOT NULL,
	`custom` varchar(255) NOT NULL,
	`notify_version` decimal(64,2) DEFAULT NULL,
	`parent_txn_id` varchar(19) NOT NULL,
	`receiver_email` varchar(127) NOT NULL,
	`receiver_id` varchar(127) NOT NULL,
	`residence_country` varchar(2) NOT NULL,
	`test_ipn` tinyint(1) NOT NULL,
	`txn_id` varchar(19) NOT NULL,
	`txn_type` varchar(128) NOT NULL,
	`verify_sign` varchar(255) NOT NULL,
	`address_country` varchar(64) NOT NULL,
	`address_city` varchar(40) NOT NULL,
	`address_country_code` varchar(64) NOT NULL,
	`address_name` varchar(128) NOT NULL,
	`address_state` varchar(40) NOT NULL,
	`address_status` varchar(11) NOT NULL,
	`address_street` varchar(200) NOT NULL,
	`address_zip` varchar(20) NOT NULL,
	`contact_phone` varchar(20) NOT NULL,
	`first_name` varchar(64) NOT NULL,
	`last_name` varchar(64) NOT NULL,
	`payer_business_name` varchar(127) NOT NULL,
	`payer_email` varchar(127) NOT NULL,
	`payer_id` varchar(13) NOT NULL,
	`auth_amount` decimal(64,2) DEFAULT NULL,
	`auth_exp` varchar(28) NOT NULL,
	`auth_id` varchar(19) NOT NULL,
	`auth_status` varchar(9) NOT NULL,
	`exchange_rate` decimal(64,16) DEFAULT NULL,
	`invoice` varchar(127) NOT NULL,
	`item_name` varchar(127) NOT NULL,
	`item_number` varchar(127) NOT NULL,
	`mc_currency` varchar(32) NOT NULL,
	`mc_fee` decimal(64,2) DEFAULT NULL,
	`mc_gross` decimal(64,2) DEFAULT NULL,
	`mc_handling` decimal(64,2) DEFAULT NULL,
	`mc_shipping` decimal(64,2) DEFAULT NULL,
	`memo` varchar(255) NOT NULL,
	`num_cart_items` int(11) DEFAULT NULL,
	`option_name1` varchar(64) NOT NULL,
	`option_name2` varchar(64) NOT NULL,
	`payer_status` varchar(10) NOT NULL,
	`payment_date` datetime DEFAULT NULL,
	`payment_gross` decimal(64,2) DEFAULT NULL,
	`payment_status` varchar(9) NOT NULL,
	`payment_type` varchar(7) NOT NULL,
	`pending_reason` varchar(14) NOT NULL,
	`protection_eligibility` varchar(32) NOT NULL,
	`quantity` int(11) DEFAULT NULL,
	`reason_code` varchar(15) NOT NULL,
	`remaining_settle` decimal(64,2) DEFAULT NULL,
	`settle_amount` decimal(64,2) DEFAULT NULL,
	`settle_currency` varchar(32) NOT NULL,
	`shipping` decimal(64,2) DEFAULT NULL,
	`shipping_method` varchar(255) NOT NULL,
	`tax` decimal(64,2) DEFAULT NULL,
	`transaction_entity` varchar(7) NOT NULL,
	`auction_buyer_id` varchar(64) NOT NULL,
	`auction_closing_date` datetime DEFAULT NULL,
	`auction_multi_item` int(11) DEFAULT NULL,
	`for_auction` decimal(64,2) DEFAULT NULL,
	`amount` decimal(64,2) DEFAULT NULL,
	`amount_per_cycle` decimal(64,2) DEFAULT NULL,
	`initial_payment_amount` decimal(64,2) DEFAULT NULL,
	`next_payment_date` datetime DEFAULT NULL,
	`outstanding_balance` decimal(64,2) DEFAULT NULL,
	`payment_cycle` varchar(32) NOT NULL,
	`period_type` varchar(32) NOT NULL,
	`product_name` varchar(128) NOT NULL,
	`product_type` varchar(128) NOT NULL,
	`profile_status` varchar(32) NOT NULL,
	`recurring_payment_id` varchar(128) NOT NULL,
	`rp_invoice_id` varchar(127) NOT NULL,
	`time_created` datetime DEFAULT NULL,
	`amount1` decimal(64,2) DEFAULT NULL,
	`amount2` decimal(64,2) DEFAULT NULL,
	`amount3` decimal(64,2) DEFAULT NULL,
	`mc_amount1` decimal(64,2) DEFAULT NULL,
	`mc_amount2` decimal(64,2) DEFAULT NULL,
	`mc_amount3` decimal(64,2) DEFAULT NULL,
	`password` varchar(24) NOT NULL,
	`period1` varchar(32) NOT NULL,
	`period2` varchar(32) NOT NULL,
	`period3` varchar(32) NOT NULL,
	`reattempt` varchar(1) NOT NULL,
	`recur_times` int(11) DEFAULT NULL,
	`recurring` varchar(1) NOT NULL,
	`retry_at` datetime DEFAULT NULL,
	`subscr_date` datetime DEFAULT NULL,
	`subscr_effective` datetime DEFAULT NULL,
	`subscr_id` varchar(19) NOT NULL,
	`username` varchar(64) NOT NULL,
	`case_creation_date` datetime DEFAULT NULL,
	`case_id` varchar(14) NOT NULL,
	`case_type` varchar(24) NOT NULL,
	`receipt_id` varchar(64) NOT NULL,
	`currency_code` varchar(32) NOT NULL,
	`handling_amount` decimal(64,2) DEFAULT NULL,
	`transaction_subject` varchar(255) NOT NULL,
	`ipaddress` char(15) NOT NULL,
	`flag` tinyint(1) NOT NULL,
	`flag_code` varchar(16) NOT NULL,
	`flag_info` longtext NOT NULL,
	`query` longtext NOT NULL,
	`response` longtext NOT NULL,
	`created_at` datetime NOT NULL,
	`updated_at` datetime NOT NULL,
	`from_view` varchar(6) DEFAULT NULL,
	PRIMARY KEY (`id`),
	INDEX `paypal_ipn_c535258e` (txn_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=2 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `paypal_ipn`
-- ----------------------------
BEGIN;
INSERT INTO `paypal_ipn` VALUES ('1', 'seller@paypalsandbox.com', '', 'xyz123', '2.40', '', 'seller@paypalsandbox.com', 'seller@paypalsandbox.com', 'US', '1', '586726316', 'cart', 'AQAJbhmMSpTcXapETTLJlSe4lWn0AoxcUcEjo1bPbnJqubRikwtjruSj', 'United States', 'San Jose', 'US', 'John Smith', 'CA', 'confirmed', '123, any street', '95131', '', 'John', 'Smith', '', 'buyer@paypalsandbox.com', 'TESTBUYERID01', null, '', '', '', null, 'abc1234', '', '', 'USD', '0.44', '12.34', '2.06', '3.02', '', null, '', '', 'unverified', '2013-11-08 16:32:48', null, 'Completed', 'instant', '', '', null, '', null, null, '', null, '', '2.02', '', '', null, null, null, null, null, null, null, null, '', '', '', '', '', '', '', null, null, null, null, null, null, null, '', '', '', '', '', null, '', null, null, null, '', '', null, '', '', '', '', null, '', '173.0.81.1', '1', '', 'Invalid receiver_email. (seller@paypalsandbox.com)', 'last_name=Smith&txn_id=586726316&receiver_email=seller%40paypalsandbox.com&payment_status=Completed&tax=2.02&payer_status=unverified&residence_country=US&invoice=abc1234&address_state=CA&item_name1=something&txn_type=cart&address_country=United+States&payment_date=10%3A32%3A48+8+Nov+2013+PST&first_name=John&mc_shipping=3.02&item_number1=AK-1234&mc_gross1=9.34&custom=xyz123&notify_version=2.4&address_name=John+Smith&address_street=123%2C+any+street&test_ipn=1&receiver_id=seller%40paypalsandbox.com&business=seller%40paypalsandbox.com&mc_handling1=1.67&payer_id=TESTBUYERID01&verify_sign=AQAJbhmMSpTcXapETTLJlSe4lWn0AoxcUcEjo1bPbnJqubRikwtjruSj&mc_handling=2.06&address_zip=95131&address_country_code=US&address_city=San+Jose&address_status=confirmed&mc_fee=0.44&mc_currency=USD&payer_email=buyer%40paypalsandbox.com&payment_type=instant&mc_gross=12.34&mc_shipping1=1.02', 'VERIFIED', '2013-11-08 18:32:53', '2013-11-08 18:32:53', '');
COMMIT;

-- ----------------------------
--  Table structure for `store_categoria`
-- ----------------------------
DROP TABLE IF EXISTS `store_categoria`;
CREATE TABLE `store_categoria` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`nombre` varchar(200) NOT NULL,
	`slug` varchar(50) NOT NULL,
	`parent_id` int(11) DEFAULT NULL,
	`activo` tinyint(1) NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `store_categoria_f52cfca0` (slug),
	INDEX `store_categoria_410d0aac` (parent_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=8 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_categoria`
-- ----------------------------
BEGIN;
INSERT INTO `store_categoria` VALUES ('1', 'Productos', 'productos', null, '1'), ('2', 'Esmaltes', 'esmaltes', '1', '1'), ('3', 'Esmaltado permanente LED', 'esmaltado-permanente-led', '1', '1'), ('4', 'Starter Kit', 'starter-kit', '1', '1'), ('5', 'Pro Kit', 'pro-kit', '1', '1'), ('6', 'Nail Art Kits', 'nail-art-kits', '1', '1'), ('7', 'Accesorios', 'accesorios', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `store_colores`
-- ----------------------------
DROP TABLE IF EXISTS `store_colores`;
CREATE TABLE `store_colores` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`color` varchar(150) NOT NULL,
	`imagen` varchar(100) DEFAULT NULL,
	`temporada` tinyint(1) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=5 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_colores`
-- ----------------------------
BEGIN;
INSERT INTO `store_colores` VALUES ('1', 'Rojo', '', '1'), ('2', 'Rosa', '', '1'), ('3', 'Azul', '', '1'), ('4', 'Morado', '', '1');
COMMIT;

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
	PRIMARY KEY (`id`)
) ENGINE=`MyISAM` AUTO_INCREMENT=2 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_pedido`
-- ----------------------------
BEGIN;
INSERT INTO `store_pedido` VALUES ('1', '3', '0', '24jLmTRtZZRGvAtqU5zEYROq7jf5lBBt', null, '487.83', '199', '686.83', 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Aguascalientes', 'Mexico', null, 'Laura Guzman', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Aguascalientes', 'Mexico', null);
COMMIT;

-- ----------------------------
--  Table structure for `store_pedido_productos`
-- ----------------------------
DROP TABLE IF EXISTS `store_pedido_productos`;
CREATE TABLE `store_pedido_productos` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`pedido_id` int(11) NOT NULL,
	`producto_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `pedido_id` (pedido_id, producto_id),
	INDEX `store_pedido_productos_7cb5251d` (pedido_id),
	INDEX `store_pedido_productos_1635d9bd` (producto_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=15 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=FIXED COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_pedido_productos`
-- ----------------------------
BEGIN;
INSERT INTO `store_pedido_productos` VALUES ('14', '1', '110'), ('13', '1', '109'), ('12', '1', '108'), ('11', '1', '107'), ('10', '1', '106'), ('9', '1', '103'), ('8', '1', '102');
COMMIT;

-- ----------------------------
--  Table structure for `store_producto`
-- ----------------------------
DROP TABLE IF EXISTS `store_producto`;
CREATE TABLE `store_producto` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`nombre` varchar(100) NOT NULL,
	`descripcion` longtext NOT NULL,
	`categoria_id` int(11) NOT NULL,
	`imagen` varchar(100) NOT NULL,
	`precio` decimal(10,2) DEFAULT NULL,
	`stock` tinyint(1) NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `store_producto_5f2644f7` (categoria_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=126 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=DYNAMIC COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_producto`
-- ----------------------------
BEGIN;
INSERT INTO `store_producto` VALUES ('2', 'Azure Allure', 'Elige de nuestra extensa colección un color con un brillo increíble y además de larga duración.', '3', '', '69.69', '1'), ('4', 'Blase Beauty', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_blase_beauty_bottle.png', '69.69', '1'), ('5', 'Blushful Moments', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_blushful_moments_bottle.png', '69.69', '1'), ('6', 'Vipaccess', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_20600_rcm_vipaccess.png', '69.69', '1'), ('7', 'Always slate', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_20601_rcm_alwaysslate.png', '69.69', '1'), ('8', 'Runaway Red', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_20602_rcm_runaway_red.png', '69.69', '1'), ('9', 'Richfamous', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_20603_rcm_richfamous.png', '69.69', '1'), ('10', 'Scandalous', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottlw_505_rcm_scandalous.png', '69.69', '1'), ('11', 'Callagent', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_callagentbottle.png', '69.69', '1'), ('12', 'Casanovas Kiss', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_casanovas_kiss_bottle.png', '69.69', '1'), ('13', 'Champagne nights', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_champagnenights_1.png', '69.69', '1'), ('14', 'Creme de la Creme', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_creme_de_la_creme_bottle.png', '69.69', '1'), ('15', 'Diva', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_divabottle.png', '69.69', '1'), ('16', 'Espresso', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_espressobottle.png', '69.69', '1'), ('17', 'Martini', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_martini.png', '69.69', '1'), ('18', 'Meet me in my konos', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_meet_me_in_mykonos.png', '69.69', '1'), ('19', 'Paradiso Blue', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_paradiso_blue.png', '69.69', '1'), ('20', 'Paradiso Blue', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_paradiso_blue_1.png', '69.69', '1'), ('21', 'Parisian Chic', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_parisian_chic_bottle.png', '69.69', '1'), ('22', 'Publicity', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_publicitybottle.png', '69.69', '1'), ('23', '9 inch heels', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_9inchheels.png', '69.69', '1'), ('24', 'Simply Adorable', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_107_simply_adorable_bottle_1.png', '69.69', '1'), ('25', 'I simply love your nails', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_111_i_simply_love_your_nails_bottle_1.png', '69.69', '1'), ('26', 'Style Saavy', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_113_style_saavy_bottle.png', '69.69', '1'), ('27', 'Shimmery Silouette', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_119_shimmery_silouette_bottle_1.png', '69.69', '1'), ('28', 'Only in hollywood', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_133_only_in_hollywood_bottle_1.png', '69.69', '1'), ('29', 'One of a kind', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_141_one_of_a_kind_bottle_1.png', '69.69', '1'), ('30', 'Haule couture', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_143_haule_couture_bottle.png', '69.69', '1'), ('31', 'Dripping in luxury', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_172_dripping_in_luxury_bottle.png', '69.69', '1'), ('32', 'My inspiration', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_174_my_inspiration_bottle.png', '69.69', '1'), ('33', 'Camera flash', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_176_camera_flash_bottle_1.png', '69.69', '1'), ('34', 'Tinsel town', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_178_tinsel_town_bottle.png', '69.69', '1'), ('35', 'Thank you mom & dad', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_180_thank_you_momdad_bottle.png', '69.69', '1'), ('36', 'I am so honored', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_182_i_am_so_honored_bottle.png', '69.69', '1'), ('37', 'Wow', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_184_wow_bottle.png', '69.69', '1'), ('38', 'The perfect pair', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_186_the_perfect_pair_bottle_1.png', '69.69', '1'), ('39', 'Star power', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_188_star_power_bottle_1.png', '69.69', '1'), ('40', 'What a surprise', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_190_what_a_surprise_bottle_1.png', '69.69', '1'), ('41', 'Who are you wearing', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_192_who_are_you_wearing_bottle.png', '69.69', '1'), ('42', 'Award winning', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_503_award_winning_bottle_1.png', '69.69', '1'), ('43', 'A dream come true', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_adreamcometrue.png', '69.69', '1'), ('44', 'After party playful', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_afterpartyplayful.png', '69.69', '1'), ('45', 'And the winner is', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_andthewinneris.png', '69.69', '1'), ('46', 'An eveningtore member bot', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_aneveningtorememberbot.png', '69.69', '1'), ('47', 'Best dressed', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_bestdressed.png', '69.69', '1'), ('48', 'Black stretch limo', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_blackstretchlimo.png', '69.69', '1'), ('49', 'Camera shy', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_camerashy.png', '69.69', '1'), ('50', 'Can did moment', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_candidmoment.png', '69.69', '1'), ('51', 'Draped in rubies bot', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_drapedinrubiesbot.png', '69.69', '1'), ('52', 'Drop dead gorgeous', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_dropdeadgorgeous.png', '69.69', '1'), ('53', 'Envelope please', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_envelopeplease.png', '69.69', '1'), ('54', 'Fake bake', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_fakebake.png', '69.69', '1'), ('55', 'Glitterazzi', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_glitterazzi.png', '69.69', '1'), ('56', 'Glitz & glamorous ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_glitzglamorous.png', '69.69', '1'), ('57', 'Its not a taupe', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_itsnotataupe.png', '69.69', '1'), ('58', 'Just marvelous darling', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_justmarvelousdarling.png', '69.69', '1'), ('59', 'Leading lady ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_leadinglady.png', '69.69', '1'), ('60', 'Lighter shade of gray', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_lightershadeofgray-1.png', '69.69', '1'), ('61', 'Love those baby blues ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_lovethosebabyblues.png', '69.69', '1'), ('62', 'Midnight affair', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_midnightaffair.png', '69.69', '1'), ('63', 'My favourite designer ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_myfavouritedesigner.png', '69.69', '1'), ('64', 'Nervous with anticipation', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_nervouswithanticipation.png', '69.69', '1'), ('65', 'Nominated for', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_nominatedfor.png', '69.69', '1'), ('66', 'Oh laliscious', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_ohlaliscious.png', '69.69', '1'), ('67', 'Oh so 90210', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_ohso90210.png', '69.69', '1'), ('68', 'Paparazzied', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_paparazzied.png', '69.69', '1'), ('69', 'Plum up the volume', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_plumupthevolume.png', '69.69', '1'), ('70', 'Red carpet reddy', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_redcarpetreddy.png', '69.69', '1'), ('71', 'Simplys tunning', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_simplystunning.png', '69.69', '1'), ('72', 'Take a bow', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_takeabow.png', '69.69', '1'), ('73', 'Thank you thank you', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_thankyouthankyou.png', '69.69', '1'), ('74', 'The night is young', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_thenightisyoung.png', '69.69', '1'), ('75', 'Toast of the town', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_toastofthetown.png', '69.69', '1'), ('76', 'Tre chic', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_trechic.png', '69.69', '1'), ('77', 'Violetta darling', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_violettadarling.png', '69.69', '1'), ('78', 'White hot', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_whitehot.png', '69.69', '1'), ('79', 'You like me you really like me', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_rcm_youlikemeyoureallylikeme.png', '69.69', '1'), ('80', 'Sands crete', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_sands_crete.png', '69.69', '1'), ('81', 'Shazzam', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_shazzambottle.png', '69.69', '1'), ('82', 'Show me the money', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_show_me_the_money_small.png', '69.69', '1'), ('83', 'Skys the limit', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_skys_the_limit_bottle.png', '69.69', '1'), ('84', 'Sunset over sag harbour', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_smallthumb_rcm_20176_sunset_over_sag_harbour.png', '69.69', '1'), ('85', 'Socialite status', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_smallthumb_rcm_20177_socialite_status.png', '69.69', '1'), ('86', 'Country club chic', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_smallthumb_rcm_20178_country_club_chic.png', '69.69', '1'), ('87', 'Day party diva', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_smallthumb_rcm_20179_day_party_diva.png', '69.69', '1'), ('88', 'Mimosas by the pool 2', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_smallthumb_rcm_20180_mimosas_by_the_pool_2.png', '69.69', '1'), ('89', 'High society', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_smallthumb_rcm_20181_high_society.png', '69.69', '1'), ('90', 'Swagg in bottle', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_swagginbottle.png', '69.69', '1'), ('91', 'Tangerine on the rocks', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_tangerine_on_the_rocks_small_1.png', '69.69', '1'), ('92', 'Behind the scene', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_behindthescene.png', '69.69', '1'), ('93', 'Front row fab', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_frontrowfab.png', '69.69', '1'), ('94', 'In style', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_instyle.png', '69.69', '1'), ('95', 'On the cat walk', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_onthecatwalk.png', '69.69', '1'), ('96', 'On trend', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_ontrend.png', '69.69', '1'), ('97', 'Own the runway 2', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_bottle_own_the_runway_2.png', '69.69', '1'), ('98', 'Dress for success', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_dress_for_success_bottle.png', '69.69', '1'), ('99', 'Make up time', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_make_up_time_bottle.png', '69.69', '1'), ('100', 'Shimmering gown', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_my_shimmering_gown_bottle.png', '69.69', '1'), ('101', 'Perfect high heels', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', '3', 'documents/2013/10/17/smallThumb_perfect_high_heels_bottle.png', '69.69', '1'), ('102', 'ESMALTADO PERMANENTE LED', 'ESMALTADO PERMANENTE LED\r\nDisponible en una amplia selección de colores. Se aplica como un esmalte, y seca durante 3 minutos (para tonos oscuros) y durante 2 minutos (para tonos claros) en la lámpara Portable Light o durante 45 segundos en la lámpara Professional LED Light.\r\n\r\nSemanas y semanas de larga duración del color. ¡No se astilla ni se cae! Y, se retira completamente en 10 - 15 minutos.\r\n', '4', 'documents/2013/10/17/ESMALTADO_PERMANENTE_LED.jpg', '69.69', '1'), ('103', 'PREP/PREPARADOR', 'PREP/PREPARADOR\r\nMax Adhesion Sanitizer (Limpiador de máxima adhesión)\r\nDeshidrata la uña para una adhesión máxima del producto.\r\n', '4', 'documents/2013/10/17/Prep-Preparador.jpg', '69.69', '1'), ('104', 'STRUCTURE/BASE', 'Base Coat Gel\r\nRCM STRUCTURE\r\nSe fija a la uña sin dañarla, asegurando una larga duración del color. Seca en la lámpara Portable Light durante 1 minuto o durante 45 segundos en la lámpara Professional LED Light.\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Structure.jpg', '69.69', '1'), ('105', 'PURIFY/LIMPIADOR', 'PURIFY/LIMPIADOR\r\nPre & Post Application Cleanser (Limpiador antes y después)\r\nEspecialmente formulado para trabajar junto al producto RCM Brilliance/Top Coat. RCM Purify asegura un acabado de máximo brillo sin residuos pegajosos y sin resecar la piel. Úsalo para limpiar y retirar la superficie pegajosa después de la aplicación de RCM Brilliance/Top Coat.\r\n\r\nNOTA: \r\nNo limpie entre capas; sólo después de la aplicación y secado de RCM Brilliance/Top Coat. Cada capa se mantendrá pegajosa hasta después del secado de RCM Brilliance/Top Coat y la aplicación de RCM Purify.\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Purify.jpg', '69.69', '1'), ('106', 'ERASE/REMOVEDOR', 'ERASE/REMOVEDOR\r\nGel Nail Polish Remover (Removedor de Gel Polish)\r\nTiene aditivos especialmente acondicionados para evitar que la piel se reseque y mantener una uña saludable. Elimina la aplicación RCM LED Gel Polish en 10 – 15 minutos.\r\n\r\nNota:\r\nLimar suavemente la superficie de la uña antes de iniciar el proceso con el removedor para así eliminar el sello creado por el producto RCM Brilliance.\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Erase.jpg', '69.69', '1'), ('107', 'BRILLIANCE / BRILLO', 'BRILLANCE / BRILLO\r\nSeal & Shine Top Coat Gel (Top Coat Gel)\r\nRCM Brilliance/Top Coat es la capa final para sellar la aplicación del color con el máximo brillo. Es un producto en Gel que puede ser fácil y rápidamente retirado con RCM Erase/Removedor. RCM Brilliance/Top Coat seca durante 2 minutos en la lámpara Portable Light o secar durante 45 segundos en la lámpara Professional LED Light.\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Brilliance.jpg', '69.69', '1'), ('108', 'REVITALIZE / REVITALIZADOR', 'REVITALIZE / REVITALIZADOR\r\nNourishing Cuticle Oil (Aceite de cutículas nutritivo)\r\nRCM Revitalize Nourishing Cuticle Oil restaura la humedad en la cutícula y piel alrededor de la uña. Revitalize es una mezcla única de Aceite de Semilla de Uva, Aceite de Nuez de Kukui, Sésamo y Vitamina E. Es un producto versátil que puede ser usado en varias aplicaciones para restaurar los aceites naturales.\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Revitalize.jpg', '69.69', '1'), ('109', 'PORTABLE LIGHT / LÁMPARA PORTÁTIL', 'PORTABLE LIGHT / LÁMPARA PORTÁTIL\r\nLámpara portátil a pilas\r\n\r\nLa Lámpara Portátil RCM es una lámpara LED que funciona a pilas y seca el Esmaltado Permanente Red Carpet Manicure para una manicura Red Carpet. La Lámpara Portátil es perfecta para viajar o para su uso en el hogar y funciona para secar manos y pies. La Lámpara Portátil Red Carpet Manicure secará el producto Structure/Base Coat en 1 minuto, el Color en 3 minutos y el producto Brilliance/Top Coat en 2 minutos.\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Portable-Light.jpg', '69.69', '1'), ('110', 'STARTER KIT', 'STARTER KIT\r\nTodas las herramientas para una Manicura con Red Carpet – Lámpara Portátil de LED, color y accesorios – para una manicura de gel en minutos. \r\nEl Starter Kit de Manicura Red Carpet contiene todo lo necesario para conseguir una manicura profesional en la comodidad de casa con una calidad de salón profesional. Nuestra Lámpara Portátil LED RCM está diseñada especialmente para secar de forma eficiente Structure/Base Coat, Color y Brilliance/Top Coat en minutos. La Manicura RED CARPET durará hasta tres semanas.\r\n\r\nContiene:\r\n•	Portable LED Light - Lámpara Portátil de LED a pilas. Pilas NO incluidas (requiere 4 pilas AA).\r\n•	Prep - MAX ADHESION PREP. Preparador.\r\n•	Structure - BASE COAT GEL. Base.\r\n•	Brilliance - SEAL & SHINE TOP COAT GEL. Brillo Final.\r\n•	Revitalize - NOURISHING CUTICLE OIL.  Aceite de Cutículas nutritivo.\r\n•	Red Carpet Reddy - LED Gel Polish. Color.\r\n•	Purify - PRE & POST APPLICATION CLEANSER. Limpiador final.\r\n•	Erase - GEL NAIL POLISH REMOVER. Eliminador.\r\n•	RCM Manual de Instrucciones\r\n', '4', 'documents/2013/10/17/Red-Carpet-Manicure-Starter-Kit.jpg', '69.69', '1'), ('111', 'ESMALTADO PERMANENTE LED', 'ESMALTADO PERMANENTE LED\r\nDisponible en una amplia selección de colores. Se aplica como un esmalte, y seca durante 3 minutos (para tonos oscuros) y durante 2 minutos (para tonos claros) en la lámpara Portable Light o durante 45 segundos en la lámpara Professional LED Light.\r\n\r\nSemanas y semanas de larga duración del color. ¡No se astilla ni se cae! Y, se retira completamente en 10 - 15 minutos.\r\n', '5', 'documents/2013/10/17/ESMALTADO_PERMANENTE_LED_1.jpg', '69.69', '1'), ('112', 'PREP/PREPARADOR', 'PREP/PREPARADOR\r\nMax Adhesion Sanitizer (Limpiador de máxima adhesión)\r\nDeshidrata la uña para una adhesión máxima del producto.\r\n', '5', 'documents/2013/10/17/Prep-Preparador_1.jpg', '69.69', '1'), ('113', 'STRUCTURE/BASE', 'Base Coat Gel\r\nRCM STRUCTURE\r\nSe fija a la uña sin dañarla, asegurando una larga duración del color. Seca en la lámpara Portable Light durante 1 minuto o durante 45 segundos en la lámpara Professional LED Light.\r\n', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Structure_1.jpg', '69.69', '1'), ('114', 'PURIFY/LIMPIADOR', 'PURIFY/LIMPIADOR\r\nPre & Post Application Cleanser (Limpiador antes y después)\r\nEspecialmente formulado para trabajar junto al producto RCM Brilliance/Top Coat. RCM Purify asegura un acabado de máximo brillo sin residuos pegajosos y sin resecar la piel. Úsalo para limpiar y retirar la superficie pegajosa después de la aplicación de RCM Brilliance/Top Coat.\r\nNOTA: \r\nNo limpie entre capas; sólo después de la aplicación y secado de RCM Brilliance/Top Coat. Cada capa se mantendrá pegajosa hasta después del secado de RCM Brilliance/Top Coat y la aplicación de RCM Purify.\r\n', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Purify_1.jpg', '69.69', '1'), ('115', 'ERASE/REMOVEDOR', 'ERASE/REMOVEDOR\r\nGel Nail Polish Remover (Removedor de Gel Polish)\r\nTiene aditivos especialmente acondicionados para evitar que la piel se reseque y mantener una uña saludable. Elimina la aplicación RCM LED Gel Polish en 10 – 15 minutos.\r\nNota:\r\nLimar suavemente la superficie de la uña antes de iniciar el proceso con el removedor para así eliminar el sello creado por el producto RCM Brilliance.\r\n', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Erase_1.jpg', '69.69', '1'), ('116', 'BRILLIANCE / BRILLO', 'BRILLIANCE / BRILLO\r\nSeal & Shine Top Coat Gel (Top Coat Gel)\r\nRCM Brilliance/Top Coat es la capa final para sellar la aplicación del color con el máximo brillo. Es un producto en Gel que puede ser fácil y rápidamente retirado con RCM Erase/Removedor. RCM Brilliance/Top Coat seca durante 2 minutos en la lámpara Portable Light o secar durante 45 segundos en la lámpara Professional LED Light.\r\n', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Brilliance_1.jpg', '69.69', '1'), ('117', 'REVITALIZE / REVITALIZADOR', 'REVITALIZE / REVITALIZADOR\r\nNourishing Cuticle Oil (Aceite de cutículas nutritivo)\r\nRCM Revitalize Nourishing Cuticle Oil restaura la humedad en la cutícula y piel alrededor de la uña. Revitalize es una mezcla única de Aceite de Semilla de Uva, Aceite de Nuez de Kukui, Sésamo y Vitamina E. Es un producto versátil que puede ser usado en varias aplicaciones para restaurar los aceites naturales.\r\n', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Revitalize_1.jpg', '69.69', '1'), ('118', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL\r\nLa Lámpara LED Profesional es una lámpara LED de 6 Watt que cura el Esmaltado Permanente Red Carpet Manicure y sus accesorios para una manicura Red Carpet. La Lámpara LED Profesional es pequeña, compacta y ahorra tiempo mientras cura eficientemente el Esmaltado Permanente Red Carpet Manicure tanto en manos como en pies. La Lámpara LED Profesional curará Structure en 30 segundos, el Esmaltado Permanente y el Brilliance en 45 segundos.', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Pro-Light.jpg', '69.69', '1'), ('119', 'PRO KIT', 'PRO KIT\r\nTodas las herramientas para una Manicura Red Carpet – Lámpara de LED Portátil, color y accesorios – para una manicura gel en minutos.\r\nEl Pro Kit de Manicura Red Carpet contiene todo lo necesario para conseguir una manicura profesional en la comodidad de casa con una calidad de salón profesional. Nuestra Lámpara Portátil LED RCM está diseñada especialmente para secar de forma eficiente Structure/Base Coat, Color y Brilliance/Top Coat en minutos. La Manicura RED CARPET durará hasta tres semanas.\r\n\r\nContiene:\r\n•	Professional LED Light - Lámpara Portátil LED para secar el Esmaltado Permanente RED CARPET (Cordón y Adaptador de corriente AC incluido).\r\n•	Prep - MAX ADHESION PREP. Preparador.\r\n•	Structure - BASE COAT GEL. Base.\r\n•	Brilliance - SEAL & SHINE TOP COAT GEL. Brillo Final.\r\n•	Revitalize - NOURISHING CUTICLE OIL. Aceite de Cutículas nutritivo.\r\n•	Red Carpet Reddy - LED Gel Polish. Color.\r\n•	Purify - PRE & POST APPLICATION CLEANSER. Limpiador final.\r\n•	Erase - GEL NAIL POLISH REMOVER. Eliminador.\r\n•	Accessories Kit. Accesorios Manicura\r\n•	RCM Manual de Instrucciones\r\n', '5', 'documents/2013/10/17/Red-Carpet-Manicure-Pro-Kit.jpg', '69.69', '1'), ('120', 'TIPS & TRICKS', 'TIPS & TRICKS / UÑAS CON TOQUE ARTÍSTICO\r\nRed Carpet Manicure te da todas las herramientas y mucho más para crear diseños vanguardistas “pincelados”, “Tie Dye”, “marmoleados” o “salpicados” con nuestro Esmaltado Gel en LED. Simplemente sigue las instrucciones y…¡Viste tus uñas con obras de arte ¡Desde el diseño más sofisticado al más funky, tú decides como usar tu esmalte para\r\nexpresar la artista que hay en ti. Crea, diviértete combinando decoraciones de uñas y adhesivos y hazte tu próxima manicura con RED CARPET PRO MANICURE desde la comodidad de tu casa.\r\n\r\nContiene:\r\n•	1-Paparazzied - 9 mL - .30 fl oz e\r\n•	1-And The Winner Is - 9 mL - .30 fl oz e\r\n•	1-Ooo La Liscious - 9 mL - .30 fl oz e\r\n•	1-Black Nail Art Brush - 9 mL - .30 fl oz e\r\n•	1-Sponge\r\n•	1-Bolígrafo de puntos\r\n•	1-Aplique Floral\r\n•	1-Manual de Instrucciones\r\n', '6', 'documents/2013/10/17/Tips-n-Tricks.jpg', '69.69', '1'), ('121', 'MANICURA FRANCESA', 'MANICURA FRANCESA\r\nViste tus uñas de Romance con una manicura francesa de larga duración. Red Carpet Manicure te da todas las herramientas y mucho más para crear la manicura francesa perfecta con su Esmaltado Gel en LED. Simplemente sigue las instrucciones y… ¡et voilà! ¡Tus uñas exclamarán “¡C’est Magnifique!” ¿Cansada de aburridas manicuras? Aplica nuestras decoraciones para uñas “cristal gem appliqués” sobre tu “mani” francesa y simplemente ¡Deslumbra! Crea, diviértete y hazte tu próxima manicura francesa con RED CARPET FRENCH MANICURE desde la comodidad de tu casa. \r\n\r\nContiene:\r\n•	1-White Hot - 9 mL - .30 fl oz e\r\n•	1-Camera Shy- 9 mL - .30 fl oz e\r\n•	1-Ooo La Liscious - 9 mL - .30 fl oz e\r\n•	1-Nervous With Anticipation - 9 mL - .30 fl oz e\r\n•	1-Sponge\r\n•	2-Guías para uñas francesas (modelos surtidos)\r\n•	1-Aplique floral blanco\r\n•	3-Palitos de naranjo\r\n•	1-Manual de Instrucciones\r\n', '6', 'documents/2013/10/17/French-Manicure.jpg', '69.69', '1'), ('122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)\r\nRed Carpet Manicure te da todas las herramientas y mucho más para vestir de lujo tus uñas con gemas y joyas especialmente creadas para utilizar con nuestro Esmaltado Gel en LED. Simplemente sigue las instrucciones y…¡Presume de uñas esplendorosas¡ No subestimes tu manicura y consigue unas uñas escandalosas con decoraciones para uñas: gemas, joyas, purpurina. Crea, diviértete y hazte tu próxima manicura con RED CARPET GEMS & JEWELS MANICURE desde la comodidad de tu casa.\r\n\r\nContiene:\r\n•	1-Glitteratzzi - 9 mL - .30 fl oz e\r\n•	1-I can\'t believe It- 9 mL - .30 fl oz e\r\n•	1-Tinsel Town - 9 mL - .30 fl oz e\r\n•	1-Dazzling Violet (Violeta) - 9mL - .30 fl oz e\r\n•	1-Cosmic Glitter (Verde Onix)\r\n•	1-Starler Glitter (Azul)\r\n•	1-Rueda de Gemas\r\n•	1-Aplicador de Gemas\r\n•	2-Palitos de Naranjo\r\n•	1-Manual de Instrucciones\r\n', '6', 'documents/2013/10/17/Gems-n-Jewels.jpg', '69.69', '1'), ('123', 'MUST HAVES KIT ', 'MUST HAVES KIT \r\nEn un cómodo kit encontrarás todos los productos para la aplicación del esmaltado permanente RCM.\r\n\r\nContiene:\r\n•	Prep / Preparador de Uñas - LIMPIADOR DE MÁXIMA ADHESIÓN\r\n•	Structure - BASE COAT GEL\r\n•	Brilliance - TOP COAT GEL\r\n•	Revitalize / Revitalizador - ACEITE DE CUTÍCULAS NUTRITIVO\r\n•	Purify / Limpiador - LIMPIADOR ANTES Y DESPUÉS\r\n•	Erase - ELIMINADOR\r\n', '7', 'documents/2013/10/17/RCM-MustHaves_Kit_Box_render.jpg', '69.69', '1'), ('124', 'REMOVE', 'REMOVE / KIT REMOVEDOR\r\n¿Lista para cambiar tu color RED CARPET? ¡Es muy fácil! Con el Kit Gel Polish Removal podrás retirar tu esmaltado permanente RED CARPET sin dañar tus uñas y… ¡lista para disfrutar de un nuevo color!\r\n\r\nSigue las instrucciones:\r\n1. Rompe el sello limando suavemente la superficie de la uña con el buffer.\r\n2. Empapa la toallita con Red Carpet Manicure Erase Gel Nail Polish Remover. Envuelve la uña con el papel de aluminio cuidando que la toallita quede sobre la superficie de la uñas. Déjalo durante 10 minutos.\r\n3. Retira el papel de aluminio. Con un palito de naranjo, retira suavemente los restos del esmaltado permanente. No presiones la uñas.\r\n4. Pule la superficie de la uña ligeramente con el buffer.\r\n5. Masajea las cutículas con el aceite de cutículas Red Carpet Manicure Revitalize Nourish Cuticle Oil *no incluido en el kit\r\n\r\nContiene:\r\n•	20-Hojas de papel de aluminio\r\n•	2 oz. Erase Gel Nail Polish Remover (Eliminador)\r\n•	1-Buffing color Negro\r\n•	2-Palitos de naranjo\r\n', '7', 'documents/2013/10/17/RemoveKit.jpg', '69.69', '1'), ('125', 'ACCESORIES KIT', 'ACCESORIES KIT / KIT DE ACCESORIOS\r\nElementos para una Manicura Perfecta.\r\n\r\nContiene:\r\n•	1-Cuticle & Pro Buffing Stick.\r\n•	2-Strips Adhesive Buffing Tabs - 10 Buffing Tabs per Strip\r\n•	1-Emery Board\r\n•	10-Orangewood Sticks\r\n\r\n', '7', 'documents/2013/10/17/RCMaccessoriesKitWeb.jpg', '69.69', '1');
COMMIT;

-- ----------------------------
--  Table structure for `store_producto_colores`
-- ----------------------------
DROP TABLE IF EXISTS `store_producto_colores`;
CREATE TABLE `store_producto_colores` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`producto_id` int(11) NOT NULL,
	`colores_id` int(11) NOT NULL,
	PRIMARY KEY (`id`),
	UNIQUE `producto_id` (producto_id, colores_id),
	INDEX `store_producto_colores_1635d9bd` (producto_id),
	INDEX `store_producto_colores_8247cc2d` (colores_id)
) ENGINE=`MyISAM` AUTO_INCREMENT=9 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ROW_FORMAT=FIXED COMMENT='' CHECKSUM=0 DELAY_KEY_WRITE=0;

-- ----------------------------
--  Records of `store_producto_colores`
-- ----------------------------
BEGIN;
INSERT INTO `store_producto_colores` VALUES ('3', '6', '3'), ('4', '7', '4'), ('5', '8', '1'), ('6', '8', '2'), ('7', '8', '3'), ('8', '8', '4'), ('1', '9', '2'), ('2', '9', '3');
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
INSERT INTO `userprofile_userprofile` VALUES ('1', '2', null, null, null, null, null, null, null, null, null, null, null, null), ('2', '3', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Mexico', '5524952830', 'Nuevo Leon 123', 'Napoles', '3800', 'DF', 'Mexico', '5562667150'), ('3', '4', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de Mexico', '0445524952830', 'Montecito 38', 'Napoles', '3810', 'DF', 'Mexico', '525562667150');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
