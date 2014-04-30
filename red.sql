-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2014 a las 05:53:57
-- Versión del servidor: 5.5.35-33.0
-- Versión de PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `red`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=52 ;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add rango', 8, 'add_rango'),
(23, 'Can change rango', 8, 'change_rango'),
(24, 'Can delete rango', 8, 'delete_rango'),
(25, 'Can add role', 9, 'add_role'),
(26, 'Can change role', 9, 'change_role'),
(27, 'Can delete role', 9, 'delete_role'),
(28, 'Can add tipo', 10, 'add_tipo'),
(29, 'Can change tipo', 10, 'change_tipo'),
(30, 'Can delete tipo', 10, 'delete_tipo'),
(31, 'Can add colaborador', 11, 'add_colaborador'),
(32, 'Can change colaborador', 11, 'change_colaborador'),
(33, 'Can delete colaborador', 11, 'delete_colaborador'),
(34, 'Can add categoria', 12, 'add_categoria'),
(35, 'Can change categoria', 12, 'change_categoria'),
(36, 'Can delete categoria', 12, 'delete_categoria'),
(37, 'Can add colores', 13, 'add_colores'),
(38, 'Can change colores', 13, 'change_colores'),
(39, 'Can delete colores', 13, 'delete_colores'),
(40, 'Can add producto', 14, 'add_producto'),
(41, 'Can change producto', 14, 'change_producto'),
(42, 'Can delete producto', 14, 'delete_producto'),
(43, 'Can add pedido', 15, 'add_pedido'),
(44, 'Can change pedido', 15, 'change_pedido'),
(45, 'Can delete pedido', 15, 'delete_pedido'),
(46, 'Can add PayPal IPN', 16, 'add_paypalipn'),
(47, 'Can change PayPal IPN', 16, 'change_paypalipn'),
(48, 'Can delete PayPal IPN', 16, 'delete_paypalipn'),
(49, 'Can add user profile', 17, 'add_userprofile'),
(50, 'Can change user profile', 17, 'change_userprofile'),
(51, 'Can delete user profile', 17, 'delete_userprofile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
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
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$G9udI9HLVzpI$brq+UZB+upwk/Igk7QEoM6kdC9NSHK7LAfOjixeSTZk=', '2014-04-09 22:11:32', 1, 'besign', '', '', 'besign@pixblob.com', 1, 1, '2013-10-15 19:30:16'),
(2, 'pbkdf2_sha256$10000$Wyx0yE2fmqK6$Sf3emzWtwxQfOndVCxK63vS9iBoW4N3NKMcNgU/K4qI=', '2014-04-09 21:34:06', 1, 'admin', 'Andros', 'Romo', 'zeickan@gmail.com', 1, 1, '2013-10-15 20:25:16'),
(3, 'pbkdf2_sha256$10000$it9q3YvR7hHj$q9UB7kRCV6OWsuOae+SW4xtoh6mE84pacHB8v7RmPo0=', '2013-11-15 17:21:52', 0, 'demo', 'Demo', 'Apellido', 'demo@pixblob.com', 0, 1, '2013-11-15 17:18:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=480 ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-10-15 20:25:16', 1, 3, '2', 'admin', 1, ''),
(2, '2013-10-15 20:26:47', 1, 3, '2', 'admin', 2, 'Modifica password,first_name,last_name,email,is_staff y is_superuser.'),
(3, '2013-10-15 20:29:30', 1, 12, '1', 'Productos', 1, ''),
(4, '2013-10-15 20:30:08', 1, 12, '2', 'Productos :: Esmaltes', 1, ''),
(5, '2013-10-15 20:30:25', 1, 13, '1', 'Roji', 1, ''),
(6, '2013-10-15 20:30:30', 1, 13, '2', 'Rosa', 1, ''),
(7, '2013-10-15 20:30:34', 1, 13, '3', 'Azul', 1, ''),
(8, '2013-10-15 20:30:36', 1, 14, '1', 'Prueba', 1, ''),
(9, '2013-10-15 20:30:45', 1, 13, '1', 'Rojo', 2, 'Modifica color.'),
(10, '2013-10-17 18:46:03', 1, 12, '3', 'Productos :: Esmaltado permanente LED', 1, ''),
(11, '2013-10-17 18:47:11', 1, 12, '4', 'Productos :: Starter Kit', 1, ''),
(12, '2013-10-17 18:47:35', 1, 12, '5', 'Productos :: Pro Kit', 1, ''),
(13, '2013-10-17 18:47:50', 1, 12, '6', 'Productos :: Nail Art Kits', 1, ''),
(14, '2013-10-17 18:48:11', 1, 12, '7', 'Accesorios', 1, ''),
(15, '2013-10-17 18:48:21', 1, 12, '7', 'Productos :: Accesorios', 2, 'Modifica parent.'),
(16, '2013-10-17 18:52:40', 1, 14, '2', 'Azure Allure', 1, ''),
(17, '2013-10-17 18:54:24', 1, 14, '2', 'Azure Allure', 2, 'Modifica descripcion.'),
(18, '2013-10-17 19:04:02', 2, 14, '1', 'Prueba', 2, 'Modifica imagen.'),
(19, '2013-10-17 19:05:13', 2, 14, '3', 'Prueba de permisos', 1, ''),
(20, '2013-10-17 19:05:40', 2, 14, '3', 'Prueba de permisos', 3, ''),
(21, '2013-10-17 19:05:40', 2, 14, '1', 'Prueba', 3, ''),
(22, '2013-10-17 20:49:03', 1, 14, '4', 'Blase Beauty', 1, ''),
(23, '2013-10-17 21:18:26', 1, 14, '5', 'Blushful Moments', 1, ''),
(24, '2013-10-17 21:19:25', 1, 14, '6', 'Vipaccess', 1, ''),
(25, '2013-10-17 21:20:00', 1, 14, '7', 'Alwaysslate', 1, ''),
(26, '2013-10-17 21:20:32', 1, 14, '8', 'Runaway Red', 1, ''),
(27, '2013-10-17 21:21:02', 1, 14, '9', 'Richfamous', 1, ''),
(28, '2013-10-17 21:21:34', 1, 14, '10', 'Scandalous', 1, ''),
(29, '2013-10-17 21:22:07', 1, 14, '11', 'Callagentbottle', 1, ''),
(30, '2013-10-17 21:22:41', 1, 14, '12', 'Casanovas Kiss', 1, ''),
(31, '2013-10-17 21:23:08', 1, 14, '13', 'Champagnenights', 1, ''),
(32, '2013-10-17 21:24:07', 1, 14, '14', 'Creme de la Creme', 1, ''),
(33, '2013-10-17 21:24:49', 1, 14, '15', 'Divabottle', 1, ''),
(34, '2013-10-17 21:25:16', 1, 14, '16', 'Espressobottle', 1, ''),
(35, '2013-10-17 21:25:53', 1, 14, '17', 'Martini', 1, ''),
(36, '2013-10-17 21:26:49', 1, 14, '18', 'Meet me in mykonos', 1, ''),
(37, '2013-10-17 21:27:19', 1, 14, '19', 'Paradiso Blue', 1, ''),
(38, '2013-10-17 21:28:21', 1, 14, '20', 'Paradiso Blue', 1, ''),
(39, '2013-10-17 21:29:00', 1, 14, '21', 'Parisian Chic', 1, ''),
(40, '2013-10-17 21:29:30', 1, 14, '22', 'Publicity', 1, ''),
(41, '2013-10-17 21:29:59', 1, 14, '23', '9inchheels', 1, ''),
(42, '2013-10-17 21:30:52', 1, 14, '24', 'Simply Adorable', 1, ''),
(43, '2013-10-17 21:31:38', 1, 14, '25', 'I simply love your nails', 1, ''),
(44, '2013-10-17 21:32:21', 1, 14, '26', 'Style Saavy', 1, ''),
(45, '2013-10-17 21:32:59', 1, 14, '27', 'Shimmery Silouette', 1, ''),
(46, '2013-10-17 21:33:57', 1, 14, '28', 'Only in hollywood', 1, ''),
(47, '2013-10-17 21:34:34', 1, 14, '29', 'One of a kind', 1, ''),
(48, '2013-10-17 21:35:04', 1, 14, '30', 'Haule couture', 1, ''),
(49, '2013-10-17 21:36:57', 1, 14, '31', 'Dripping in luxury', 1, ''),
(50, '2013-10-17 21:37:28', 1, 14, '32', 'My inspiration', 1, ''),
(51, '2013-10-17 21:37:59', 1, 14, '33', 'Camera flash', 1, ''),
(52, '2013-10-17 21:38:29', 1, 14, '34', 'Tinsel town', 1, ''),
(53, '2013-10-17 21:38:58', 1, 14, '35', 'Thank you mom&dad', 1, ''),
(54, '2013-10-17 21:39:35', 1, 14, '36', 'I am so honored', 1, ''),
(55, '2013-10-17 21:40:07', 1, 14, '37', 'Wow', 1, ''),
(56, '2013-10-17 21:40:37', 1, 14, '38', 'The perfect pair', 1, ''),
(57, '2013-10-17 21:41:20', 1, 14, '39', 'Star power', 1, ''),
(58, '2013-10-17 21:41:47', 1, 14, '40', 'What a surprise', 1, ''),
(59, '2013-10-17 21:42:23', 1, 14, '41', 'Who are you wearing', 1, ''),
(60, '2013-10-17 21:42:51', 1, 14, '42', 'Award winning', 1, ''),
(61, '2013-10-17 21:43:15', 1, 14, '43', 'Adreamcometrue', 1, ''),
(62, '2013-10-17 21:43:40', 1, 14, '44', 'Afterparty playful', 1, ''),
(63, '2013-10-17 21:44:10', 1, 14, '45', 'And the winner is', 1, ''),
(64, '2013-10-17 21:44:26', 1, 14, '44', 'After party playful', 2, 'Modifica nombre.'),
(65, '2013-10-17 21:44:36', 1, 14, '43', 'A dream come true', 2, 'Modifica nombre.'),
(66, '2013-10-17 21:44:48', 1, 14, '35', 'Thank you mom & dad', 2, 'Modifica nombre.'),
(67, '2013-10-17 21:45:10', 1, 14, '23', '9 inch heels', 2, 'Modifica nombre.'),
(68, '2013-10-17 21:45:22', 1, 14, '18', 'Meet me in my konos', 2, 'Modifica nombre.'),
(69, '2013-10-17 21:45:35', 1, 14, '16', 'Espresso', 2, 'Modifica nombre.'),
(70, '2013-10-17 21:45:48', 1, 14, '15', 'Diva', 2, 'Modifica nombre.'),
(71, '2013-10-17 21:45:59', 1, 14, '13', 'Champagne nights', 2, 'Modifica nombre.'),
(72, '2013-10-17 21:46:13', 1, 14, '11', 'Callagent', 2, 'Modifica nombre.'),
(73, '2013-10-17 21:46:28', 1, 14, '7', 'Always slate', 2, 'Modifica nombre.'),
(74, '2013-10-17 21:47:50', 1, 14, '46', 'An eveningtore member bot', 1, ''),
(75, '2013-10-17 21:48:32', 1, 14, '47', 'Best dressed', 1, ''),
(76, '2013-10-17 21:49:00', 1, 14, '48', 'Black stretch limo', 1, ''),
(77, '2013-10-17 21:49:26', 1, 14, '49', 'Camera shy', 1, ''),
(78, '2013-10-17 21:49:52', 1, 14, '50', 'Can did moment', 1, ''),
(79, '2013-10-17 21:50:28', 1, 14, '51', 'Draped in rubies bot', 1, ''),
(80, '2013-10-17 21:50:58', 1, 14, '52', 'Drop dead gorgeous', 1, ''),
(81, '2013-10-17 21:51:23', 1, 14, '53', 'Envelope please', 1, ''),
(82, '2013-10-17 21:51:49', 1, 14, '54', 'Fake bake', 1, ''),
(83, '2013-10-17 21:52:19', 1, 14, '55', 'Glitterazzi', 1, ''),
(84, '2013-10-17 21:52:44', 1, 14, '56', 'Glitz & glamorous ', 1, ''),
(85, '2013-10-17 21:53:28', 1, 14, '57', 'Its not a taupe', 1, ''),
(86, '2013-10-17 21:53:59', 1, 14, '58', 'Just marvelous darling', 1, ''),
(87, '2013-10-17 21:54:27', 1, 14, '59', 'Leading lady ', 1, ''),
(88, '2013-10-17 21:55:01', 1, 14, '60', 'Lighter shade of gray', 1, ''),
(89, '2013-10-17 21:55:57', 1, 14, '61', 'Love those baby blues ', 1, ''),
(90, '2013-10-17 21:56:27', 1, 14, '62', 'Midnight affair', 1, ''),
(91, '2013-10-17 21:57:01', 1, 14, '63', 'My favourite designer ', 1, ''),
(92, '2013-10-17 21:58:11', 1, 14, '64', 'Nervous with anticipation', 1, ''),
(93, '2013-10-17 21:58:37', 1, 14, '65', 'Nominated for', 1, ''),
(94, '2013-10-17 21:59:17', 1, 14, '66', 'Ohlaliscious', 1, ''),
(95, '2013-10-17 21:59:45', 1, 14, '67', 'Oh so 90210', 1, ''),
(96, '2013-10-17 21:59:56', 1, 14, '66', 'Oh laliscious', 2, 'Modifica nombre.'),
(97, '2013-10-17 22:00:28', 1, 14, '68', 'Paparazzied', 1, ''),
(98, '2013-10-17 22:00:51', 1, 14, '69', 'Plum up the volume', 1, ''),
(99, '2013-10-17 22:02:02', 1, 14, '70', 'Red carpet reddy', 1, ''),
(100, '2013-10-17 22:08:03', 1, 14, '71', 'Simplys tunning', 1, ''),
(101, '2013-10-17 22:08:28', 1, 14, '72', 'Take a bow', 1, ''),
(102, '2013-10-17 22:08:51', 1, 14, '73', 'Thank you thank you', 1, ''),
(103, '2013-10-17 22:09:28', 1, 14, '74', 'The night is young', 1, ''),
(104, '2013-10-17 22:09:58', 1, 14, '75', 'Toast of the town', 1, ''),
(105, '2013-10-17 22:10:21', 1, 14, '76', 'Tre chic', 1, ''),
(106, '2013-10-17 22:10:47', 1, 14, '77', 'Violetta darling', 1, ''),
(107, '2013-10-17 22:11:08', 1, 14, '78', 'White hot', 1, ''),
(108, '2013-10-17 22:11:39', 1, 14, '79', 'You like me you really like me', 1, ''),
(109, '2013-10-17 22:12:02', 1, 14, '80', 'Sands crete', 1, ''),
(110, '2013-10-17 22:12:22', 1, 14, '81', 'Shazzam', 1, ''),
(111, '2013-10-17 22:13:04', 1, 14, '82', 'Show me the money', 1, ''),
(112, '2013-10-17 22:13:36', 1, 14, '83', 'Skys the limit', 1, ''),
(113, '2013-10-17 22:14:20', 1, 14, '84', 'Sunset over sag harbour', 1, ''),
(114, '2013-10-17 22:14:48', 1, 14, '85', 'Socialite status', 1, ''),
(115, '2013-10-17 22:15:15', 1, 14, '86', 'Country club chic', 1, ''),
(116, '2013-10-17 22:15:49', 1, 14, '87', 'Day party diva', 1, ''),
(117, '2013-10-17 22:16:17', 1, 14, '88', 'Mimosas by the pool 2', 1, ''),
(118, '2013-10-17 22:16:48', 1, 14, '89', 'High society', 1, ''),
(119, '2013-10-17 22:17:26', 1, 14, '90', 'Swagg in bottle', 1, ''),
(120, '2013-10-17 22:18:02', 1, 14, '91', 'Tangerine on the rocks', 1, ''),
(121, '2013-10-17 22:18:39', 1, 14, '92', 'Behind the scene', 1, ''),
(122, '2013-10-17 22:19:22', 1, 14, '93', 'Front row fab', 1, ''),
(123, '2013-10-17 22:19:43', 1, 14, '94', 'In style', 1, ''),
(124, '2013-10-17 22:20:12', 1, 14, '95', 'On the cat walk', 1, ''),
(125, '2013-10-17 22:20:34', 1, 14, '96', 'On trend', 1, ''),
(126, '2013-10-17 22:21:07', 1, 14, '97', 'Own the runway 2', 1, ''),
(127, '2013-10-17 22:21:34', 1, 14, '98', 'Dress for success', 1, ''),
(128, '2013-10-17 22:22:13', 1, 14, '99', 'Make up time', 1, ''),
(129, '2013-10-17 22:22:40', 1, 14, '100', 'Shimmering gown', 1, ''),
(130, '2013-10-17 22:23:10', 1, 14, '101', 'Perfect high heels', 1, ''),
(131, '2013-10-17 22:25:12', 1, 14, '102', 'ESMALTADO PERMANENTE LED', 1, ''),
(132, '2013-10-17 22:29:58', 1, 14, '103', 'PREP/PREPARADOR', 1, ''),
(133, '2013-10-17 22:32:24', 1, 14, '102', 'ESMALTADO PERMANENTE LED', 2, 'Modifica descripcion.'),
(134, '2013-10-17 22:32:32', 1, 14, '103', 'PREP/PREPARADOR', 2, 'No ha modificado ningún campo.'),
(135, '2013-10-17 22:34:26', 1, 14, '104', 'STRUCTURE/BASE', 1, ''),
(136, '2013-10-17 22:35:12', 1, 14, '105', 'PURIFY/LIMPIADOR', 1, ''),
(137, '2013-10-17 22:35:50', 1, 14, '106', 'ERASE/REMOVEDOR', 1, ''),
(138, '2013-10-17 22:36:04', 1, 14, '105', 'PURIFY/LIMPIADOR', 2, 'Modifica descripcion.'),
(139, '2013-10-17 22:36:59', 1, 14, '107', 'BRILLANCE / BRILLO', 1, ''),
(140, '2013-10-17 22:37:47', 1, 14, '108', 'REVITALIZE / REVITALIZADOR', 1, ''),
(141, '2013-10-17 22:38:41', 1, 14, '109', 'PORTABLE LIGHT / LÁMPARA PORTÁTIL', 1, ''),
(142, '2013-10-17 22:39:57', 1, 14, '110', 'STARTER KIT', 1, ''),
(143, '2013-10-17 22:40:53', 1, 14, '111', 'ESMALTADO PERMANENTE LED', 1, ''),
(144, '2013-10-17 22:41:29', 1, 14, '112', 'PREP/PREPARADOR', 1, ''),
(145, '2013-10-17 22:42:13', 1, 14, '113', 'STRUCTURE/BASE', 1, ''),
(146, '2013-10-17 22:42:38', 1, 14, '114', 'PURIFY/LIMPIADOR', 1, ''),
(147, '2013-10-17 22:43:06', 1, 14, '115', 'ERASE/REMOVEDOR', 1, ''),
(148, '2013-10-17 22:44:04', 1, 14, '107', 'BRILLIANCE / BRILLO', 2, 'Modifica nombre.'),
(149, '2013-10-17 22:44:32', 1, 14, '116', 'BRILLIANCE / BRILLO', 1, ''),
(150, '2013-10-17 22:45:09', 1, 14, '117', 'REVITALIZE / REVITALIZADOR', 1, ''),
(151, '2013-10-17 22:46:09', 1, 14, '118', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL', 1, ''),
(152, '2013-10-17 22:46:46', 1, 14, '119', 'PRO KIT', 1, ''),
(153, '2013-10-17 22:52:29', 1, 14, '120', 'TIPS & TRICKS', 1, ''),
(154, '2013-10-17 22:53:45', 1, 14, '121', 'MANICURA FRANCESA', 1, ''),
(155, '2013-10-17 22:54:51', 1, 14, '122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 1, ''),
(156, '2013-10-17 22:59:41', 1, 14, '123', 'MUST HAVES KIT ', 1, ''),
(157, '2013-10-17 23:00:33', 1, 14, '124', 'REMOVE', 1, ''),
(158, '2013-10-17 23:01:47', 1, 14, '125', 'ACCESORIES KIT', 1, ''),
(159, '2013-10-17 23:02:08', 1, 14, '124', 'REMOVE', 2, 'Modifica descripcion.'),
(160, '2013-10-17 23:02:31', 1, 14, '123', 'MUST HAVES KIT ', 2, 'Modifica descripcion.'),
(161, '2013-11-08 18:14:26', 2, 13, '4', 'Morado', 1, ''),
(162, '2013-11-08 18:28:49', 2, 15, '1', 'zeickan', 1, ''),
(163, '2013-11-08 18:29:11', 2, 15, '1', 'zeickan', 2, 'Modifica paid.'),
(164, '2013-11-08 18:30:06', 2, 15, '1', 'zeickan', 2, 'Modifica paid.'),
(165, '2013-11-14 06:30:43', 2, 13, '4', 'Morado', 2, 'Modifica imagen.'),
(166, '2013-11-15 06:31:25', 2, 13, '4', 'Morado', 3, ''),
(167, '2013-11-15 06:31:25', 2, 13, '3', 'Azul', 3, ''),
(168, '2013-11-15 06:31:25', 2, 13, '2', 'Rosa', 3, ''),
(169, '2013-11-15 06:31:25', 2, 13, '1', 'Rojo', 3, ''),
(170, '2013-11-15 06:31:46', 2, 13, '5', '9 inch heels', 1, ''),
(171, '2013-11-15 06:34:35', 2, 14, '23', '9 inch heels', 2, 'Modifica colores y precio.'),
(172, '2013-11-15 06:35:11', 2, 13, '6', 'A dream come true', 1, ''),
(173, '2013-11-15 06:35:34', 2, 14, '43', 'A dream come true', 2, 'Modifica colores y precio.'),
(174, '2013-11-15 06:37:33', 2, 13, '7', 'After party playful', 1, ''),
(175, '2013-11-15 06:37:40', 2, 14, '44', 'After party playful', 2, 'Modifica colores y precio.'),
(176, '2013-11-15 06:38:06', 2, 13, '8', 'Always slate', 1, ''),
(177, '2013-11-15 06:38:10', 2, 14, '7', 'Always slate', 2, 'Modifica colores.'),
(178, '2013-11-15 06:38:58', 2, 13, '9', 'An evening to remember bot', 1, ''),
(179, '2013-11-15 06:39:10', 2, 14, '46', 'An evening to remember bot', 2, 'Modifica nombre y colores.'),
(180, '2013-11-15 06:39:33', 2, 13, '10', 'And the winner is', 1, ''),
(181, '2013-11-15 06:39:36', 2, 14, '45', 'And the winner is', 2, 'Modifica colores.'),
(182, '2013-11-15 06:41:55', 2, 14, '2', 'Azure Allure', 2, 'Modifica imagen.'),
(183, '2013-11-15 06:43:19', 2, 13, '11', 'Best dressed', 1, ''),
(184, '2013-11-15 06:43:24', 2, 14, '47', 'Best dressed', 2, 'Modifica colores.'),
(185, '2013-11-15 06:43:52', 2, 13, '12', 'Black stretch limo', 1, ''),
(186, '2013-11-15 06:43:55', 2, 14, '48', 'Black stretch limo', 2, 'Modifica colores.'),
(187, '2013-11-15 06:45:36', 2, 13, '13', 'Call My Agent', 1, ''),
(188, '2013-11-15 06:45:38', 2, 14, '11', 'Call My Agent', 2, 'Modifica nombre y colores.'),
(189, '2013-11-15 06:45:58', 2, 13, '14', 'Camera flash', 1, ''),
(190, '2013-11-15 06:46:00', 2, 14, '33', 'Camera flash', 2, 'Modifica colores.'),
(191, '2013-11-15 06:46:16', 2, 13, '15', 'Camera shy', 1, ''),
(192, '2013-11-15 06:46:19', 2, 14, '49', 'Camera shy', 2, 'Modifica colores.'),
(193, '2013-11-15 06:46:32', 2, 13, '16', 'Can did moment', 1, ''),
(194, '2013-11-15 06:46:34', 2, 14, '50', 'Can did moment', 2, 'Modifica colores.'),
(195, '2013-11-15 06:46:47', 2, 13, '17', 'Champagne nights', 1, ''),
(196, '2013-11-15 06:47:03', 2, 13, '18', 'Country club chic', 1, ''),
(197, '2013-11-15 06:47:10', 2, 14, '86', 'Country club chic', 2, 'Modifica colores.'),
(198, '2013-11-15 06:48:08', 2, 13, '19', 'Day party diva', 1, ''),
(199, '2013-11-15 06:48:10', 2, 14, '87', 'Day party diva', 2, 'Modifica colores.'),
(200, '2013-11-15 06:48:23', 2, 13, '20', 'Diva', 1, ''),
(201, '2013-11-15 06:48:24', 2, 14, '15', 'Diva', 2, 'Modifica colores.'),
(202, '2013-11-15 06:48:44', 2, 13, '21', 'Draped in rubies bot', 1, ''),
(203, '2013-11-15 06:48:45', 2, 14, '51', 'Draped in rubies bot', 2, 'Modifica colores.'),
(204, '2013-11-15 06:51:07', 2, 13, '22', 'Dress for success', 1, ''),
(205, '2013-11-15 06:51:09', 2, 14, '98', 'Dress for success', 2, 'Modifica colores.'),
(206, '2013-11-15 06:51:25', 2, 13, '23', 'Dripping in luxury', 1, ''),
(207, '2013-11-15 06:51:27', 2, 14, '31', 'Dripping in luxury', 2, 'Modifica colores.'),
(208, '2013-11-15 06:51:40', 2, 13, '24', 'Drop dead gorgeous', 1, ''),
(209, '2013-11-15 06:51:42', 2, 14, '52', 'Drop dead gorgeous', 2, 'Modifica colores.'),
(210, '2013-11-15 06:52:18', 2, 13, '25', 'Envelope please', 1, ''),
(211, '2013-11-15 06:52:19', 2, 14, '53', 'Envelope please', 2, 'Modifica colores.'),
(212, '2013-11-15 06:52:32', 2, 13, '26', 'Espresso', 1, ''),
(213, '2013-11-15 06:52:33', 2, 14, '16', 'Espresso', 2, 'Modifica colores.'),
(214, '2013-11-15 06:52:48', 2, 13, '27', 'Fake bake', 1, ''),
(215, '2013-11-15 06:52:51', 2, 14, '54', 'Fake bake', 2, 'Modifica colores.'),
(216, '2013-11-15 06:53:08', 2, 13, '28', 'Glitterazzi', 1, ''),
(217, '2013-11-15 06:53:10', 2, 14, '55', 'Glitterazzi', 2, 'Modifica colores.'),
(218, '2013-11-15 06:53:22', 2, 13, '29', 'Glitz & glamorous ', 1, ''),
(219, '2013-11-15 06:53:24', 2, 14, '56', 'Glitz & glamorous ', 2, 'Modifica colores.'),
(220, '2013-11-15 06:54:04', 2, 13, '30', 'Haule couture', 1, ''),
(221, '2013-11-15 06:54:05', 2, 14, '30', 'Haule couture', 2, 'Modifica colores.'),
(222, '2013-11-15 06:54:18', 2, 13, '31', 'High society', 1, ''),
(223, '2013-11-15 06:54:20', 2, 14, '89', 'High society', 2, 'Modifica colores.'),
(224, '2013-11-15 06:54:36', 2, 13, '32', 'I am so honored', 1, ''),
(225, '2013-11-15 06:54:40', 2, 14, '36', 'I am so honored', 2, 'Modifica colores.'),
(226, '2013-11-15 06:54:59', 2, 13, '33', 'I simply love your nails', 1, ''),
(227, '2013-11-15 06:55:08', 2, 14, '25', 'I simply love your nails', 2, 'Modifica colores.'),
(228, '2013-11-15 06:55:45', 2, 13, '34', 'Its not a taupe', 1, ''),
(229, '2013-11-15 06:55:47', 2, 14, '57', 'Its not a taupe', 2, 'Modifica colores.'),
(230, '2013-11-15 06:56:04', 2, 13, '35', 'Just marvelous darling', 1, ''),
(231, '2013-11-15 06:56:07', 2, 14, '58', 'Just marvelous darling', 2, 'Modifica colores.'),
(232, '2013-11-15 06:57:46', 2, 13, '36', 'Leading lady ', 1, ''),
(233, '2013-11-15 06:57:48', 2, 14, '59', 'Leading lady ', 2, 'Modifica colores.'),
(234, '2013-11-15 06:58:23', 2, 13, '37', 'Love those baby blues ', 1, ''),
(235, '2013-11-15 06:58:24', 2, 14, '61', 'Love those baby blues ', 2, 'Modifica colores.'),
(236, '2013-11-15 06:58:35', 2, 13, '38', 'Make up time', 1, ''),
(237, '2013-11-15 06:58:36', 2, 14, '99', 'Make up time', 2, 'Modifica colores.'),
(238, '2013-11-15 06:58:53', 2, 13, '39', 'Meet me in my konos', 1, ''),
(239, '2013-11-15 06:58:55', 2, 14, '18', 'Meet me in my konos', 2, 'Modifica colores.'),
(240, '2013-11-15 06:59:08', 2, 13, '40', 'Midnight affair', 1, ''),
(241, '2013-11-15 06:59:09', 2, 14, '62', 'Midnight affair', 2, 'Modifica colores.'),
(242, '2013-11-15 06:59:20', 2, 13, '41', 'Mimosas by the pool', 1, ''),
(243, '2013-11-15 06:59:22', 2, 14, '88', 'Mimosas by the pool 2', 2, 'Modifica colores.'),
(244, '2013-11-15 06:59:33', 2, 13, '42', 'My inspiration', 1, ''),
(245, '2013-11-15 06:59:34', 2, 14, '32', 'My inspiration', 2, 'Modifica colores.'),
(246, '2013-11-15 06:59:46', 2, 13, '43', 'My favourite designer ', 1, ''),
(247, '2013-11-15 06:59:48', 2, 14, '63', 'My favourite designer ', 2, 'Modifica colores.'),
(248, '2013-11-15 07:01:08', 2, 14, '20', 'Paradiso Blue', 3, ''),
(249, '2013-11-15 07:01:40', 2, 13, '44', 'Nominated for', 1, ''),
(250, '2013-11-15 07:01:40', 2, 14, '65', 'Nominated for', 2, 'Modifica colores.'),
(251, '2013-11-15 07:01:53', 2, 13, '45', 'Oh so 90210', 1, ''),
(252, '2013-11-15 07:01:55', 2, 14, '67', 'Oh so 90210', 2, 'Modifica colores.'),
(253, '2013-11-15 07:02:08', 2, 13, '46', 'One of a kind', 1, ''),
(254, '2013-11-15 07:02:08', 2, 14, '29', 'One of a kind', 2, 'Modifica colores.'),
(255, '2013-11-15 07:02:19', 2, 13, '47', 'Only in hollywood', 1, ''),
(256, '2013-11-15 07:02:21', 2, 14, '28', 'Only in hollywood', 2, 'Modifica colores.'),
(257, '2013-11-15 07:02:35', 2, 13, '48', 'Paparazzied', 1, ''),
(258, '2013-11-15 07:02:36', 2, 14, '68', 'Paparazzied', 2, 'Modifica colores.'),
(259, '2013-11-15 07:02:48', 2, 13, '49', 'Paradiso Blue', 1, ''),
(260, '2013-11-15 07:02:50', 2, 14, '19', 'Paradiso Blue', 2, 'Modifica colores.'),
(261, '2013-11-15 07:03:04', 2, 13, '50', 'Perfect high heels', 1, ''),
(262, '2013-11-15 07:03:06', 2, 14, '101', 'Perfect high heels', 2, 'Modifica colores.'),
(263, '2013-11-15 07:03:19', 2, 13, '51', 'Plum up the volume', 1, ''),
(264, '2013-11-15 07:03:20', 2, 14, '69', 'Plum up the volume', 2, 'Modifica colores.'),
(265, '2013-11-15 07:03:32', 2, 13, '52', 'Publicity', 1, ''),
(266, '2013-11-15 07:03:32', 2, 14, '22', 'Publicity', 2, 'Modifica colores.'),
(267, '2013-11-15 07:05:05', 2, 13, '53', 'Red carpet reddy', 1, ''),
(268, '2013-11-15 07:05:22', 2, 14, '70', 'Red carpet reddy', 2, 'Modifica colores.'),
(269, '2013-11-15 07:05:35', 2, 13, '54', 'Richfamous', 1, ''),
(270, '2013-11-15 07:05:37', 2, 14, '9', 'Richfamous', 2, 'Modifica colores.'),
(271, '2013-11-15 07:05:47', 2, 13, '55', 'Runaway Red', 1, ''),
(272, '2013-11-15 07:05:48', 2, 14, '8', 'Runaway Red', 2, 'Modifica colores.'),
(273, '2013-11-15 07:06:07', 2, 13, '56', 'Sands crete', 1, ''),
(274, '2013-11-15 07:06:11', 2, 14, '80', 'Sands of crete', 2, 'Modifica nombre y colores.'),
(275, '2013-11-15 07:06:21', 2, 13, '57', 'Scandalous', 1, ''),
(276, '2013-11-15 07:06:22', 2, 14, '10', 'Scandalous', 2, 'Modifica colores.'),
(277, '2013-11-15 07:06:30', 2, 13, '58', 'Shazzam', 1, ''),
(278, '2013-11-15 07:06:31', 2, 14, '81', 'Shazzam', 2, 'Modifica colores.'),
(279, '2013-11-15 07:06:43', 2, 13, '59', 'Shimmering gown', 1, ''),
(280, '2013-11-15 07:06:44', 2, 14, '100', 'Shimmering gown', 2, 'Modifica colores.'),
(281, '2013-11-15 07:06:55', 2, 13, '60', 'Shimmery Silouette', 1, ''),
(282, '2013-11-15 07:06:59', 2, 14, '27', 'Shimmery Silouette', 2, 'Modifica colores.'),
(283, '2013-11-15 07:07:14', 2, 13, '61', 'Simply Adorable', 1, ''),
(284, '2013-11-15 07:07:16', 2, 14, '24', 'Simply Adorable', 2, 'Modifica colores.'),
(285, '2013-11-15 07:07:34', 2, 13, '62', 'Simply Stunning', 1, ''),
(286, '2013-11-15 07:07:39', 2, 14, '71', 'Simply stunning', 2, 'Modifica nombre y colores.'),
(287, '2013-11-15 07:07:50', 2, 13, '63', 'Socialite status', 1, ''),
(288, '2013-11-15 07:07:51', 2, 14, '85', 'Socialite status', 2, 'Modifica colores.'),
(289, '2013-11-15 07:08:02', 2, 13, '64', 'Star power', 1, ''),
(290, '2013-11-15 07:08:04', 2, 14, '39', 'Star power', 2, 'Modifica colores.'),
(291, '2013-11-15 07:08:19', 2, 13, '65', 'Style Saavy', 1, ''),
(292, '2013-11-15 07:08:22', 2, 14, '26', 'Style Saavy', 2, 'Modifica colores.'),
(293, '2013-11-15 07:08:34', 2, 13, '66', 'Sunset ', 1, ''),
(294, '2013-11-15 07:08:35', 2, 14, '84', 'Sunset over sag harbour', 2, 'Modifica colores.'),
(295, '2013-11-15 07:08:50', 2, 13, '67', 'Swagg in bottle', 1, ''),
(296, '2013-11-15 07:08:52', 2, 14, '90', 'Swagg in bottle', 2, 'Modifica colores.'),
(297, '2013-11-15 07:10:09', 2, 13, '68', 'Take a bow', 1, ''),
(298, '2013-11-15 07:10:11', 2, 14, '72', 'Take a bow', 2, 'Modifica colores.'),
(299, '2013-11-15 07:10:21', 2, 13, '69', 'Thank you mom & dad', 1, ''),
(300, '2013-11-15 07:10:23', 2, 14, '35', 'Thank you mom & dad', 2, 'Modifica colores.'),
(301, '2013-11-15 07:10:33', 2, 13, '70', 'Thank you thank you', 1, ''),
(302, '2013-11-15 07:10:34', 2, 14, '73', 'Thank you thank you', 2, 'Modifica colores.'),
(303, '2013-11-15 07:10:49', 2, 13, '71', 'The night is young', 1, ''),
(304, '2013-11-15 07:10:51', 2, 14, '74', 'The night is young', 2, 'Modifica colores.'),
(305, '2013-11-15 07:11:29', 2, 13, '72', 'The perfect pair', 1, ''),
(306, '2013-11-15 07:11:30', 2, 14, '38', 'The perfect pair', 2, 'Modifica colores.'),
(307, '2013-11-15 07:11:45', 2, 13, '73', 'Tinsel town', 1, ''),
(308, '2013-11-15 07:11:47', 2, 14, '34', 'Tinsel town', 2, 'Modifica colores.'),
(309, '2013-11-15 07:11:58', 2, 13, '74', 'Toast of the town', 1, ''),
(310, '2013-11-15 07:12:02', 2, 14, '75', 'Toast of the town', 2, 'Modifica colores.'),
(311, '2013-11-15 07:12:13', 2, 13, '75', 'Tre chic', 1, ''),
(312, '2013-11-15 07:12:14', 2, 14, '76', 'Tre chic', 2, 'Modifica colores.'),
(313, '2013-11-15 07:12:24', 2, 13, '76', 'Violetta darling', 1, ''),
(314, '2013-11-15 07:12:28', 2, 14, '77', 'Violetta darling', 2, 'Modifica colores.'),
(315, '2013-11-15 07:12:42', 2, 13, '77', 'Vip access', 1, ''),
(316, '2013-11-15 07:12:44', 2, 14, '6', 'Vip access', 2, 'Modifica nombre y colores.'),
(317, '2013-11-15 07:12:55', 2, 13, '78', 'What a surprise', 1, ''),
(318, '2013-11-15 07:12:57', 2, 14, '40', 'What a surprise', 2, 'Modifica colores.'),
(319, '2013-11-15 07:13:07', 2, 13, '79', 'White hot', 1, ''),
(320, '2013-11-15 07:13:09', 2, 14, '78', 'White hot', 2, 'Modifica colores.'),
(321, '2013-11-15 07:13:19', 2, 13, '80', 'Who are you wearing', 1, ''),
(322, '2013-11-15 07:13:20', 2, 14, '41', 'Who are you wearing', 2, 'Modifica colores.'),
(323, '2013-11-15 07:13:38', 2, 13, '81', 'Wow', 1, ''),
(324, '2013-11-15 07:13:40', 2, 14, '37', 'Wow', 2, 'Modifica colores.'),
(325, '2013-11-15 07:14:06', 2, 13, '82', 'You like me you really like me', 1, ''),
(326, '2013-11-15 07:14:08', 2, 14, '79', 'You like me you really like me', 2, 'Modifica colores.'),
(327, '2013-11-15 17:15:28', 2, 13, '82', 'You like me you really like me', 2, 'Modifica temporada.'),
(328, '2013-11-21 04:38:18', 2, 14, '2', 'Azure Allure', 2, 'Modifica stock.'),
(329, '2013-11-22 18:23:38', 1, 12, '8', 'Productos :: Nail Art Kits :: esmalte fghjkty rtyuà', 1, ''),
(330, '2013-11-22 18:35:36', 1, 14, '122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 2, 'Modifica stock.'),
(331, '2014-04-09 21:35:28', 1, 14, '88', 'Mimosas by the pool 2', 2, 'Modifica precio.'),
(332, '2014-04-09 22:20:48', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica descripcion.'),
(333, '2014-04-09 22:22:05', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica descripcion.'),
(334, '2014-04-09 22:53:13', 1, 14, '110', 'STARTER KIT', 2, 'Modifica precio.'),
(335, '2014-04-09 22:54:50', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica precio.'),
(336, '2014-04-09 22:55:21', 1, 14, '123', 'MUST HAVES KIT ', 2, 'Modifica precio.'),
(337, '2014-04-09 22:56:35', 1, 14, '124', 'REMOVE', 2, 'Modifica precio.'),
(338, '2014-04-09 22:57:19', 1, 14, '122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 2, 'Modifica precio.'),
(339, '2014-04-09 22:58:02', 1, 14, '121', 'MANICURA FRANCESA', 2, 'Modifica precio.'),
(340, '2014-04-09 22:58:08', 1, 14, '121', 'MANICURA FRANCESA', 2, 'No ha modificado ningún campo.'),
(341, '2014-04-09 22:58:16', 1, 14, '120', 'TIPS & TRICKS', 2, 'Modifica precio.'),
(342, '2014-04-09 23:00:34', 1, 14, '119', 'PRO KIT', 2, 'Modifica precio.'),
(343, '2014-04-09 23:01:34', 1, 14, '118', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL', 2, 'Modifica precio.'),
(344, '2014-04-09 23:03:27', 1, 14, '117', 'REVITALIZE / REVITALIZADOR', 2, 'Modifica precio.'),
(345, '2014-04-09 23:03:51', 1, 14, '116', 'BRILLIANCE / BRILLO', 2, 'Modifica precio.'),
(346, '2014-04-09 23:04:12', 1, 14, '115', 'ERASE/REMOVEDOR', 2, 'Modifica precio.'),
(347, '2014-04-09 23:04:43', 1, 14, '114', 'PURIFY/LIMPIADOR', 2, 'Modifica precio.'),
(348, '2014-04-09 23:05:15', 1, 14, '113', 'STRUCTURE/BASE', 2, 'Modifica precio.'),
(349, '2014-04-09 23:06:16', 1, 14, '112', 'PREP/PREPARADOR', 2, 'Modifica precio.'),
(350, '2014-04-09 23:06:55', 1, 14, '111', 'ESMALTADO PERMANENTE LED', 2, 'Modifica precio.'),
(351, '2014-04-09 23:07:57', 1, 14, '109', 'PORTABLE LIGHT / LÁMPARA PORTÁTIL', 2, 'Modifica precio.'),
(352, '2014-04-09 23:08:53', 1, 14, '108', 'REVITALIZE / REVITALIZADOR', 2, 'Modifica precio.'),
(353, '2014-04-09 23:09:09', 1, 14, '107', 'BRILLIANCE / BRILLO', 2, 'Modifica precio.'),
(354, '2014-04-09 23:09:24', 1, 14, '106', 'ERASE/REMOVEDOR', 2, 'Modifica precio.'),
(355, '2014-04-09 23:09:36', 1, 14, '105', 'PURIFY/LIMPIADOR', 2, 'Modifica precio.'),
(356, '2014-04-09 23:09:53', 1, 14, '102', 'ESMALTADO PERMANENTE LED', 2, 'Modifica precio.'),
(357, '2014-04-09 23:10:08', 1, 14, '103', 'PREP/PREPARADOR', 2, 'Modifica precio.'),
(358, '2014-04-09 23:10:25', 1, 14, '104', 'STRUCTURE/BASE', 2, 'Modifica precio.'),
(359, '2014-04-09 23:11:14', 1, 14, '95', 'On the cat walk', 2, 'Modifica precio.'),
(360, '2014-04-09 23:11:21', 1, 14, '94', 'In style', 2, 'Modifica precio.'),
(361, '2014-04-09 23:11:27', 1, 14, '93', 'Front row fab', 2, 'Modifica precio.'),
(362, '2014-04-09 23:11:34', 1, 14, '96', 'On trend', 2, 'Modifica precio.'),
(363, '2014-04-09 23:11:42', 1, 14, '97', 'Own the runway 2', 2, 'Modifica precio.'),
(364, '2014-04-09 23:11:47', 1, 14, '98', 'Dress for success', 2, 'Modifica precio.'),
(365, '2014-04-09 23:11:53', 1, 14, '99', 'Make up time', 2, 'Modifica precio.'),
(366, '2014-04-09 23:11:58', 1, 14, '100', 'Shimmering gown', 2, 'Modifica precio.'),
(367, '2014-04-09 23:12:06', 1, 14, '101', 'Perfect high heels', 2, 'Modifica precio.'),
(368, '2014-04-09 23:12:41', 1, 14, '84', 'Sunset over sag harbour', 2, 'Modifica precio.'),
(369, '2014-04-09 23:12:47', 1, 14, '83', 'Skys the limit', 2, 'Modifica precio.'),
(370, '2014-04-09 23:12:54', 1, 14, '82', 'Show me the money', 2, 'Modifica precio.'),
(371, '2014-04-09 23:13:00', 1, 14, '81', 'Shazzam', 2, 'Modifica precio.'),
(372, '2014-04-09 23:13:07', 1, 14, '80', 'Sands of crete', 2, 'Modifica precio.'),
(373, '2014-04-09 23:13:15', 1, 14, '85', 'Socialite status', 2, 'Modifica precio.'),
(374, '2014-04-09 23:13:22', 1, 14, '86', 'Country club chic', 2, 'Modifica precio.'),
(375, '2014-04-09 23:13:29', 1, 14, '87', 'Day party diva', 2, 'Modifica precio.'),
(376, '2014-04-09 23:13:34', 1, 14, '88', 'Mimosas by the pool 2', 2, 'Modifica precio.'),
(377, '2014-04-09 23:13:41', 1, 14, '89', 'High society', 2, 'Modifica precio.'),
(378, '2014-04-09 23:13:46', 1, 14, '90', 'Swagg in bottle', 2, 'Modifica precio.'),
(379, '2014-04-09 23:13:52', 1, 14, '91', 'Tangerine on the rocks', 2, 'Modifica precio.'),
(380, '2014-04-09 23:13:58', 1, 14, '92', 'Behind the scene', 2, 'Modifica precio.'),
(381, '2014-04-09 23:14:19', 1, 14, '73', 'Thank you thank you', 2, 'Modifica precio.'),
(382, '2014-04-09 23:14:27', 1, 14, '74', 'The night is young', 2, 'Modifica precio.'),
(383, '2014-04-09 23:14:32', 1, 14, '75', 'Toast of the town', 2, 'Modifica precio.'),
(384, '2014-04-09 23:14:38', 1, 14, '76', 'Tre chic', 2, 'Modifica precio.'),
(385, '2014-04-09 23:14:43', 1, 14, '77', 'Violetta darling', 2, 'Modifica precio.'),
(386, '2014-04-09 23:14:49', 1, 14, '78', 'White hot', 2, 'Modifica precio.'),
(387, '2014-04-09 23:14:55', 1, 14, '79', 'You like me you really like me', 2, 'Modifica precio.'),
(388, '2014-04-09 23:15:17', 1, 14, '66', 'Oh laliscious', 2, 'Modifica precio.'),
(389, '2014-04-09 23:15:22', 1, 14, '67', 'Oh so 90210', 2, 'Modifica precio.'),
(390, '2014-04-09 23:15:28', 1, 14, '68', 'Paparazzied', 2, 'Modifica precio.'),
(391, '2014-04-09 23:15:34', 1, 14, '69', 'Plum up the volume', 2, 'Modifica precio.'),
(392, '2014-04-09 23:15:40', 1, 14, '70', 'Red carpet reddy', 2, 'Modifica precio.'),
(393, '2014-04-09 23:15:45', 1, 14, '71', 'Simply stunning', 2, 'Modifica precio.'),
(394, '2014-04-09 23:15:51', 1, 14, '72', 'Take a bow', 2, 'Modifica precio.'),
(395, '2014-04-09 23:16:23', 1, 14, '54', 'Fake bake', 2, 'Modifica precio.'),
(396, '2014-04-09 23:16:28', 1, 14, '55', 'Glitterazzi', 2, 'Modifica precio.'),
(397, '2014-04-09 23:16:31', 1, 14, '56', 'Glitz & glamorous ', 2, 'Modifica precio.'),
(398, '2014-04-09 23:16:35', 1, 14, '57', 'Its not a taupe', 2, 'Modifica precio.'),
(399, '2014-04-09 23:16:41', 1, 14, '58', 'Just marvelous darling', 2, 'Modifica precio.'),
(400, '2014-04-09 23:16:45', 1, 14, '59', 'Leading lady ', 2, 'Modifica precio.'),
(401, '2014-04-09 23:16:50', 1, 14, '60', 'Lighter shade of gray', 2, 'Modifica precio.'),
(402, '2014-04-09 23:17:02', 1, 14, '61', 'Love those baby blues ', 2, 'Modifica precio.'),
(403, '2014-04-09 23:17:05', 1, 14, '62', 'Midnight affair', 2, 'Modifica precio.'),
(404, '2014-04-09 23:17:10', 1, 14, '63', 'My favourite designer ', 2, 'Modifica precio.'),
(405, '2014-04-09 23:17:16', 1, 14, '64', 'Nervous with anticipation', 2, 'Modifica precio.'),
(406, '2014-04-09 23:17:21', 1, 14, '65', 'Nominated for', 2, 'Modifica precio.'),
(407, '2014-04-09 23:17:57', 1, 14, '41', 'Who are you wearing', 2, 'Modifica precio.'),
(408, '2014-04-09 23:18:01', 1, 14, '42', 'Award winning', 2, 'Modifica precio.'),
(409, '2014-04-09 23:18:05', 1, 14, '43', 'A dream come true', 2, 'Modifica precio.'),
(410, '2014-04-09 23:18:10', 1, 14, '44', 'After party playful', 2, 'Modifica precio.'),
(411, '2014-04-09 23:18:16', 1, 14, '45', 'And the winner is', 2, 'Modifica precio.'),
(412, '2014-04-09 23:18:25', 1, 14, '46', 'An evening to remember bot', 2, 'Modifica precio.'),
(413, '2014-04-09 23:18:31', 1, 14, '47', 'Best dressed', 2, 'Modifica precio.'),
(414, '2014-04-09 23:18:36', 1, 14, '48', 'Black stretch limo', 2, 'Modifica precio.'),
(415, '2014-04-09 23:18:42', 1, 14, '49', 'Camera shy', 2, 'Modifica precio.'),
(416, '2014-04-09 23:18:49', 1, 14, '50', 'Can did moment', 2, 'Modifica precio.'),
(417, '2014-04-09 23:18:57', 1, 14, '51', 'Draped in rubies bot', 2, 'Modifica precio.'),
(418, '2014-04-09 23:19:06', 1, 14, '52', 'Drop dead gorgeous', 2, 'Modifica precio.'),
(419, '2014-04-09 23:19:13', 1, 14, '53', 'Envelope please', 2, 'Modifica precio.'),
(420, '2014-04-09 23:20:27', 1, 14, '37', 'Wow', 2, 'Modifica precio.'),
(421, '2014-04-09 23:20:31', 1, 14, '38', 'The perfect pair', 2, 'Modifica precio.'),
(422, '2014-04-09 23:20:35', 1, 14, '39', 'Star power', 2, 'Modifica precio.'),
(423, '2014-04-09 23:20:39', 1, 14, '40', 'What a surprise', 2, 'Modifica precio.'),
(424, '2014-04-09 23:21:22', 1, 14, '26', 'Style Saavy', 2, 'Modifica precio.'),
(425, '2014-04-09 23:21:26', 1, 14, '27', 'Shimmery Silouette', 2, 'Modifica precio.'),
(426, '2014-04-09 23:21:31', 1, 14, '28', 'Only in hollywood', 2, 'Modifica precio.'),
(427, '2014-04-09 23:21:35', 1, 14, '29', 'One of a kind', 2, 'Modifica precio.'),
(428, '2014-04-09 23:21:39', 1, 14, '30', 'Haule couture', 2, 'Modifica precio.'),
(429, '2014-04-09 23:21:43', 1, 14, '31', 'Dripping in luxury', 2, 'Modifica precio.'),
(430, '2014-04-09 23:21:47', 1, 14, '32', 'My inspiration', 2, 'Modifica precio.'),
(431, '2014-04-09 23:21:53', 1, 14, '33', 'Camera flash', 2, 'Modifica precio.'),
(432, '2014-04-09 23:21:56', 1, 14, '34', 'Tinsel town', 2, 'Modifica precio.'),
(433, '2014-04-09 23:22:01', 1, 14, '35', 'Thank you mom & dad', 2, 'Modifica precio.'),
(434, '2014-04-09 23:22:14', 1, 14, '36', 'I am so honored', 2, 'Modifica precio.'),
(435, '2014-04-09 23:25:15', 1, 14, '10', 'Scandalous', 2, 'Modifica precio.'),
(436, '2014-04-09 23:25:19', 1, 14, '11', 'Call My Agent', 2, 'Modifica precio.'),
(437, '2014-04-09 23:25:22', 1, 14, '12', 'Casanovas Kiss', 2, 'Modifica precio.'),
(438, '2014-04-09 23:25:25', 1, 14, '13', 'Champagne nights', 2, 'Modifica precio.'),
(439, '2014-04-09 23:25:29', 1, 14, '14', 'Creme de la Creme', 2, 'Modifica precio.'),
(440, '2014-04-09 23:25:34', 1, 14, '15', 'Diva', 2, 'Modifica precio.'),
(441, '2014-04-09 23:25:35', 1, 14, '15', 'Diva', 2, 'Modifica precio.'),
(442, '2014-04-09 23:25:44', 1, 14, '16', 'Espresso', 2, 'Modifica precio.'),
(443, '2014-04-09 23:25:48', 1, 14, '17', 'Martini', 2, 'Modifica precio.'),
(444, '2014-04-09 23:25:53', 1, 14, '18', 'Meet me in my konos', 2, 'Modifica precio.'),
(445, '2014-04-09 23:25:58', 1, 14, '19', 'Paradiso Blue', 2, 'Modifica precio.'),
(446, '2014-04-09 23:26:03', 1, 14, '21', 'Parisian Chic', 2, 'Modifica precio.'),
(447, '2014-04-09 23:26:07', 1, 14, '22', 'Publicity', 2, 'Modifica precio.'),
(448, '2014-04-09 23:26:17', 1, 14, '23', '9 inch heels', 2, 'Modifica precio.'),
(449, '2014-04-09 23:26:20', 1, 14, '24', 'Simply Adorable', 2, 'Modifica precio.'),
(450, '2014-04-09 23:26:24', 1, 14, '25', 'I simply love your nails', 2, 'Modifica precio.'),
(451, '2014-04-09 23:26:50', 1, 14, '2', 'Azure Allure', 2, 'Modifica precio.'),
(452, '2014-04-09 23:26:54', 1, 14, '4', 'Blase Beauty', 2, 'Modifica precio.'),
(453, '2014-04-09 23:27:01', 1, 14, '5', 'Blushful Moments', 2, 'Modifica precio.'),
(454, '2014-04-09 23:27:06', 1, 14, '6', 'Vip access', 2, 'Modifica precio.'),
(455, '2014-04-09 23:27:10', 1, 14, '7', 'Always slate', 2, 'Modifica precio.'),
(456, '2014-04-09 23:27:14', 1, 14, '8', 'Runaway Red', 2, 'Modifica precio.'),
(457, '2014-04-09 23:27:18', 1, 14, '9', 'Richfamous', 2, 'Modifica precio.'),
(458, '2014-04-10 16:44:28', 1, 14, '120', 'TIPS & TRICKS', 2, 'Modifica descripcion.'),
(459, '2014-04-10 16:44:58', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica descripcion.'),
(460, '2014-04-10 16:47:15', 1, 14, '124', 'REMOVE', 2, 'Modifica descripcion.'),
(461, '2014-04-10 16:47:56', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica descripcion.'),
(462, '2014-04-10 17:24:16', 1, 14, '123', 'MUST HAVES KIT ', 2, 'Modifica descripcion.'),
(463, '2014-04-10 17:25:32', 1, 14, '111', 'ESMALTADO PERMANENTE LED', 2, 'Modifica descripcion.'),
(464, '2014-04-10 17:26:58', 1, 14, '118', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL', 2, 'Modifica descripcion.'),
(465, '2014-04-10 17:28:22', 1, 14, '117', 'REVITALIZE / REVITALIZADOR', 2, 'Modifica descripcion.'),
(466, '2014-04-10 17:28:49', 1, 14, '116', 'BRILLIANCE / BRILLO', 2, 'No ha modificado ningún campo.'),
(467, '2014-04-10 17:59:07', 1, 14, '122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 2, 'Modifica descripcion.'),
(468, '2014-04-10 18:01:25', 1, 14, '121', 'MANICURA FRANCESA', 2, 'Modifica descripcion.'),
(469, '2014-04-10 18:10:33', 1, 14, '121', 'MANICURA FRANCESA', 2, 'Modifica descripcion.'),
(470, '2014-04-10 18:14:48', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica descripcion.'),
(471, '2014-04-10 18:15:06', 1, 14, '124', 'REMOVE', 2, 'No ha modificado ningún campo.'),
(472, '2014-04-10 18:17:09', 1, 14, '122', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 2, 'Modifica descripcion.'),
(473, '2014-04-10 18:17:39', 1, 14, '125', 'ACCESORIES KIT', 2, 'Modifica descripcion.'),
(474, '2014-04-10 18:18:03', 1, 14, '124', 'REMOVE', 2, 'Modifica descripcion.'),
(475, '2014-04-10 18:18:27', 1, 14, '125', 'ACCESORIES KIT', 2, 'No ha modificado ningún campo.'),
(476, '2014-04-10 18:19:30', 1, 14, '121', 'MANICURA FRANCESA', 2, 'Modifica descripcion.'),
(477, '2014-04-10 18:22:19', 1, 14, '120', 'TIPS & TRICKS', 2, 'Modifica descripcion.'),
(478, '2014-04-10 18:24:39', 1, 14, '119', 'PRO KIT', 2, 'Modifica descripcion.'),
(479, '2014-04-14 16:17:02', 1, 14, '110', 'STARTER KIT', 2, 'Modifica descripcion.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'rango', 'humano', 'rango'),
(9, 'role', 'humano', 'role'),
(10, 'tipo', 'humano', 'tipo'),
(11, 'colaborador', 'humano', 'colaborador'),
(12, 'categoria', 'store', 'categoria'),
(13, 'colores', 'store', 'colores'),
(14, 'producto', 'store', 'producto'),
(15, 'pedido', 'store', 'pedido'),
(16, 'PayPal IPN', 'ipn', 'paypalipn'),
(17, 'user profile', 'userprofile', 'userprofile');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8eu8h4xecorq9tv5dewy062wxiyxhbl9', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-29 20:53:40'),
('b9xnjjq4i1mbajph15xxttzv5km6k7k4', 'MzIyYWNlYjA4ODFiY2QwODkxYjAwYjlkZDA0ZDlmODYzMWIxZjBkMzqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu', '2013-11-15 17:28:28'),
('c05twm5xnzakcl8ftdwkri5o7o99t3kp', 'NzFjOTU2ZTk0OTNmNzMxMzc2ODg3YTNiNDI4N2I2YzgwMmViYjM0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-10-31 19:03:14'),
('ebpqrn1j1t9jskqw9djnec2aah7enzcg', 'MzIyYWNlYjA4ODFiY2QwODkxYjAwYjlkZDA0ZDlmODYzMWIxZjBkMzqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu', '2014-05-12 05:47:09'),
('faos7zzmb4f8r9juymwnoq99v9mbtq1j', 'MGVlNzIzODYyZjhjOGRkYjYzM2I5ZDM1YjNlY2UwZmM1NWQyMWExMTqAAn1xAShVBmJhc2tldF1xAihVAzEwMnEDVQE1VQIxMHEEVQE2ZVUSX2F1dGhfdXNlcl9iYWNrZW5kcQVVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kcQZVDV9hdXRoX3VzZXJfaWRxB4oBAXUu', '2013-12-06 18:00:43'),
('fxn3n0lqxh8j6x5dq67mrkqs7j8ga8ek', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-04-23 21:35:08'),
('hyeuhn7jwoxcwyydj8id8fgryjwsydk3', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-04-23 22:11:32'),
('m5lsa7xk9rqn974u3tt1dyv3ekgw7s1q', 'NzFjOTU2ZTk0OTNmNzMxMzc2ODg3YTNiNDI4N2I2YzgwMmViYjM0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-11-15 19:36:04'),
('mgxx1n9fau8mh3qfvg7pxcx34ik5u2fs', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-31 18:39:51'),
('ogf9zueoi28uloacymzljtcm408gi3bj', 'MjMwMWM5YWJmMDg0MTRjMmE5ZGIyN2UyYzY1Nzc4YjcxZWFkZjdhMDqAAn1xAShVBmJhc2tldF1xAihVATRVATVlVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQ1fYXV0aF91c2VyX2lkigECdS4=', '2013-12-06 17:39:08'),
('pifoom5vxwx8a608mdukptha17v0uz2n', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2014-04-23 22:10:37'),
('t1kr948d66tlkek5g54jl2nscqvu5u94', 'M2UyM2E3N2FlMGQyNTI4YTg5YjNlNDBmZDI5ODVjYWU2YTg5MzdhNTqAAn1xAShVBmJhc2tldF1xAihVATJVATRVAzEwOXEDZVUNX2F1dGhfdXNlcl9pZIoBAlUSX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHUu', '2013-11-29 17:27:10'),
('vw9agq8l6muz6u0phkvyv1l0m4f6y0bf', 'NWQ1ODFjZjA3N2YyYzU4OWM3NmU0YzEwYmVhMjc3YzMwNTllNGU4MTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-10-31 18:39:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

DROP TABLE IF EXISTS `django_site`;
CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano_colaborador`
--

DROP TABLE IF EXISTS `humano_colaborador`;
CREATE TABLE IF NOT EXISTS `humano_colaborador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `twitter` varchar(50) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `rango_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `humano_colaborador_f03de403` (`rango_id`),
  KEY `humano_colaborador_278213e1` (`role_id`),
  KEY `humano_colaborador_acf1eac4` (`tipo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano_rango`
--

DROP TABLE IF EXISTS `humano_rango`;
CREATE TABLE IF NOT EXISTS `humano_rango` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano_role`
--

DROP TABLE IF EXISTS `humano_role`;
CREATE TABLE IF NOT EXISTS `humano_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano_tipo`
--

DROP TABLE IF EXISTS `humano_tipo`;
CREATE TABLE IF NOT EXISTS `humano_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
CREATE TABLE IF NOT EXISTS `paypal_ipn` (
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
  KEY `paypal_ipn_c535258e` (`txn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `paypal_ipn`
--

INSERT INTO `paypal_ipn` (`id`, `business`, `charset`, `custom`, `notify_version`, `parent_txn_id`, `receiver_email`, `receiver_id`, `residence_country`, `test_ipn`, `txn_id`, `txn_type`, `verify_sign`, `address_country`, `address_city`, `address_country_code`, `address_name`, `address_state`, `address_status`, `address_street`, `address_zip`, `contact_phone`, `first_name`, `last_name`, `payer_business_name`, `payer_email`, `payer_id`, `auth_amount`, `auth_exp`, `auth_id`, `auth_status`, `exchange_rate`, `invoice`, `item_name`, `item_number`, `mc_currency`, `mc_fee`, `mc_gross`, `mc_handling`, `mc_shipping`, `memo`, `num_cart_items`, `option_name1`, `option_name2`, `payer_status`, `payment_date`, `payment_gross`, `payment_status`, `payment_type`, `pending_reason`, `protection_eligibility`, `quantity`, `reason_code`, `remaining_settle`, `settle_amount`, `settle_currency`, `shipping`, `shipping_method`, `tax`, `transaction_entity`, `auction_buyer_id`, `auction_closing_date`, `auction_multi_item`, `for_auction`, `amount`, `amount_per_cycle`, `initial_payment_amount`, `next_payment_date`, `outstanding_balance`, `payment_cycle`, `period_type`, `product_name`, `product_type`, `profile_status`, `recurring_payment_id`, `rp_invoice_id`, `time_created`, `amount1`, `amount2`, `amount3`, `mc_amount1`, `mc_amount2`, `mc_amount3`, `password`, `period1`, `period2`, `period3`, `reattempt`, `recur_times`, `recurring`, `retry_at`, `subscr_date`, `subscr_effective`, `subscr_id`, `username`, `case_creation_date`, `case_id`, `case_type`, `receipt_id`, `currency_code`, `handling_amount`, `transaction_subject`, `ipaddress`, `flag`, `flag_code`, `flag_info`, `query`, `response`, `created_at`, `updated_at`, `from_view`) VALUES
(1, 'seller@paypalsandbox.com', '', 'xyz123', '2.40', '', 'seller@paypalsandbox.com', 'seller@paypalsandbox.com', 'US', 1, '586726316', 'cart', 'AQAJbhmMSpTcXapETTLJlSe4lWn0AoxcUcEjo1bPbnJqubRikwtjruSj', 'United States', 'San Jose', 'US', 'John Smith', 'CA', 'confirmed', '123, any street', '95131', '', 'John', 'Smith', '', 'buyer@paypalsandbox.com', 'TESTBUYERID01', NULL, '', '', '', NULL, 'abc1234', '', '', 'USD', '0.44', '12.34', '2.06', '3.02', '', NULL, '', '', 'unverified', '2013-11-08 16:32:48', NULL, 'Completed', 'instant', '', '', NULL, '', NULL, NULL, '', NULL, '', '2.02', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', NULL, '', NULL, NULL, NULL, '', '', NULL, '', '', '', '', NULL, '', '173.0.81.1', 1, '', 'Invalid receiver_email. (seller@paypalsandbox.com)', 'last_name=Smith&txn_id=586726316&receiver_email=seller%40paypalsandbox.com&payment_status=Completed&tax=2.02&payer_status=unverified&residence_country=US&invoice=abc1234&address_state=CA&item_name1=something&txn_type=cart&address_country=United+States&payment_date=10%3A32%3A48+8+Nov+2013+PST&first_name=John&mc_shipping=3.02&item_number1=AK-1234&mc_gross1=9.34&custom=xyz123&notify_version=2.4&address_name=John+Smith&address_street=123%2C+any+street&test_ipn=1&receiver_id=seller%40paypalsandbox.com&business=seller%40paypalsandbox.com&mc_handling1=1.67&payer_id=TESTBUYERID01&verify_sign=AQAJbhmMSpTcXapETTLJlSe4lWn0AoxcUcEjo1bPbnJqubRikwtjruSj&mc_handling=2.06&address_zip=95131&address_country_code=US&address_city=San+Jose&address_status=confirmed&mc_fee=0.44&mc_currency=USD&payer_email=buyer%40paypalsandbox.com&payment_type=instant&mc_gross=12.34&mc_shipping1=1.02', 'VERIFIED', '2013-11-08 18:32:53', '2013-11-08 18:32:53', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_categoria`
--

DROP TABLE IF EXISTS `store_categoria`;
CREATE TABLE IF NOT EXISTS `store_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_categoria_f52cfca0` (`slug`),
  KEY `store_categoria_410d0aac` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `store_categoria`
--

INSERT INTO `store_categoria` (`id`, `nombre`, `slug`, `parent_id`, `activo`) VALUES
(1, 'Productos', 'productos', NULL, 1),
(2, 'Esmaltes', 'esmaltes', 1, 1),
(3, 'Esmaltado permanente LED', 'esmaltado-permanente-led', 1, 1),
(4, 'Starter Kit', 'starter-kit', 1, 1),
(5, 'Pro Kit', 'pro-kit', 1, 1),
(6, 'Nail Art Kits', 'nail-art-kits', 1, 1),
(7, 'Accesorios', 'accesorios', 1, 1),
(8, 'esmalte fghjkty rtyuà', 'esmalte-fghjkty-rtyua', 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_colores`
--

DROP TABLE IF EXISTS `store_colores`;
CREATE TABLE IF NOT EXISTS `store_colores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(150) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `temporada` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=83 ;

--
-- Volcado de datos para la tabla `store_colores`
--

INSERT INTO `store_colores` (`id`, `color`, `imagen`, `temporada`) VALUES
(5, '9 inch heels', 'uploads/images/2013/11/15/9InchHeels.jpg', 1),
(6, 'A dream come true', 'uploads/images/2013/11/15/ADreamComeTrue.jpg', 1),
(7, 'After party playful', 'uploads/images/2013/11/15/AfterPartyPlayful.jpg', 1),
(8, 'Always slate', 'uploads/images/2013/11/15/AlwaysSlateNeverEarly.jpg', 1),
(9, 'An evening to remember bot', 'uploads/images/2013/11/15/An-Evening-to-remember.jpg', 1),
(10, 'And the winner is', 'uploads/images/2013/11/15/AndTheWinnerIs.jpg', 1),
(11, 'Best dressed', 'uploads/images/2013/11/15/BestDressed.jpg', 1),
(12, 'Black stretch limo', 'uploads/images/2013/11/15/BlackStretchLimo.jpg', 1),
(13, 'Call My Agent', 'uploads/images/2013/11/15/CallMyAgent.jpg', 1),
(14, 'Camera flash', 'uploads/images/2013/11/15/Camera-Flash.jpg', 1),
(15, 'Camera shy', 'uploads/images/2013/11/15/CameraShy.jpg', 1),
(16, 'Can did moment', 'uploads/images/2013/11/15/CandidMoment.jpg', 1),
(17, 'Champagne nights', 'uploads/images/2013/11/15/ChampagneNights.jpg', 1),
(18, 'Country club chic', 'uploads/images/2013/11/15/CountryClubChic.jpg', 1),
(19, 'Day party diva', 'uploads/images/2013/11/15/DayPartyDiva.jpg', 1),
(20, 'Diva', 'uploads/images/2013/11/15/DivaInDisguise.jpg', 1),
(21, 'Draped in rubies bot', 'uploads/images/2013/11/15/DrapedInRubies.jpg', 1),
(22, 'Dress for success', 'uploads/images/2013/11/15/Dress-for-Success.jpg', 1),
(23, 'Dripping in luxury', 'uploads/images/2013/11/15/Dripping-in-Luxury.jpg', 1),
(24, 'Drop dead gorgeous', 'uploads/images/2013/11/15/DropDeadGorgeous.jpg', 1),
(25, 'Envelope please', 'uploads/images/2013/11/15/EnvelopePlease.jpg', 1),
(26, 'Espresso', 'uploads/images/2013/11/15/ExpressoYourself.jpg', 1),
(27, 'Fake bake', 'uploads/images/2013/11/15/FakeBake.jpg', 1),
(28, 'Glitterazzi', 'uploads/images/2013/11/15/Glitteratzzi.jpg', 1),
(29, 'Glitz & glamorous ', 'uploads/images/2013/11/15/GlitzGlamorous.jpg', 1),
(30, 'Haule couture', 'uploads/images/2013/11/15/Haute-Couture.jpg', 1),
(31, 'High society', 'uploads/images/2013/11/15/HighSociety.jpg', 1),
(32, 'I am so honored', 'uploads/images/2013/11/15/I-Am-So-Honored-.jpg', 1),
(33, 'I simply love your nails', 'uploads/images/2013/11/15/I-Simply-Love-Your-Nails.jpg', 1),
(34, 'Its not a taupe', 'uploads/images/2013/11/15/ItsNotATaupe.jpg', 1),
(35, 'Just marvelous darling', 'uploads/images/2013/11/15/JustMarvelousDarling.jpg', 1),
(36, 'Leading lady ', 'uploads/images/2013/11/15/LeadingLady.jpg', 1),
(37, 'Love those baby blues ', 'uploads/images/2013/11/15/LoveThoseBabyBlues.jpg', 1),
(38, 'Make up time', 'uploads/images/2013/11/15/Make-up-time.jpg', 1),
(39, 'Meet me in my konos', 'uploads/images/2013/11/15/Meet-Me-in-Mykonos.jpg', 1),
(40, 'Midnight affair', 'uploads/images/2013/11/15/MidnightAffair.jpg', 1),
(41, 'Mimosas by the pool', 'uploads/images/2013/11/15/MimosasByThePool.jpg', 1),
(42, 'My inspiration', 'uploads/images/2013/11/15/My-Inspiration.jpg', 1),
(43, 'My favourite designer ', 'uploads/images/2013/11/15/MyFavoriteDesigner.jpg', 1),
(44, 'Nominated for', 'uploads/images/2013/11/15/NominatedFor.jpg', 1),
(45, 'Oh so 90210', 'uploads/images/2013/11/15/OhSo90210.jpg', 1),
(46, 'One of a kind', 'uploads/images/2013/11/15/One-of-a-Kind.jpg', 1),
(47, 'Only in hollywood', 'uploads/images/2013/11/15/Only-in-Hollywood.jpg', 1),
(48, 'Paparazzied', 'uploads/images/2013/11/15/Paparazzied.jpg', 1),
(49, 'Paradiso Blue', 'uploads/images/2013/11/15/Paradiso-Blue.jpg', 1),
(50, 'Perfect high heels', 'uploads/images/2013/11/15/Perfect-High-Heels.jpg', 1),
(51, 'Plum up the volume', 'uploads/images/2013/11/15/PlumUpTheVolume.jpg', 1),
(52, 'Publicity', 'uploads/images/2013/11/15/PublicityStunt.jpg', 1),
(53, 'Red carpet reddy', 'uploads/images/2013/11/15/RedCarpetReddy.jpg', 1),
(54, 'Richfamous', 'uploads/images/2013/11/15/RichandFamous.jpg', 1),
(55, 'Runaway Red', 'uploads/images/2013/11/15/RunwayRed.jpg', 1),
(56, 'Sands crete', 'uploads/images/2013/11/15/Sands-of-Crete.jpg', 1),
(57, 'Scandalous', 'uploads/images/2013/11/15/Scandalous.jpg', 1),
(58, 'Shazzam', 'uploads/images/2013/11/15/Shazzam.jpg', 1),
(59, 'Shimmering gown', 'uploads/images/2013/11/15/Shimmering-Gown.jpg', 1),
(60, 'Shimmery Silouette', 'uploads/images/2013/11/15/Shimmery-Silouette.jpg', 1),
(61, 'Simply Adorable', 'uploads/images/2013/11/15/Simply-Adorable.jpg', 1),
(62, 'Simply Stunning', 'uploads/images/2013/11/15/SimplyStunning.jpg', 1),
(63, 'Socialite status', 'uploads/images/2013/11/15/SocialiteStatus.jpg', 1),
(64, 'Star power', 'uploads/images/2013/11/15/Star-Power.jpg', 1),
(65, 'Style Saavy', 'uploads/images/2013/11/15/Style-Savvy.jpg', 1),
(66, 'Sunset ', 'uploads/images/2013/11/15/sunset.jpg', 1),
(67, 'Swagg in bottle', 'uploads/images/2013/11/15/Swaggin.jpg', 1),
(68, 'Take a bow', 'uploads/images/2013/11/15/TakeABow.jpg', 1),
(69, 'Thank you mom & dad', 'uploads/images/2013/11/15/Thank-U-Mom-Dad.jpg', 1),
(70, 'Thank you thank you', 'uploads/images/2013/11/15/ThankYouThankYou.jpg', 1),
(71, 'The night is young', 'uploads/images/2013/11/15/TheNightIsYoung.jpg', 1),
(72, 'The perfect pair', 'uploads/images/2013/11/15/The-Perfect-Pair.jpg', 1),
(73, 'Tinsel town', 'uploads/images/2013/11/15/Tinsel-Town.jpg', 1),
(74, 'Toast of the town', 'uploads/images/2013/11/15/ToastOfTheTown.jpg', 1),
(75, 'Tre chic', 'uploads/images/2013/11/15/TreChic.jpg', 1),
(76, 'Violetta darling', 'uploads/images/2013/11/15/ViolettaDarling.jpg', 1),
(77, 'Vip access', 'uploads/images/2013/11/15/vip-access.jpg', 1),
(78, 'What a surprise', 'uploads/images/2013/11/15/What-a-Surprise.jpg', 1),
(79, 'White hot', 'uploads/images/2013/11/15/WhiteHot.jpg', 1),
(80, 'Who are you wearing', 'uploads/images/2013/11/15/Who-Are-You-Wearing.jpg', 1),
(81, 'Wow', 'uploads/images/2013/11/15/Wow.jpg', 1),
(82, 'You like me you really like me', 'uploads/images/2013/11/15/YouLikeMeYouReallyLikeMe.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_pedido`
--

DROP TABLE IF EXISTS `store_pedido`;
CREATE TABLE IF NOT EXISTS `store_pedido` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `store_pedido`
--

INSERT INTO `store_pedido` (`id`, `comprador`, `paid`, `custom`, `coupon`, `subtotal`, `envio`, `total`, `fac_nombre`, `fac_calle`, `fac_colonia`, `fac_cp`, `fac_ciudad`, `fac_estado`, `fac_pais`, `fac_telefono`, `envio_nombre`, `envio_calle`, `envio_colonia`, `envio_cp`, `envio_ciudad`, `envio_estado`, `envio_pais`, `envio_telefono`, `payment`, `payment_id`, `payment_uri`, `payment_text`, `payment_info`, `shipping`, `shipping_id`, `shipping_uri`, `shipping_text`, `shipping_info`) VALUES
(1, '2', 0, 'WzZ26KGS596sHNgnQZNITFZ7shjgcJ0p', NULL, '809.97', '199', '1008.97', 'Andros Romo', 'Paseo Tollocan 742', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de México', 'Mexico', NULL, 'Andros Romo', 'Montecito 38', 'Napoles', '03810', 'DF', 'Distrito Federal', 'Mexico', NULL, 'paypal', 'IDDELATPV', 'uri://tpv', '', '', 'estandar', 'IDDEELENVIO', 'uri://shipping', '', ''),
(2, '2', 0, 's98zIZXn9gbLGV3YaweRl3gsg7lXhRIo', NULL, '809.97', '199', '1008.97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2', 0, 'Wq4Gu7iOegflytblnBwTaHhOivfZtvWb', NULL, '809.97', '199', '1008.97', 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', NULL, 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', NULL, 'conectaio', '38100000000042290121213001160013', 'https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128', '080514', '{"expiry_date": "080514", "type": "oxxo", "barcode_url": "https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128", "barcode": "38100000000042290121213001160013", "object": "cash_payment"}', '', 'HELL YEAH 3', 'HELL YEAH 3', '', ''),
(4, '2', 0, 'jXlKIgWQAxD5ozoBN8xFIvxoQq7nP3U9', NULL, '1800.00', '199', '1999.00', 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', NULL, 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Distrito Federal', 'Mexico', NULL, 'conectaio', '38100000000042290121213001160013', 'https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128', '080514', '{"expiry_date": "080514", "type": "oxxo", "barcode_url": "https://www2.oxxo.com:8443/HTP/barcode/genbc?data=38100000000042290121213001160013&height=50&width=1&type=Code128", "barcode": "38100000000042290121213001160013", "object": "cash_payment"}', '', '00000', 'uri://', '', ''),
(5, '2', 0, '69Hy0IXD8Sz1SjeG8Iku4XkwjHgGTBVf', NULL, '1800.00', '199', '1999.00', 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de México', 'Mexico', NULL, 'Andros Romo', 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de México', 'Mexico', NULL, 'paypal', 'IDDELATPV', 'uri://tpv', '', '', 'estandar', 'IDDEELENVIO', 'uri://shipping', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_pedido_productos`
--

DROP TABLE IF EXISTS `store_pedido_productos`;
CREATE TABLE IF NOT EXISTS `store_pedido_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pedido_id` (`pedido_id`,`producto_id`),
  KEY `store_pedido_productos_7cb5251d` (`pedido_id`),
  KEY `store_pedido_productos_1635d9bd` (`producto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `store_pedido_productos`
--

INSERT INTO `store_pedido_productos` (`id`, `pedido_id`, `producto_id`) VALUES
(23, 1, 5),
(24, 1, 6),
(25, 1, 7),
(26, 1, 8),
(27, 1, 9),
(28, 1, 10),
(29, 1, 11),
(30, 1, 12),
(31, 1, 13),
(32, 1, 14),
(33, 1, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_producto`
--

DROP TABLE IF EXISTS `store_producto`;
CREATE TABLE IF NOT EXISTS `store_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `precio` varchar(100) DEFAULT NULL,
  `stock` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `store_producto_5f2644f7` (`categoria_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=126 ;

--
-- Volcado de datos para la tabla `store_producto`
--

INSERT INTO `store_producto` (`id`, `nombre`, `descripcion`, `categoria_id`, `imagen`, `precio`, `stock`) VALUES
(2, 'Azure Allure', 'Elige de nuestra extensa colección un color con un brillo increíble y además de larga duración.', 3, 'documents/2013/11/15/smallThumb_azure_allure.png', '155.00', 0),
(4, 'Blase Beauty', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_blase_beauty_bottle.png', '155.00', 1),
(5, 'Blushful Moments', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_blushful_moments_bottle.png', '155.00', 1),
(6, 'Vip access', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_20600_rcm_vipaccess.png', '155.00', 1),
(7, 'Always slate', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_20601_rcm_alwaysslate.png', '155.00', 1),
(8, 'Runaway Red', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_20602_rcm_runaway_red.png', '155.00', 1),
(9, 'Richfamous', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_20603_rcm_richfamous.png', '155.00', 1),
(10, 'Scandalous', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottlw_505_rcm_scandalous.png', '155.00', 1),
(11, 'Call My Agent', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_callagentbottle.png', '155.00', 1),
(12, 'Casanovas Kiss', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_casanovas_kiss_bottle.png', '155.00', 1),
(13, 'Champagne nights', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_champagnenights_1.png', '155.00', 1),
(14, 'Creme de la Creme', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_creme_de_la_creme_bottle.png', '155.00', 1),
(15, 'Diva', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_divabottle.png', '155.00', 1),
(16, 'Espresso', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_espressobottle.png', '155.00', 1),
(17, 'Martini', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_martini.png', '155.00', 1),
(18, 'Meet me in my konos', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_meet_me_in_mykonos.png', '155.00', 1),
(19, 'Paradiso Blue', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_paradiso_blue.png', '155.00', 1),
(21, 'Parisian Chic', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_parisian_chic_bottle.png', '155.00', 1),
(22, 'Publicity', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_publicitybottle.png', '155.00', 1),
(23, '9 inch heels', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_9inchheels.png', '155.00', 1),
(24, 'Simply Adorable', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_107_simply_adorable_bottle_1.png', '155.00', 1),
(25, 'I simply love your nails', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_111_i_simply_love_your_nails_bottle_1.png', '155.00', 1),
(26, 'Style Saavy', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_113_style_saavy_bottle.png', '155.00', 1),
(27, 'Shimmery Silouette', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_119_shimmery_silouette_bottle_1.png', '155.00', 1),
(28, 'Only in hollywood', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_133_only_in_hollywood_bottle_1.png', '155.00', 1),
(29, 'One of a kind', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_141_one_of_a_kind_bottle_1.png', '155.00', 1),
(30, 'Haule couture', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_143_haule_couture_bottle.png', '155.00', 1),
(31, 'Dripping in luxury', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_172_dripping_in_luxury_bottle.png', '155.00', 1),
(32, 'My inspiration', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_174_my_inspiration_bottle.png', '155.00', 1),
(33, 'Camera flash', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_176_camera_flash_bottle_1.png', '155.00', 1),
(34, 'Tinsel town', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_178_tinsel_town_bottle.png', '155.00', 1),
(35, 'Thank you mom & dad', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_180_thank_you_momdad_bottle.png', '155.00', 1),
(36, 'I am so honored', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_182_i_am_so_honored_bottle.png', '155.00', 1),
(37, 'Wow', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_184_wow_bottle.png', '155.00', 1),
(38, 'The perfect pair', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_186_the_perfect_pair_bottle_1.png', '155.00', 1),
(39, 'Star power', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_188_star_power_bottle_1.png', '155.00', 1),
(40, 'What a surprise', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_190_what_a_surprise_bottle_1.png', '155.00', 1),
(41, 'Who are you wearing', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_192_who_are_you_wearing_bottle.png', '155.00', 1),
(42, 'Award winning', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_503_award_winning_bottle_1.png', '155.00', 1),
(43, 'A dream come true', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_adreamcometrue.png', '155.00', 1),
(44, 'After party playful', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_afterpartyplayful.png', '155.00', 1),
(45, 'And the winner is', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_andthewinneris.png', '155.00', 1),
(46, 'An evening to remember bot', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_aneveningtorememberbot.png', '155.00', 1),
(47, 'Best dressed', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_bestdressed.png', '155.00', 1),
(48, 'Black stretch limo', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_blackstretchlimo.png', '155.00', 1),
(49, 'Camera shy', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_camerashy.png', '155.00', 1),
(50, 'Can did moment', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_candidmoment.png', '155.00', 1),
(51, 'Draped in rubies bot', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_drapedinrubiesbot.png', '155.00', 1),
(52, 'Drop dead gorgeous', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_dropdeadgorgeous.png', '155.00', 1),
(53, 'Envelope please', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_envelopeplease.png', '155.00', 1),
(54, 'Fake bake', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_fakebake.png', '155.00', 1),
(55, 'Glitterazzi', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_glitterazzi.png', '155.00', 1),
(56, 'Glitz & glamorous ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_glitzglamorous.png', '155.00', 1),
(57, 'Its not a taupe', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_itsnotataupe.png', '155.00', 1),
(58, 'Just marvelous darling', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_justmarvelousdarling.png', '155.00', 1),
(59, 'Leading lady ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_leadinglady.png', '155.00', 1),
(60, 'Lighter shade of gray', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_lightershadeofgray-1.png', '155.00', 1),
(61, 'Love those baby blues ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_lovethosebabyblues.png', '155.00', 1),
(62, 'Midnight affair', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_midnightaffair.png', '155.00', 1),
(63, 'My favourite designer ', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_myfavouritedesigner.png', '155.00', 1),
(64, 'Nervous with anticipation', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_nervouswithanticipation.png', '155.00', 1),
(65, 'Nominated for', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_nominatedfor.png', '155.00', 1),
(66, 'Oh laliscious', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_ohlaliscious.png', '155.00', 1),
(67, 'Oh so 90210', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_ohso90210.png', '155.00', 1),
(68, 'Paparazzied', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_paparazzied.png', '155.00', 1),
(69, 'Plum up the volume', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_plumupthevolume.png', '155.00', 1),
(70, 'Red carpet reddy', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_redcarpetreddy.png', '155.00', 1),
(71, 'Simply stunning', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_simplystunning.png', '155.00', 1),
(72, 'Take a bow', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_takeabow.png', '155.00', 1),
(73, 'Thank you thank you', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_thankyouthankyou.png', '155.00', 1),
(74, 'The night is young', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_thenightisyoung.png', '155.00', 1),
(75, 'Toast of the town', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_toastofthetown.png', '155.00', 1),
(76, 'Tre chic', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_trechic.png', '155.00', 1),
(77, 'Violetta darling', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_violettadarling.png', '155.00', 1),
(78, 'White hot', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_whitehot.png', '155.00', 1),
(79, 'You like me you really like me', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_rcm_youlikemeyoureallylikeme.png', '155.00', 1),
(80, 'Sands of crete', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_sands_crete.png', '155.00', 1),
(81, 'Shazzam', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_shazzambottle.png', '155.00', 1),
(82, 'Show me the money', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_show_me_the_money_small.png', '155.00', 1),
(83, 'Skys the limit', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_skys_the_limit_bottle.png', '155.00', 1),
(84, 'Sunset over sag harbour', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_smallthumb_rcm_20176_sunset_over_sag_harbour.png', '155.00', 1),
(85, 'Socialite status', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_smallthumb_rcm_20177_socialite_status.png', '155.00', 1),
(86, 'Country club chic', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_smallthumb_rcm_20178_country_club_chic.png', '155.00', 1),
(87, 'Day party diva', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_smallthumb_rcm_20179_day_party_diva.png', '155.00', 1),
(88, 'Mimosas by the pool 2', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_smallthumb_rcm_20180_mimosas_by_the_pool_2.png', '155.00', 1),
(89, 'High society', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_smallthumb_rcm_20181_high_society.png', '155.00', 1),
(90, 'Swagg in bottle', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_swagginbottle.png', '155.00', 1),
(91, 'Tangerine on the rocks', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_tangerine_on_the_rocks_small_1.png', '155.00', 1),
(92, 'Behind the scene', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_behindthescene.png', '155.00', 1),
(93, 'Front row fab', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_frontrowfab.png', '155.00', 1),
(94, 'In style', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_instyle.png', '155.00', 1),
(95, 'On the cat walk', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_onthecatwalk.png', '155.00', 1),
(96, 'On trend', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_ontrend.png', '155.00', 1),
(97, 'Own the runway 2', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_bottle_own_the_runway_2.png', '155.00', 1),
(98, 'Dress for success', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_dress_for_success_bottle.png', '155.00', 1),
(99, 'Make up time', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_make_up_time_bottle.png', '155.00', 1),
(100, 'Shimmering gown', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_my_shimmering_gown_bottle.png', '155.00', 1),
(101, 'Perfect high heels', 'Elige de nuestra extensa colección con un color y brillo increíbles de larga duración.', 3, 'documents/2013/10/17/smallThumb_perfect_high_heels_bottle.png', '155.00', 1),
(102, 'ESMALTADO PERMANENTE LED', 'ESMALTADO PERMANENTE LED\r\nDisponible en una amplia selección de colores. Se aplica como un esmalte, y seca durante 3 minutos (para tonos oscuros) y durante 2 minutos (para tonos claros) en la lámpara Portable Light o durante 45 segundos en la lámpara Professional LED Light.\r\n\r\nSemanas y semanas de larga duración del color. ¡No se astilla ni se cae! Y, se retira completamente en 10 - 15 minutos.\r\n', 4, 'documents/2013/10/17/ESMALTADO_PERMANENTE_LED.jpg', '155.00', 1),
(103, 'PREP/PREPARADOR', 'PREP/PREPARADOR\r\nMax Adhesion Sanitizer (Limpiador de máxima adhesión)\r\nDeshidrata la uña para una adhesión máxima del producto.\r\n', 4, 'documents/2013/10/17/Prep-Preparador.jpg', '65.00', 1),
(104, 'STRUCTURE/BASE', 'Base Coat Gel\r\nRCM STRUCTURE\r\nSe fija a la uña sin dañarla, asegurando una larga duración del color. Seca en la lámpara Portable Light durante 1 minuto o durante 45 segundos en la lámpara Professional LED Light.\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Structure.jpg', '255.00', 1),
(105, 'PURIFY/LIMPIADOR', 'PURIFY/LIMPIADOR\r\nPre & Post Application Cleanser (Limpiador antes y después)\r\nEspecialmente formulado para trabajar junto al producto RCM Brilliance/Top Coat. RCM Purify asegura un acabado de máximo brillo sin residuos pegajosos y sin resecar la piel. Úsalo para limpiar y retirar la superficie pegajosa después de la aplicación de RCM Brilliance/Top Coat.\r\n\r\nNOTA: \r\nNo limpie entre capas; sólo después de la aplicación y secado de RCM Brilliance/Top Coat. Cada capa se mantendrá pegajosa hasta después del secado de RCM Brilliance/Top Coat y la aplicación de RCM Purify.\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Purify.jpg', '65.00', 1),
(106, 'ERASE/REMOVEDOR', 'ERASE/REMOVEDOR\r\nGel Nail Polish Remover (Removedor de Gel Polish)\r\nTiene aditivos especialmente acondicionados para evitar que la piel se reseque y mantener una uña saludable. Elimina la aplicación RCM LED Gel Polish en 10 – 15 minutos.\r\n\r\nNota:\r\nLimar suavemente la superficie de la uña antes de iniciar el proceso con el removedor para así eliminar el sello creado por el producto RCM Brilliance.\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Erase.jpg', '65.00', 1),
(107, 'BRILLIANCE / BRILLO', 'BRILLANCE / BRILLO\r\nSeal & Shine Top Coat Gel (Top Coat Gel)\r\nRCM Brilliance/Top Coat es la capa final para sellar la aplicación del color con el máximo brillo. Es un producto en Gel que puede ser fácil y rápidamente retirado con RCM Erase/Removedor. RCM Brilliance/Top Coat seca durante 2 minutos en la lámpara Portable Light o secar durante 45 segundos en la lámpara Professional LED Light.\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Brilliance.jpg', '155.00', 1),
(108, 'REVITALIZE / REVITALIZADOR', 'REVITALIZE / REVITALIZADOR\r\nNourishing Cuticle Oil (Aceite de cutículas nutritivo)\r\nRCM Revitalize Nourishing Cuticle Oil restaura la humedad en la cutícula y piel alrededor de la uña. Revitalize es una mezcla única de Aceite de Semilla de Uva, Aceite de Nuez de Kukui, Sésamo y Vitamina E. Es un producto versátil que puede ser usado en varias aplicaciones para restaurar los aceites naturales.\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Revitalize.jpg', '65.00', 1),
(109, 'PORTABLE LIGHT / LÁMPARA PORTÁTIL', 'PORTABLE LIGHT / LÁMPARA PORTÁTIL\r\nLámpara portátil a pilas\r\n\r\nLa Lámpara Portátil RCM es una lámpara LED que funciona a pilas y seca el Esmaltado Permanente Red Carpet Manicure para una manicura Red Carpet. La Lámpara Portátil es perfecta para viajar o para su uso en el hogar y funciona para secar manos y pies. La Lámpara Portátil Red Carpet Manicure secará el producto Structure/Base Coat en 1 minuto, el Color en 3 minutos y el producto Brilliance/Top Coat en 2 minutos.\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Portable-Light.jpg', '380.00', 1),
(110, 'STARTER KIT', 'STARTER KIT\r\nTodas las herramientas para una Manicura con Red Carpet - Lámpara Portátil de LED, color y accesorios - para una manicura de gel en minutos. \r\nEl Starter Kit de Manicura Red Carpet contiene todo lo necesario para conseguir una manicura profesional en la comodidad de casa con una calidad de salón profesional. Nuestra Lámpara Portátil LED RCM está diseñada especialmente para secar de forma eficiente Structure, Base Coat, Color y Brilliance, Top Coat en minutos. La Manicura RED CARPET durará hasta tres semanas.\r\n\r\nContiene:\r\n• Portable LED Light - Lámpara Portátil de LED a pilas. Pilas NO incluidas (requiere 4 pilas AA).\r\n• Prep - MAX ADHESION PREP. Preparador.\r\n• Structure - BASE COAT GEL. Base.\r\n• Brilliance - SEAL & SHINE TOP COAT GEL. Brillo Final.\r\n• Revitalize - NOURISHING CUTICLE OIL.  Aceite de Cutículas nutritivo.\r\n• Red Carpet Reddy - LED Gel Polish. Color.\r\n• Purify - PRE & POST APPLICATION CLEANSER. Limpiador final.\r\n• Erase - GEL NAIL POLISH REMOVER. Eliminador.\r\n• RCM Manual de Instrucciones\r\n', 4, 'documents/2013/10/17/Red-Carpet-Manicure-Starter-Kit.jpg', '995.00', 1),
(111, 'ESMALTADO PERMANENTE LED', 'ESMALTADO PERMANENTE LED\r\nDisponible en una amplia selección de colores. Se aplica como un esmalte y seca durante 3 minutos (para tonos oscuros) y durante 2 minutos (para tonos claros) en la lámpara Portable Light o durante 45 segundos en la lámpara Professional LED Light.\r\n\r\nSemanas y semanas de larga duración del color. \r\n¡No se astilla ni se cae! Y se retira completamente en 10 - 15 minutos.\r\n', 5, 'documents/2013/10/17/ESMALTADO_PERMANENTE_LED_1.jpg', '155.00', 1),
(112, 'PREP/PREPARADOR', 'PREP/PREPARADOR\r\nMax Adhesion Sanitizer (Limpiador de máxima adhesión)\r\nDeshidrata la uña para una adhesión máxima del producto.\r\n', 5, 'documents/2013/10/17/Prep-Preparador_1.jpg', '65.00', 1),
(113, 'STRUCTURE/BASE', 'Base Coat Gel\r\nRCM STRUCTURE\r\nSe fija a la uña sin dañarla, asegurando una larga duración del color. Seca en la lámpara Portable Light durante 1 minuto o durante 45 segundos en la lámpara Professional LED Light.\r\n', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Structure_1.jpg', '255.00', 1),
(114, 'PURIFY/LIMPIADOR', 'PURIFY/LIMPIADOR\r\nPre & Post Application Cleanser (Limpiador antes y después)\r\nEspecialmente formulado para trabajar junto al producto RCM Brilliance/Top Coat. RCM Purify asegura un acabado de máximo brillo sin residuos pegajosos y sin resecar la piel. Úsalo para limpiar y retirar la superficie pegajosa después de la aplicación de RCM Brilliance/Top Coat.\r\nNOTA: \r\nNo limpie entre capas; sólo después de la aplicación y secado de RCM Brilliance/Top Coat. Cada capa se mantendrá pegajosa hasta después del secado de RCM Brilliance/Top Coat y la aplicación de RCM Purify.\r\n', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Purify_1.jpg', '65.00', 1),
(115, 'ERASE/REMOVEDOR', 'ERASE/REMOVEDOR\r\nGel Nail Polish Remover (Removedor de Gel Polish)\r\nTiene aditivos especialmente acondicionados para evitar que la piel se reseque y mantener una uña saludable. Elimina la aplicación RCM LED Gel Polish en 10 – 15 minutos.\r\nNota:\r\nLimar suavemente la superficie de la uña antes de iniciar el proceso con el removedor para así eliminar el sello creado por el producto RCM Brilliance.\r\n', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Erase_1.jpg', '65.00', 1),
(116, 'BRILLIANCE / BRILLO', 'BRILLIANCE / BRILLO\r\nSeal & Shine Top Coat Gel (Top Coat Gel)\r\nRCM Brilliance/Top Coat es la capa final para sellar la aplicación del color con el máximo brillo. Es un producto en Gel que puede ser fácil y rápidamente retirado con RCM Erase/Removedor. RCM Brilliance/Top Coat seca durante 2 minutos en la lámpara Portable Light o secar durante 45 segundos en la lámpara Professional LED Light.\r\n', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Brilliance_1.jpg', '155.00', 1),
(117, 'REVITALIZE / REVITALIZADOR', 'REVITALIZE / REVITALIZADOR\r\nNourishing Cuticle Oil (Aceite de cutículas nutritivo)\r\nRCM Revitalize Nourishing Cuticle Oil restaura la humedad en la cutícula y piel alrededor de la uña. Revitalize es una mezcla única de aceite de semilla de uva, aceite de nuez de kukui, sésamo y vitamina E. Es un producto versátil que puede ser usado en varias aplicaciones para restaurar los aceites naturales.\r\n', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Revitalize_1.jpg', '65.00', 1),
(118, 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL', 'PROFESSIONAL LED LIGHT / LÁMPARA LED PROFESIONAL\r\nLa Lámpara LED Profesional es una lámpara LED de 6 Watt que cura el Esmaltado Permanente Red Carpet Manicure y sus accesorios para una manicura Red Carpet. La lámpara LED Profesional es pequeña, compacta y ahorra tiempo mientras cura eficientemente el Esmaltado Permanente Red Carpet Manicure tanto en manos como en pies. La lámpara LED Profesional curará Structure en 30 segundos, el Esmaltado Permanente y el Brilliance en 45 segundos.', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Pro-Light.jpg', '1150.00', 1),
(119, 'PRO KIT', 'PRO KIT\r\nTodas las herramientas para una Manicura Red Carpet – Lámpara de LED Portátil, color y accesorios para una manicura gel en minutos.\r\nEl Pro Kit de Manicura Red Carpet contiene todo lo necesario para conseguir una manicura profesional en la comodidad de casa con una calidad de salón profesional. Nuestra Lámpara Portátil LED RCM está diseñada especialmente para secar de forma eficiente Structure/Base Coat, Color y Brilliance/Top Coat en minutos. La Manicura RED CARPET durará hasta tres semanas.\r\n\r\nContiene:\r\n• Professional LED Light - Lámpara Portátil LED para secar el Esmaltado Permanente RED CARPET (Cordón y Adaptador de corriente AC incluido).\r\n• Prep - MAX ADHESION PREP. Preparador.\r\n• Structure - BASE COAT GEL. Base.\r\n• Brilliance - SEAL & SHINE TOP COAT GEL. Brillo final.\r\n• Revitalize - NOURISHING CUTICLE OIL. Aceite de cutículas nutritivo.\r\n• Red Carpet Reddy - LED Gel Polish. Color.\r\n• Purify - PRE & POST APPLICATION CLEANSER. Limpiador final.\r\n• Erase - GEL NAIL POLISH REMOVER. Eliminador.\r\n• Accesorios Manicura\r\n• Manual de Instrucciones\r\n', 5, 'documents/2013/10/17/Red-Carpet-Manicure-Pro-Kit.jpg', '1850.00', 1),
(120, 'TIPS & TRICKS', 'TIPS & TRICKS / UÑAS CON TOQUE ARTÍSTICO\r\nRed Carpet Manicure te da todas las herramientas y mucho más para crear diseños vanguardistas “pincelados”, “Tie Dye”, “marmoleados” o “salpicados” con nuestro Esmaltado Gel en LED. Simplemente sigue las instrucciones y…¡Viste tus uñas con obras de arte! \r\nDesde el diseño más sofisticado al más funky, tú decides como usar tu esmalte para expresar la artista que hay en ti. Crea, diviértete combinando decoraciones de uñas y adhesivos. Hazte tu próxima manicura con RED CARPET PRO MANICURE desde la comodidad de tu casa.\r\n\r\nContiene:\r\n• 1 Paparazzied 9 mL - .30 fl oz \r\n• 1 And The Winner Is 9 mL - .30 fl oz e\r\n• 1 Ooo La Liscious 9 mL - .30 fl oz e\r\n• 1 Black Nail Art Brush 9 mL - .30 fl oz e\r\n• 1 Esponja\r\n• 1 Bolígrafo de puntos\r\n• 1 Aplique Floral\r\n• 1 Manual de Instrucciones\r\n', 6, 'documents/2013/10/17/Tips-n-Tricks.jpg', '0.00', 1),
(121, 'MANICURA FRANCESA', 'MANICURA FRANCESA\r\nViste tus uñas de Romance con una manicura francesa de larga duración. Red Carpet Manicure te da todas las herramientas y mucho más para crear la manicura francesa perfecta con su Esmaltado Gel en LED. Simplemente sigue las instrucciones y… ¡et voilà! Tus uñas exclamarán “¡C’est Magnifique!” \r\n\r\n¿Cansada de aburridas manicuras? Aplica nuestras decoraciones para uñas “cristal gem appliqués” sobre tu “mani” francesa y simplemente ¡Deslumbra! \r\nCrea, diviértete y hazte tu próxima manicura francesa con RED CARPET FRENCH MANICURE desde la comodidad de tu casa. \r\n\r\nContiene:\r\n• 1 White Hot 9 mL - .30 fl oz e\r\n• 1 Camera Shy  9 mL - .30 fl oz e\r\n• 1 Ooo La Liscious 9 mL - .30 fl oz e\r\n• 1 Nervous With Anticipation 9 mL - .30 fl oz e\r\n• 1 Esponja\r\n• 2 Guías para uñas francesas (modelos surtidos)\r\n• 1 Aplicación floral blanco\r\n• 3 Palitos de Naranjo\r\n• 1 Manual de Instrucciones\r\n', 6, 'documents/2013/10/17/French-Manicure.jpg', '0.00', 1),
(122, 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)', 'JOYAS Y GEMAS (LUJO PARA TUS UÑAS)\r\nRed Carpet Manicure te da todas las herramientas y mucho más para vestir de lujo tus uñas con gemas y joyas, especialmente creadas para utilizar con nuestro Esmaltado Gel en LED. Simplemente sigue las instrucciones y…¡Presume de uñas esplendorosas¡ No subestimes tu manicura y consigue unas uñas escandalosas con decoraciones para uñas: gemas, joyas, purpurina. Crea, diviértete y hazte tu próxima manicura con RED CARPET GEMS & JEWELS MANICURE desde la comodidad de tu casa.\r\n\r\nContiene:\r\n• 1 Glitteratzzi 9 mL - .30 fl oz e\r\n• 1 I can''t believe It 9 mL - .30 fl oz e\r\n• 1 Tinsel Town 9 mL - .30 fl oz e\r\n• 1 Dazzling Violet (Violeta) 9mL - .30 fl oz e\r\n• 1 Cosmic Glitter (Verde Onix)\r\n• 1 Starler Glitter (Azul)\r\n• 1 Rueda de Gemas\r\n• 1 Aplicador de Gemas\r\n• 2 Palitos de Naranjo\r\n• 1 Manual de Instrucciones\r\n', 6, 'documents/2013/10/17/Gems-n-Jewels.jpg', '0.00', 0),
(123, 'MUST HAVES KIT ', 'MUST HAVES KIT \r\nEn un cómodo kit encontrarás todos los productos para la aplicación del esmaltado permanente RCM.\r\n\r\nContiene:\r\n• Prep / Preparador de Uñas - LIMPIADOR DE MÁXIMA ADHESIÓN\r\n• Structure - BASE COAT GEL\r\n• Brilliance - TOP COAT GEL\r\n• Revitalize / Revitalizador - ACEITE DE CUTÍCULAS NUTRITIVO\r\n• Purify / Limpiador - LIMPIADOR ANTES Y DESPUÉS\r\n• Erase - ELIMINADOR\r\n', 7, 'documents/2013/10/17/RCM-MustHaves_Kit_Box_render.jpg', '490.00', 1),
(124, 'REMOVE', 'REMOVE / KIT REMOVEDOR\r\n¿Lista para cambiar tu color RED CARPET? ¡Es muy fácil! Con el Kit Gel Polish Removal podrás retirar tu esmaltado permanente RED CARPET sin dañar tus uñas y… ¡lista para disfrutar de un nuevo color!\r\n\r\nSigue las instrucciones:\r\n1. Rompe el sello limando suavemente la superficie de la uña con el buffer.\r\n2. Empapa la toallita con Red Carpet Manicure Erase Gel Nail Polish Remover. Envuelve la uña con el papel de aluminio cuidando que la toallita quede sobre la superficie de la uñas. Déjalo durante 10 minutos.\r\n3. Retira el papel de aluminio. Con un palito de naranjo, retira suavemente los restos del esmaltado permanente. No presiones la uñas.\r\n4. Pule la superficie de la uña ligeramente con el buffer.\r\n5. Masajea las cutículas con el aceite de cutículas Red Carpet Manicure Revitalize Nourish Cuticle Oil *no incluido en el kit\r\n\r\nContiene:\r\n• 20 Hojas de papel de aluminio\r\n• 2 oz. Erase Gel Nail Polish Remover (Eliminador)\r\n• 1 Buffing color Negro\r\n• 2 Palitos de Naranjo\r\n', 7, 'documents/2013/10/17/RemoveKit.jpg', '0.00', 1),
(125, 'ACCESORIES KIT', 'ACCESORIES KIT / KIT DE ACCESORIOS\r\n\r\nElementos para una Manicura Perfecta.\r\n\r\nContiene:\r\n• 1 Cuticle & Pro Buffing Stick.\r\n• 2 Tiras adhesivas pulidoras - 10 Buffing Tabs per Strip\r\n• 1 Emery Board\r\n• 10 Palitos de Naranjo\r\n\r\n', 7, 'documents/2013/10/17/RCMaccessoriesKitWeb.jpg', '55.00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `store_producto_colores`
--

DROP TABLE IF EXISTS `store_producto_colores`;
CREATE TABLE IF NOT EXISTS `store_producto_colores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `colores_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `producto_id` (`producto_id`,`colores_id`),
  KEY `store_producto_colores_1635d9bd` (`producto_id`),
  KEY `store_producto_colores_8247cc2d` (`colores_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=157 ;

--
-- Volcado de datos para la tabla `store_producto_colores`
--

INSERT INTO `store_producto_colores` (`id`, `producto_id`, `colores_id`) VALUES
(153, 6, 77),
(154, 7, 8),
(155, 8, 55),
(156, 9, 54),
(142, 10, 57),
(143, 11, 13),
(145, 15, 20),
(146, 16, 26),
(147, 18, 39),
(148, 19, 49),
(149, 22, 52),
(150, 23, 5),
(151, 24, 61),
(152, 25, 33),
(131, 26, 65),
(132, 27, 60),
(133, 28, 47),
(134, 29, 46),
(135, 30, 30),
(136, 31, 23),
(137, 32, 42),
(138, 33, 14),
(139, 34, 73),
(140, 35, 69),
(141, 36, 32),
(127, 37, 81),
(128, 38, 72),
(129, 39, 64),
(130, 40, 78),
(115, 41, 80),
(116, 43, 6),
(117, 44, 7),
(118, 45, 10),
(119, 46, 9),
(120, 47, 11),
(121, 48, 12),
(122, 49, 15),
(123, 50, 16),
(124, 51, 21),
(125, 52, 24),
(126, 53, 25),
(105, 54, 27),
(106, 55, 28),
(107, 56, 29),
(108, 57, 34),
(109, 58, 35),
(110, 59, 36),
(111, 61, 37),
(112, 62, 40),
(113, 63, 43),
(114, 65, 44),
(99, 67, 45),
(100, 68, 48),
(101, 69, 51),
(102, 70, 53),
(103, 71, 62),
(104, 72, 68),
(92, 73, 70),
(93, 74, 71),
(94, 75, 74),
(95, 76, 75),
(96, 77, 76),
(97, 78, 79),
(98, 79, 82),
(85, 80, 56),
(84, 81, 58),
(83, 84, 66),
(86, 85, 63),
(87, 86, 18),
(88, 87, 19),
(89, 88, 41),
(90, 89, 31),
(91, 90, 67),
(79, 98, 22),
(80, 99, 38),
(81, 100, 59),
(82, 101, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userprofile_userprofile`
--

DROP TABLE IF EXISTS `userprofile_userprofile`;
CREATE TABLE IF NOT EXISTS `userprofile_userprofile` (
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
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `userprofile_userprofile`
--

INSERT INTO `userprofile_userprofile` (`id`, `user_id`, `calle`, `direccion`, `cp`, `ciudad`, `estado`, `telefono`, `calle_envio`, `direccion_envio`, `cp_envio`, `ciudad_envio`, `estado_envio`, `telefono_envio`) VALUES
(1, 4, 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de Mexico', '0445524952830', 'Montecito 33', 'Napoles', '3810', 'DF', 'México', '525562667150'),
(2, 2, 'Paseo Tollocan 742 1', 'Izcalli Toluca', '50150', 'Toluca', 'Estado de Mexico', '525562667150', 'Montecito 33', 'Napoles', '3810', 'DF', 'México', '525562667150'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `humano_colaborador`
--
ALTER TABLE `humano_colaborador`
  ADD CONSTRAINT `rango_id_refs_id_43f7e74b` FOREIGN KEY (`rango_id`) REFERENCES `humano_rango` (`id`),
  ADD CONSTRAINT `role_id_refs_id_ebe9b219` FOREIGN KEY (`role_id`) REFERENCES `humano_role` (`id`),
  ADD CONSTRAINT `tipo_id_refs_id_dd44e1ff` FOREIGN KEY (`tipo_id`) REFERENCES `humano_tipo` (`id`);

--
-- Filtros para la tabla `store_categoria`
--
ALTER TABLE `store_categoria`
  ADD CONSTRAINT `parent_id_refs_id_b08f161c` FOREIGN KEY (`parent_id`) REFERENCES `store_categoria` (`id`);

--
-- Filtros para la tabla `store_pedido_productos`
--
ALTER TABLE `store_pedido_productos`
  ADD CONSTRAINT `pedido_id_refs_id_a4067952` FOREIGN KEY (`pedido_id`) REFERENCES `store_pedido` (`id`),
  ADD CONSTRAINT `producto_id_refs_id_c4c3e847` FOREIGN KEY (`producto_id`) REFERENCES `store_producto` (`id`);

--
-- Filtros para la tabla `store_producto`
--
ALTER TABLE `store_producto`
  ADD CONSTRAINT `categoria_id_refs_id_a71cfb3c` FOREIGN KEY (`categoria_id`) REFERENCES `store_categoria` (`id`);

--
-- Filtros para la tabla `store_producto_colores`
--
ALTER TABLE `store_producto_colores`
  ADD CONSTRAINT `colores_id_refs_id_013742f2` FOREIGN KEY (`colores_id`) REFERENCES `store_colores` (`id`),
  ADD CONSTRAINT `producto_id_refs_id_2f2bcfe7` FOREIGN KEY (`producto_id`) REFERENCES `store_producto` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
