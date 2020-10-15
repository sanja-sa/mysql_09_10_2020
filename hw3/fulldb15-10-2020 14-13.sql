#
# TABLE STRUCTURE FOR: city
#

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на страну, которой принадлежит город',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Страны';

INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('1', '1', 'Lucyburgh', '1975-10-03 05:14:33', '1979-11-19 02:13:19');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('2', '2', 'Lake Trace', '1985-10-29 06:57:56', '1997-05-04 09:46:15');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('3', '3', 'Wisozkville', '1992-02-15 11:16:14', '1998-06-28 15:23:31');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('4', '4', 'North Agustin', '1977-09-01 03:03:10', '2002-11-06 05:22:40');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('5', '5', 'South Kelvinview', '1990-01-16 03:56:25', '2007-03-15 12:51:27');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('6', '6', 'Port Arne', '2002-02-27 06:56:02', '2016-10-01 00:37:39');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('7', '7', 'Reichelton', '1995-05-07 18:05:23', '1972-12-22 12:27:54');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('8', '8', 'South Rahul', '2017-04-18 01:20:00', '2011-12-29 15:38:12');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('9', '9', 'Dannieberg', '1982-02-18 08:22:34', '2015-05-29 00:36:52');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('10', '10', 'East Camylle', '2015-07-25 01:30:29', '1979-07-13 08:25:40');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('11', '11', 'Rennertown', '2004-11-18 01:07:42', '1982-07-29 09:48:58');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('12', '12', 'Murphyborough', '1977-05-10 08:21:27', '1989-10-22 03:25:34');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('13', '13', 'Port Camilla', '1998-06-30 11:35:55', '2003-10-15 18:09:52');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('14', '14', 'Welchton', '2013-01-14 04:01:56', '1971-09-25 05:21:12');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('15', '15', 'North Myrticetown', '1997-04-14 20:05:51', '1999-07-27 22:15:42');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('16', '16', 'Cummeratastad', '1983-10-09 06:23:16', '2020-05-09 19:49:15');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('17', '17', 'Lake Dewitt', '1985-03-09 06:49:41', '1977-05-09 13:09:38');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('18', '18', 'West Chelsea', '1994-11-21 12:43:16', '2003-08-20 15:04:05');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('19', '19', 'New Retafurt', '1986-11-09 04:38:20', '2017-06-20 09:07:03');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('20', '20', 'Dickensstad', '1976-06-21 13:34:22', '2013-11-10 22:05:29');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('21', '21', 'Gennaroborough', '1980-05-13 20:40:51', '1999-03-06 00:29:48');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('22', '22', 'Merlinmouth', '2005-12-01 08:15:33', '1985-08-17 08:11:45');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('23', '23', 'New Annabelle', '1983-05-06 20:02:06', '1980-04-11 12:26:00');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('24', '24', 'Stantonville', '1996-09-19 03:14:43', '2017-07-24 04:15:07');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('25', '25', 'Zemlakshire', '1996-11-13 02:27:03', '2008-11-15 09:25:44');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('26', '26', 'Marianomouth', '2010-03-12 10:29:38', '1996-12-01 09:42:39');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('27', '27', 'New Eugene', '2007-08-08 17:23:26', '2008-01-30 10:49:14');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('28', '28', 'South Hilariochester', '1979-07-01 05:32:42', '2003-05-12 00:22:16');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('29', '29', 'Aliviastad', '2007-10-09 21:21:28', '1992-06-05 19:17:50');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('30', '30', 'New Terencetown', '2014-02-03 09:23:45', '1992-12-25 11:48:35');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('31', '31', 'Baileeview', '1995-01-01 21:22:39', '2007-11-20 14:13:40');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('32', '32', 'Margueritetown', '1975-01-30 14:36:29', '2006-06-20 15:16:47');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('33', '33', 'North Lue', '2018-06-09 06:40:22', '1972-05-09 08:31:46');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('34', '34', 'West Winston', '2005-07-10 04:32:14', '2009-01-07 17:09:46');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('35', '35', 'Catharinechester', '1975-01-08 19:12:21', '2019-07-15 20:09:11');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('36', '36', 'Feilfurt', '1984-12-18 07:18:40', '1985-05-19 04:19:43');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('37', '37', 'Myrtleview', '2006-12-04 22:15:35', '2002-12-27 06:48:49');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('38', '38', 'Ratkeside', '1984-10-18 14:28:41', '1978-04-26 22:07:22');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('39', '39', 'Albertotown', '2012-05-27 02:07:52', '2011-04-03 05:34:22');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('40', '40', 'Davisfort', '1988-09-10 18:30:21', '1971-12-24 21:48:43');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('41', '41', 'South Kolbymouth', '1972-12-02 18:56:03', '1973-05-23 05:40:52');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('42', '42', 'East Moses', '1991-07-31 14:09:38', '2001-04-11 09:12:52');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('43', '43', 'Celestinoton', '2014-08-17 10:08:25', '2018-05-09 18:32:23');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('44', '44', 'West Margot', '1971-11-29 11:23:02', '1972-09-25 04:57:29');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('45', '45', 'Rowechester', '2005-09-24 00:18:27', '2018-06-06 16:16:25');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('46', '46', 'Blancaport', '1984-10-31 23:23:51', '1976-12-04 01:45:22');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('47', '47', 'West Eulahside', '1974-05-09 14:40:37', '1983-12-12 04:32:42');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('48', '48', 'South Ethelville', '2015-11-28 07:24:08', '2004-07-21 11:45:15');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('49', '49', 'Welchland', '1982-09-28 09:41:37', '1989-12-31 11:23:04');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('50', '50', 'Millschester', '1972-03-25 23:43:16', '1975-07-01 10:46:53');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('51', '51', 'Port Michealshire', '2011-04-22 06:17:06', '1975-07-29 22:55:11');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('52', '52', 'West Amelia', '1985-11-16 17:53:01', '2010-02-27 16:11:39');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('53', '53', 'Lake Sandyport', '1988-09-02 08:32:18', '1992-04-01 09:15:00');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('54', '54', 'Ziemannside', '1997-06-30 11:04:50', '1992-04-05 11:28:30');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('55', '55', 'West Cloviston', '1994-08-01 02:18:54', '2016-02-04 05:53:11');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('56', '56', 'New Carleyborough', '1975-10-19 11:07:10', '2007-12-23 04:28:28');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('57', '57', 'North Alexandrinefurt', '1993-07-11 04:04:29', '2006-02-25 11:32:33');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('58', '58', 'South Fionachester', '1996-08-17 17:11:25', '1990-12-26 02:08:01');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('59', '59', 'Shaunchester', '2005-08-16 03:41:11', '1993-02-08 01:31:07');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('60', '60', 'Kerluketown', '2016-09-16 00:32:48', '1997-06-12 11:31:23');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('61', '61', 'East Wileyland', '2018-12-08 07:17:34', '1995-01-14 21:31:23');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('62', '62', 'Lake Elsabury', '1980-11-05 00:30:22', '1973-04-06 22:23:50');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('63', '63', 'New Curtborough', '1993-11-21 19:16:02', '1972-08-21 08:56:21');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('64', '64', 'Aufderharburgh', '2003-04-22 15:31:53', '2014-10-30 19:03:40');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('65', '65', 'Gibsonbury', '1983-08-11 13:33:02', '2007-03-01 06:57:15');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('66', '66', 'Port Ansleymouth', '2003-05-22 17:00:15', '1987-04-23 21:19:50');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('67', '67', 'Lake Lenorahaven', '1991-10-14 21:49:30', '1980-01-09 17:21:58');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('68', '68', 'South Kieran', '1998-03-01 01:00:12', '2011-11-21 03:31:07');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('69', '69', 'North Ressie', '2012-12-02 06:13:14', '1986-09-19 10:05:02');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('70', '70', 'Katrineside', '2019-12-29 23:18:06', '1974-12-17 12:26:48');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('71', '71', 'Lake Reina', '1981-09-20 06:43:01', '2003-08-11 09:48:59');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('72', '72', 'New Haleigh', '2007-01-25 15:45:59', '2000-09-13 00:31:19');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('73', '73', 'Bartonchester', '1996-06-30 19:49:59', '1974-05-21 06:40:31');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('74', '74', 'Kennedifort', '1992-10-04 19:40:06', '1989-11-08 22:34:40');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('75', '75', 'Casimirfurt', '1974-07-17 13:19:36', '2019-12-03 22:06:30');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('76', '76', 'New Barrettmouth', '1978-12-26 04:08:08', '1974-03-18 20:41:33');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('77', '77', 'South Elda', '2004-07-24 01:23:35', '1990-05-13 04:05:28');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('78', '78', 'North Melynafurt', '1971-11-17 10:14:40', '2013-07-21 05:35:02');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('79', '79', 'New Shannon', '1974-03-12 18:11:18', '2015-07-18 04:36:12');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('80', '80', 'South Jordanville', '1995-02-01 01:15:17', '1973-09-13 18:30:30');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('81', '81', 'Port Erlingfurt', '1994-03-16 12:31:40', '1989-02-24 03:59:56');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('82', '82', 'West Ottoshire', '2005-08-11 03:35:49', '1982-11-16 14:54:38');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('83', '83', 'Eloisefort', '1989-05-21 10:53:07', '1980-12-19 13:01:22');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('84', '84', 'Lionelbury', '1986-05-07 16:31:53', '2005-04-21 03:53:59');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('85', '85', 'South Erickstad', '2007-12-30 21:24:25', '1985-01-11 02:14:28');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('86', '86', 'New Harmonyburgh', '1999-04-11 05:02:30', '1972-12-24 16:44:02');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('87', '87', 'Stokesberg', '1973-05-25 04:19:39', '2012-12-22 02:36:06');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('88', '88', 'Hickleside', '2018-05-17 15:23:54', '1993-05-31 01:38:24');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('89', '89', 'Port Abbigailchester', '2017-01-01 22:33:43', '1986-11-14 04:12:20');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('90', '90', 'Hyatthaven', '1983-07-17 18:50:18', '1989-03-25 03:05:05');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('91', '91', 'East Scottyfurt', '1987-08-05 15:31:31', '2020-02-03 07:58:36');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('92', '92', 'West Kendallview', '1971-04-26 21:31:30', '1996-06-29 22:35:37');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('93', '93', 'South Meagan', '2010-03-30 22:29:02', '1979-11-30 00:20:02');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('94', '94', 'East Mariano', '1982-01-08 16:09:42', '1988-07-11 15:28:42');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('95', '95', 'East Evelinemouth', '2009-10-22 09:17:07', '1971-04-27 18:08:42');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('96', '96', 'Vancefort', '2013-04-30 10:55:50', '2013-07-04 10:53:37');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('97', '97', 'New Emilymouth', '1995-04-30 12:51:14', '2020-03-27 08:09:18');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('98', '98', 'Port Rettamouth', '1985-09-19 05:42:33', '1987-01-05 00:34:17');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('99', '99', 'East Stan', '2001-04-19 02:26:06', '1975-05-18 07:50:26');
INSERT INTO `city` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES ('100', '100', 'Legrosville', '2015-12-28 06:32:46', '1992-05-20 17:17:45');


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'nihil', '2007-11-04 03:46:09', '1976-09-05 04:06:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'architecto', '1973-06-18 06:21:08', '2011-07-17 16:01:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'quod', '1986-01-07 10:16:49', '1989-01-10 17:42:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'exercitationem', '1980-04-11 01:08:54', '1993-09-21 17:50:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'aut', '1971-03-01 23:58:06', '2006-11-15 07:41:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'quia', '1999-12-19 07:51:19', '2013-11-29 20:21:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'pariatur', '1977-03-08 01:36:06', '2015-04-18 03:10:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'necessitatibus', '2003-04-16 01:59:19', '1993-04-02 09:01:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'animi', '1982-09-24 15:36:27', '1974-07-16 03:45:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'a', '2007-05-12 03:20:03', '2014-12-15 05:57:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'quis', '2006-10-15 06:57:58', '2002-05-16 10:17:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'praesentium', '1992-09-01 18:18:41', '2006-04-17 16:50:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'et', '2004-08-05 05:50:02', '1985-02-23 10:20:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'veritatis', '2006-07-31 08:21:39', '1989-02-27 12:01:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'quaerat', '1995-12-08 02:20:22', '1999-01-02 20:19:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'voluptas', '2011-05-31 18:08:58', '2012-06-27 15:13:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'ut', '1988-12-04 11:28:05', '2016-12-30 21:56:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'alias', '2007-12-13 03:23:22', '1993-12-09 15:57:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'accusamus', '1989-06-29 07:35:19', '2015-07-28 08:28:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'beatae', '1994-11-01 04:30:58', '1977-05-05 22:12:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'est', '1973-07-20 07:44:55', '1981-01-04 19:07:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'odio', '1974-02-07 20:11:35', '1972-01-31 00:27:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'eaque', '2002-02-24 03:40:31', '2003-09-06 06:54:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'recusandae', '2016-03-12 10:53:18', '1980-02-03 12:39:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'qui', '2012-05-28 12:38:40', '2014-01-15 02:43:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'provident', '1979-10-28 21:15:15', '1990-03-09 22:01:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'omnis', '1988-09-08 05:07:49', '1972-04-07 19:10:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'voluptatibus', '1987-04-14 18:24:50', '1999-06-09 08:47:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'ratione', '1977-05-29 16:43:57', '1970-05-17 07:29:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'possimus', '2015-06-08 09:05:53', '2001-02-11 04:36:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'porro', '1971-07-02 10:11:01', '2015-05-20 08:27:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'in', '1979-10-10 17:32:35', '2011-01-14 04:10:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'dolore', '1986-01-16 03:11:05', '2013-03-20 08:19:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'hic', '1992-09-26 21:53:44', '2003-09-15 22:52:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'autem', '2014-03-11 03:08:54', '1973-06-25 17:00:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'sunt', '1987-09-22 04:07:02', '1986-07-30 08:16:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'error', '1981-03-19 13:02:04', '2002-08-13 00:47:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'facilis', '2001-12-18 02:40:02', '2001-07-07 19:28:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'ad', '2016-05-16 02:45:54', '2007-02-14 19:41:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'at', '2011-02-01 14:36:27', '2016-10-11 08:54:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'cum', '1998-08-05 05:35:51', '1994-07-25 10:58:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'ipsam', '1970-07-18 12:53:44', '1980-03-19 06:25:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'vel', '2016-10-19 11:18:10', '2000-08-31 08:26:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'ab', '2015-05-26 10:31:08', '2019-08-03 18:35:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'molestiae', '1997-01-22 06:16:10', '1994-08-17 07:30:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'sed', '1982-12-14 12:36:30', '2015-10-21 08:30:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'excepturi', '1998-10-26 09:40:56', '1986-05-12 05:19:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'nam', '1973-03-09 00:04:36', '2003-03-25 11:29:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'sint', '2002-12-27 09:50:01', '2009-12-23 13:23:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'temporibus', '2008-03-21 09:57:43', '1990-06-26 17:41:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'eius', '1993-11-24 02:26:27', '2012-09-07 00:06:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'iure', '1987-11-22 18:09:36', '1977-04-29 01:48:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'sapiente', '1977-11-18 04:44:42', '1978-05-13 21:00:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'optio', '1989-10-05 15:13:13', '2019-09-11 09:40:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'quibusdam', '2001-10-08 22:05:41', '1995-04-25 15:20:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'ipsa', '1976-06-09 13:16:31', '1982-07-22 12:11:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'doloribus', '1983-08-05 02:08:29', '1990-06-20 09:48:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'quasi', '2016-10-20 08:55:07', '2007-09-06 10:02:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'corrupti', '1992-10-31 19:40:18', '1985-02-27 05:14:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'inventore', '2001-08-22 03:49:51', '1980-03-22 17:04:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'velit', '2015-05-01 13:50:40', '1990-11-29 02:44:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'aliquam', '2008-09-01 10:43:19', '1994-06-21 00:11:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'laudantium', '1976-05-04 07:02:57', '1977-12-16 07:07:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'repellat', '2008-11-16 11:05:02', '1982-05-03 23:35:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'iusto', '1973-11-24 22:43:06', '2007-08-23 09:12:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'aperiam', '1990-01-23 05:29:54', '1976-09-16 15:21:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'cumque', '2011-06-06 04:48:55', '1971-01-11 22:04:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'fuga', '2000-08-19 21:17:18', '1976-06-16 00:49:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'nobis', '1975-07-30 07:02:36', '2001-12-08 02:24:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'itaque', '1990-08-07 01:49:40', '2007-02-12 23:39:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'voluptate', '1985-02-15 20:29:33', '2016-07-15 02:32:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'officiis', '1978-10-01 09:54:42', '1975-11-13 07:20:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'soluta', '1970-01-15 12:53:02', '2015-03-17 14:22:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'quo', '1982-05-08 21:11:05', '2016-04-03 15:40:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'unde', '1997-08-14 20:39:51', '1990-04-04 10:22:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'nisi', '1972-05-07 19:42:38', '1989-10-21 16:22:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'rerum', '2017-11-07 05:30:07', '1971-11-27 21:46:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'vero', '2006-03-14 04:23:37', '1975-07-09 13:10:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'molestias', '1988-12-05 21:13:23', '1989-01-31 12:06:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'labore', '1991-02-08 06:02:08', '1993-08-19 03:43:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'eligendi', '1973-07-07 18:29:09', '2010-07-06 05:51:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'doloremque', '1977-12-25 21:23:56', '2003-12-18 02:26:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'sit', '2016-01-11 17:00:35', '1997-05-01 01:50:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'magnam', '2009-09-14 10:53:19', '1999-07-25 03:37:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'consequatur', '1989-07-24 11:47:25', '1997-12-07 03:06:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'odit', '1976-09-30 19:48:43', '1991-09-26 08:44:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'tenetur', '2020-07-21 02:38:44', '1984-06-01 02:14:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'adipisci', '1977-04-19 21:52:23', '1977-07-24 14:44:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'officia', '1970-09-09 21:38:34', '1999-02-14 06:37:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'fugiat', '2018-10-30 15:28:12', '2003-10-30 12:02:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'consequuntur', '1975-01-28 04:00:31', '1989-05-22 06:45:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'voluptatem', '1994-05-15 13:43:38', '2000-04-05 12:01:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'rem', '2007-03-21 08:00:47', '1991-06-12 04:42:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'ullam', '2011-10-18 01:01:26', '2015-04-27 20:02:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'tempora', '2019-09-04 15:02:56', '2010-08-07 11:18:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'deleniti', '2012-06-15 18:47:24', '2003-08-09 21:00:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'quas', '1992-08-03 08:20:49', '2017-03-06 21:38:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'ea', '1977-11-05 07:25:34', '2019-12-07 19:52:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'vitae', '1974-04-19 21:14:09', '1994-01-27 03:33:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'totam', '2007-07-13 09:21:59', '2006-07-11 10:17:32');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `user_id` (`user_id`),
  CONSTRAINT `communities_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `communities_users_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('1', '1', '2012-05-01 08:33:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('2', '2', '1998-08-11 12:20:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('3', '3', '1991-01-11 20:31:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('4', '4', '2013-12-30 01:11:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('5', '5', '1978-03-25 14:40:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('6', '6', '2004-04-22 08:42:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('7', '7', '2001-02-12 10:54:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('8', '8', '2000-07-13 00:03:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('9', '9', '1975-01-04 03:08:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('10', '10', '1993-07-29 11:08:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('11', '11', '2013-07-19 21:18:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('12', '12', '2016-09-17 14:14:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('13', '13', '2009-05-17 02:03:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('14', '14', '2014-03-25 23:03:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('15', '15', '1979-06-27 01:46:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('16', '16', '1980-04-22 18:15:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('17', '17', '2016-05-14 16:14:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('18', '18', '2009-10-10 19:42:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('19', '19', '1986-04-09 19:06:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('20', '20', '1971-09-02 22:23:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('21', '21', '1996-08-16 19:25:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('22', '22', '2003-03-27 15:35:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('23', '23', '1988-01-18 04:46:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('24', '24', '2000-07-21 13:13:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('25', '25', '1979-11-08 14:05:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('26', '26', '1987-02-11 19:16:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('27', '27', '2000-12-19 00:15:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('28', '28', '2009-05-20 20:43:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('29', '29', '2003-05-16 02:43:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('30', '30', '1972-05-16 14:50:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('31', '31', '1976-04-17 02:01:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('32', '32', '1986-01-02 22:18:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('33', '33', '1986-12-07 16:03:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('34', '34', '1999-12-25 11:15:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('35', '35', '1992-07-03 06:37:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('36', '36', '1981-12-30 13:08:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('37', '37', '1970-09-20 04:06:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('38', '38', '2018-09-07 12:25:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('39', '39', '1974-12-18 07:20:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('40', '40', '2016-12-12 18:23:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('41', '41', '1974-01-28 18:55:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('42', '42', '1997-02-09 12:13:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('43', '43', '2002-09-22 01:12:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('44', '44', '1996-09-08 18:36:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('45', '45', '2009-01-27 01:48:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('46', '46', '1977-12-25 19:47:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('47', '47', '1985-04-30 09:41:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('48', '48', '1977-10-05 08:10:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('49', '49', '1995-02-22 20:16:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('50', '50', '2019-11-26 11:33:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('51', '51', '1981-03-10 15:10:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('52', '52', '1981-05-31 00:47:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('53', '53', '1976-12-11 21:17:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('54', '54', '2005-05-02 06:53:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('55', '55', '2007-04-10 07:29:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('56', '56', '2016-10-03 17:57:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('57', '57', '1989-09-21 23:06:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('58', '58', '2020-07-14 03:15:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('59', '59', '1994-07-08 02:46:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('60', '60', '1972-07-09 09:35:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('61', '61', '1988-03-27 00:55:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('62', '62', '1988-06-13 21:53:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('63', '63', '1985-12-21 00:54:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('64', '64', '2018-05-07 04:59:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('65', '65', '2017-09-01 01:58:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('66', '66', '1982-03-10 14:04:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('67', '67', '1987-01-08 16:22:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('68', '68', '2017-08-06 20:13:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('69', '69', '2012-11-12 16:13:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('70', '70', '1974-02-05 19:48:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('71', '71', '1982-09-06 15:26:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('72', '72', '1980-02-19 09:17:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('73', '73', '1983-02-09 23:02:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('74', '74', '1981-07-17 02:36:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('75', '75', '2004-04-11 03:48:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('76', '76', '1985-08-23 22:10:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('77', '77', '2008-05-07 02:43:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('78', '78', '2006-12-19 08:59:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('79', '79', '2013-08-28 02:59:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('80', '80', '1970-06-10 21:25:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('81', '81', '1994-01-25 05:15:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('82', '82', '1975-10-30 02:45:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('83', '83', '1990-05-23 10:47:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('84', '84', '2018-08-05 01:51:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('85', '85', '2009-12-04 19:46:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('86', '86', '2006-08-20 00:02:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('87', '87', '1992-01-16 23:18:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('88', '88', '2011-09-25 01:25:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('89', '89', '1986-08-28 14:10:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('90', '90', '2013-03-30 23:52:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('91', '91', '1986-03-17 08:15:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('92', '92', '2011-09-02 03:48:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('93', '93', '2011-02-01 02:41:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('94', '94', '1986-10-28 23:31:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('95', '95', '1984-02-10 17:51:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('96', '96', '1970-02-20 17:54:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('97', '97', '1977-03-14 11:22:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('98', '98', '2011-07-28 14:27:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('99', '99', '1996-05-07 20:57:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES ('100', '100', '2018-02-13 13:39:04');


#
# TABLE STRUCTURE FOR: country
#

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название стран',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Страны';

INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'Bouvet Island (Bouvetoya)', '2018-05-24 22:23:05', '1984-02-22 22:20:07');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'Saint Vincent and the Grenadines', '1984-12-03 17:33:00', '2007-02-06 08:26:33');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'Zambia', '1971-11-05 15:55:14', '1979-04-22 01:32:22');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'Marshall Islands', '2005-05-12 18:07:23', '1997-07-04 04:12:18');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'Bermuda', '1978-03-08 16:17:51', '1997-09-15 02:36:33');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'Uruguay', '1993-11-28 13:54:19', '1977-10-13 04:26:06');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'India', '1992-12-06 08:48:55', '1973-07-06 02:37:30');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'Bhutan', '2002-06-24 05:12:25', '2005-08-07 00:01:08');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'China', '1983-08-30 21:20:02', '1978-08-05 14:13:12');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'Pakistan', '1987-12-08 03:23:24', '2014-05-03 19:58:52');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'Saint Martin', '2000-05-17 11:00:54', '2005-02-11 23:37:14');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'France', '2018-05-31 14:12:10', '1982-10-14 14:35:49');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'Holy See (Vatican City State)', '1988-04-01 12:12:16', '1998-11-13 03:46:29');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'Papua New Guinea', '1996-06-06 09:52:31', '1983-06-26 13:25:45');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'Mali', '1970-10-28 08:14:57', '1970-02-02 18:23:16');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'Finland', '1995-12-15 09:18:38', '1987-03-29 13:34:57');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'Serbia', '1988-11-06 03:57:29', '2007-04-24 17:18:26');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'Tanzania', '1972-02-11 10:35:16', '1989-03-07 11:01:39');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'Uganda', '1998-08-15 05:20:21', '1972-03-07 07:41:29');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'Equatorial Guinea', '1980-12-29 17:27:40', '1979-01-03 21:19:26');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'Peru', '1984-09-05 07:43:21', '2005-08-20 01:35:34');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'Palau', '2000-05-25 17:06:13', '1981-05-30 08:39:01');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'Jordan', '2005-12-25 06:43:24', '1973-11-27 12:50:45');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'Japan', '1977-11-21 00:18:52', '1996-06-24 11:39:19');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'Guatemala', '1989-01-08 19:39:19', '2001-11-29 00:44:48');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'Kyrgyz Republic', '1985-08-14 08:14:32', '1976-05-05 07:40:26');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'Spain', '2007-10-25 19:32:38', '1983-07-07 19:21:32');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'Ghana', '1975-03-27 00:09:14', '1999-06-29 12:21:18');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'Ukraine', '2003-09-14 15:06:43', '1996-03-11 21:48:42');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'Lithuania', '1996-02-17 13:43:47', '1998-11-02 18:39:27');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'Guadeloupe', '2004-02-25 09:50:00', '2019-11-29 22:13:41');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'Hungary', '2003-08-06 07:50:12', '1996-01-25 22:32:59');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'Cape Verde', '2006-06-06 00:45:13', '2016-03-03 08:15:25');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'Turkey', '2013-12-03 13:49:32', '2011-06-20 15:43:22');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'Korea', '2011-07-25 17:24:20', '1991-11-28 00:07:47');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'Cuba', '1979-01-06 06:31:36', '1982-11-25 20:46:25');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'Falkland Islands (Malvinas)', '1997-03-29 20:04:22', '2003-12-27 00:20:40');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'Greenland', '2015-11-07 03:49:23', '1979-12-27 16:37:45');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'Israel', '1979-07-24 18:06:11', '2015-05-26 00:30:36');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'Canada', '1989-06-29 03:25:45', '2016-05-01 05:41:23');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'Singapore', '1985-10-13 16:36:21', '2014-01-07 04:43:19');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'Liechtenstein', '2002-05-31 02:02:11', '1993-10-14 08:43:54');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'New Zealand', '2018-12-24 19:46:51', '1977-06-07 14:55:55');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'Brazil', '2009-04-09 15:47:50', '1983-12-22 02:25:08');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'Estonia', '1992-12-25 15:18:03', '2008-01-27 22:36:39');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'Martinique', '2012-03-11 05:36:33', '2017-08-01 22:27:46');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'Argentina', '2000-08-26 05:31:07', '1983-10-29 03:10:17');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'Jersey', '2008-09-25 07:12:14', '2002-04-24 13:31:13');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'Kenya', '1990-09-25 21:30:41', '2014-04-24 23:05:57');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'Guernsey', '1989-02-01 04:06:44', '1974-09-15 07:18:14');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'Latvia', '1980-06-30 01:16:23', '1982-03-02 04:28:29');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'Honduras', '2018-05-24 18:22:57', '2012-12-23 06:41:49');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'Libyan Arab Jamahiriya', '1992-04-04 00:36:09', '1991-04-30 22:24:46');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'Eritrea', '1976-01-15 08:36:56', '2018-03-29 11:41:58');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'Tunisia', '2018-07-25 00:41:57', '1991-08-25 21:32:11');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'Barbados', '2016-02-20 03:18:34', '1991-04-03 08:58:43');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'Croatia', '2004-06-01 02:15:56', '1989-05-30 19:13:48');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'Botswana', '1976-12-16 23:02:11', '2020-10-02 08:01:50');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'Northern Mariana Islands', '2001-02-02 10:39:59', '2017-06-03 10:59:35');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'Chile', '2019-03-26 20:01:08', '1978-10-21 03:42:40');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'Aruba', '2003-11-04 11:28:13', '1992-07-06 13:59:18');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'Western Sahara', '2008-06-02 21:18:45', '2013-02-22 20:31:06');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'Iraq', '2010-09-30 13:01:13', '2000-02-22 21:46:13');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'Nigeria', '1971-02-22 02:31:05', '2002-01-29 16:33:15');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'Egypt', '2011-04-08 17:03:03', '1973-02-22 02:53:56');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'Turkmenistan', '2012-01-15 03:49:10', '1971-10-17 13:33:37');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'Sao Tome and Principe', '1976-03-17 13:46:02', '2001-02-06 04:51:14');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'Mauritania', '1994-02-02 13:11:32', '1995-07-15 06:43:16');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'Trinidad and Tobago', '2007-06-25 13:51:53', '2013-06-01 18:28:31');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'Dominican Republic', '1988-05-07 18:00:00', '1979-03-13 05:23:46');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'New Caledonia', '1980-10-02 01:26:43', '1970-11-24 16:20:02');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'El Salvador', '2017-04-13 07:30:30', '1983-02-16 15:52:51');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'Sri Lanka', '1992-01-05 13:53:43', '1971-09-27 23:28:52');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'Faroe Islands', '1981-02-24 01:11:59', '2000-02-22 17:18:44');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'Armenia', '2013-10-10 16:09:33', '1992-10-31 16:06:42');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'Malta', '2013-10-29 17:01:06', '2006-04-20 02:37:15');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'Antigua and Barbuda', '1993-10-26 06:33:43', '2005-09-05 07:18:14');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'Tajikistan', '1999-01-12 18:00:34', '2007-02-04 22:09:30');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'Namibia', '1972-09-15 19:58:35', '1977-10-10 04:01:57');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'Cameroon', '1973-05-19 05:51:40', '1997-08-06 07:47:08');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'Reunion', '1976-04-06 23:18:18', '1975-10-11 16:24:54');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'Somalia', '2018-04-08 05:32:47', '1996-03-04 17:02:08');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'Vietnam', '2000-10-30 08:05:25', '1981-11-18 13:05:16');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'Lebanon', '1975-04-16 12:10:49', '2012-03-12 11:36:38');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'Bahamas', '1988-06-28 14:29:08', '2006-02-12 02:17:07');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'French Polynesia', '1991-04-11 01:05:23', '2018-06-23 12:26:18');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'Lao People\'s Democratic Republic', '1991-08-28 15:14:50', '1986-02-16 13:58:41');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'Burundi', '1979-11-09 05:50:17', '2015-09-08 12:05:02');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'Burkina Faso', '1997-09-30 20:13:59', '2005-07-16 22:32:51');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'Ireland', '1981-01-15 01:12:07', '2007-04-15 22:42:00');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'Qatar', '2013-06-08 16:22:41', '1974-06-11 19:14:00');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'Gibraltar', '1971-06-17 21:56:48', '1980-03-03 14:55:39');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'Cote d\'Ivoire', '1974-04-25 12:54:48', '1981-12-02 20:11:34');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'Lesotho', '1971-11-28 13:46:46', '1984-09-01 18:26:29');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'Turks and Caicos Islands', '2012-06-23 14:20:03', '2005-03-23 07:53:28');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'Cook Islands', '2016-01-23 16:01:21', '1987-04-18 07:15:37');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'Congo', '2007-07-09 21:56:39', '1994-09-13 22:30:27');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'Uzbekistan', '1970-06-14 15:25:29', '2004-06-16 15:42:30');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'Paraguay', '1999-11-20 10:35:40', '1975-11-15 09:31:13');
INSERT INTO `country` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'Georgia', '1995-02-28 22:24:10', '2000-08-16 12:30:45');


#
# TABLE STRUCTURE FOR: friendship_statuses
#
 
DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'quam', '1994-12-11 07:34:55', '2017-02-14 15:54:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'sit', '2000-10-06 12:40:06', '2005-01-15 00:25:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'autem', '1973-02-13 23:59:05', '2010-03-28 21:17:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'et', '1978-05-09 18:09:02', '1991-05-30 03:43:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'saepe', '1977-07-02 18:55:33', '2008-10-21 01:50:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'a', '1982-11-09 23:58:30', '1985-06-13 17:27:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'vero', '1973-06-22 02:15:14', '1977-12-11 06:29:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'voluptas', '1979-02-03 10:45:36', '1972-04-16 02:51:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'sunt', '1971-01-05 16:08:59', '2005-02-21 00:21:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'quo', '1985-10-16 09:22:54', '2006-04-23 13:54:07');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'pariatur', '2014-02-25 01:48:36', '1999-09-10 11:21:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'aut', '1990-01-18 13:17:12', '1999-06-12 06:23:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'est', '1992-10-04 09:20:08', '1979-04-09 17:17:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'consequatur', '2017-09-08 09:29:57', '2002-06-13 06:32:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'quos', '1982-04-17 07:31:31', '1999-06-19 16:06:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'exercitationem', '1994-07-31 09:18:16', '2007-07-19 10:45:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'ea', '2019-06-12 21:13:20', '1995-06-06 12:26:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'ut', '2005-08-24 18:29:42', '2003-03-29 20:03:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'id', '1985-11-03 16:45:30', '1986-01-21 20:08:59');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'explicabo', '1991-08-03 17:24:19', '1992-09-01 10:59:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'distinctio', '1994-01-22 21:37:38', '2000-04-24 21:02:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'cupiditate', '1987-03-22 12:13:27', '2007-08-17 04:58:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'officia', '2011-07-12 09:11:25', '2007-04-04 00:04:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'libero', '2005-05-29 20:26:27', '1998-04-07 17:20:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'non', '1976-07-28 20:55:52', '2001-03-16 09:25:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'quia', '1987-12-22 14:19:07', '2003-03-17 02:44:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'velit', '1984-02-03 16:19:40', '1986-04-13 03:33:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'accusamus', '1983-01-12 20:54:46', '1985-06-25 18:25:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'placeat', '2003-11-06 03:39:59', '1982-05-19 15:45:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'illo', '1993-04-01 02:03:34', '1998-08-12 11:38:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'corporis', '1981-10-13 11:27:50', '2008-05-26 04:08:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'dignissimos', '2003-01-20 19:34:21', '1976-06-05 06:28:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'dolor', '1995-04-05 14:25:02', '1973-05-29 04:22:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'aliquid', '2014-07-18 06:21:55', '1988-11-01 07:57:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'expedita', '1983-09-24 09:01:35', '1998-05-04 19:08:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'recusandae', '2008-02-01 22:16:55', '2013-05-24 07:03:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'adipisci', '1973-12-08 04:10:06', '2009-06-19 02:56:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'repellendus', '1983-08-01 07:03:29', '1984-02-18 19:59:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'perspiciatis', '1984-01-08 03:08:08', '1989-09-26 21:09:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'molestiae', '1975-07-23 22:17:28', '1991-04-26 13:13:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'architecto', '2009-12-12 23:42:57', '2018-06-30 15:33:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'error', '1972-10-13 09:02:08', '2016-03-26 05:30:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'deleniti', '2002-10-31 16:49:23', '1970-01-05 17:49:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'necessitatibus', '1973-02-09 03:07:55', '1998-05-23 06:37:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'nisi', '1998-10-12 02:21:55', '2013-03-16 12:15:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'minima', '2006-03-17 16:29:39', '1987-05-04 02:58:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'veritatis', '1980-12-09 02:53:47', '2011-09-03 17:50:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'qui', '1995-02-07 04:13:01', '2014-11-26 11:11:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'eaque', '1976-07-31 08:06:37', '1991-04-26 03:04:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'enim', '2020-03-08 17:30:27', '1997-04-05 23:37:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'ab', '1988-10-21 09:29:14', '2010-07-18 16:05:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'beatae', '1992-02-17 23:19:39', '2014-10-23 10:40:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'neque', '2007-05-28 10:44:40', '2001-05-04 21:37:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'eum', '1993-10-07 17:12:11', '1994-06-13 00:02:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'deserunt', '1970-12-02 14:56:08', '2002-08-21 20:41:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'magni', '1976-09-05 06:14:45', '2014-03-17 07:09:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'ducimus', '1988-01-01 10:20:39', '1997-07-25 00:52:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'voluptatem', '1976-10-31 19:33:37', '1976-12-02 00:34:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'omnis', '1980-05-24 03:04:40', '2010-08-11 00:42:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'sint', '2003-02-12 13:26:51', '1980-05-24 11:34:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'fuga', '2001-09-14 00:03:39', '2012-12-14 22:49:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'fugiat', '1986-08-15 15:57:28', '1974-06-20 17:38:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'nihil', '2001-02-26 21:13:41', '2020-01-20 05:27:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'aliquam', '1991-08-22 15:40:43', '2007-06-02 20:00:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'eos', '1982-09-01 03:01:41', '1988-11-15 14:47:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'alias', '1984-03-29 04:27:59', '1994-05-03 03:04:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'corrupti', '1980-11-21 21:43:09', '1992-09-22 18:09:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'dolores', '1982-05-04 19:32:33', '1976-11-12 12:16:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'suscipit', '1993-05-21 07:47:10', '1996-07-03 08:58:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'delectus', '1976-02-27 09:35:50', '1987-11-08 12:05:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'vitae', '2005-07-05 06:27:13', '2008-06-01 11:09:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'ipsa', '1977-05-16 09:35:00', '1990-01-16 04:36:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'cumque', '2018-07-09 17:20:43', '2017-04-06 04:22:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'totam', '1999-02-28 09:46:39', '2017-01-01 16:56:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'atque', '1976-12-07 07:28:30', '2009-06-21 22:31:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'fugit', '1990-02-18 10:49:01', '1987-10-01 04:31:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'sed', '2003-05-26 15:33:38', '2018-12-09 08:38:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'similique', '1990-01-09 01:42:33', '1989-07-21 22:16:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'porro', '1991-07-19 11:34:13', '1995-06-14 21:12:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'hic', '1983-09-20 13:19:42', '1991-08-11 07:46:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'earum', '2012-11-20 16:39:13', '1998-10-29 20:02:29');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'quibusdam', '1997-06-07 16:38:52', '2018-12-05 13:03:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'voluptatibus', '1997-04-04 02:26:19', '2011-01-08 09:58:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'incidunt', '1990-02-28 05:29:02', '2008-04-04 23:11:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'odio', '2007-11-03 01:45:19', '1972-06-10 16:13:42');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'consequuntur', '2016-03-04 21:35:11', '2016-02-04 15:11:13');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'molestias', '2015-02-28 00:27:58', '2009-12-12 13:30:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'illum', '1982-07-10 19:58:22', '1995-11-05 09:06:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'quis', '1986-10-26 10:20:49', '1980-10-05 16:47:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'reprehenderit', '2018-06-24 02:33:49', '1983-11-24 02:32:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'natus', '1985-11-13 06:32:38', '2002-05-08 13:04:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'optio', '2009-08-16 00:57:56', '1981-11-28 19:48:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'rerum', '1976-11-25 20:54:01', '1993-01-08 17:18:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'iste', '1996-07-15 11:46:51', '1984-02-25 17:27:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'maiores', '1999-11-22 07:14:39', '1986-01-11 03:54:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'vel', '1970-10-04 09:01:55', '1989-01-25 01:58:19');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'dolore', '1984-03-05 01:19:29', '2019-03-29 09:11:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'modi', '2008-04-26 08:00:26', '1973-07-11 11:00:15');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'animi', '1990-10-23 16:09:45', '1989-04-19 08:44:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'iure', '2014-08-31 20:24:03', '1995-07-31 15:33:24');


#
# TABLE STRUCTURE FOR: friendships
#

DROP TABLE IF EXISTS `friendships`;

CREATE TABLE `friendships` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Время подтверждения приглашения',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ',
  KEY `friend_id` (`friend_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `friendships_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `friendships_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friendships_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `friendship_statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('1', '1', '1', '1990-09-27 21:05:43', '1992-12-23 11:34:24', '2015-05-22 09:01:03', '1989-01-13 12:27:36');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('2', '2', '2', '1998-12-24 08:18:47', '1989-09-14 14:02:29', '1972-06-12 23:00:28', '1986-09-10 11:05:52');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('3', '3', '3', '2004-05-30 22:03:04', '1970-12-10 20:13:13', '2016-10-16 23:49:26', '1977-10-17 05:38:47');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('4', '4', '4', '2003-01-16 07:25:00', '1994-12-08 20:57:24', '1997-03-03 16:46:50', '1979-06-23 01:26:56');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('5', '5', '5', '2004-12-08 04:28:50', '2015-10-26 00:24:01', '1972-12-29 22:08:43', '2013-07-17 01:17:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('6', '6', '6', '1997-11-06 07:21:40', '1978-05-15 19:53:25', '2003-07-25 19:38:53', '1974-10-04 21:25:27');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('7', '7', '7', '1983-01-01 20:24:51', '1990-04-04 02:53:23', '1985-03-04 21:13:50', '2013-08-30 00:54:07');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('8', '8', '8', '1987-06-04 17:09:45', '2013-02-20 06:14:25', '2002-02-23 09:00:41', '1974-03-02 19:06:31');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('9', '9', '9', '2013-01-15 18:48:58', '1981-08-07 09:41:42', '1970-02-20 16:01:25', '1974-04-05 12:45:10');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('10', '10', '10', '1981-10-03 10:38:51', '1980-09-19 20:23:19', '1978-10-24 06:27:14', '2017-01-28 02:34:35');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('11', '11', '11', '2012-07-11 02:28:33', '1993-07-22 07:52:31', '2006-02-08 14:27:15', '1989-08-16 17:33:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('12', '12', '12', '1970-06-02 10:39:42', '1971-03-03 12:45:32', '1981-01-28 05:41:09', '2007-11-08 15:50:07');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('13', '13', '13', '1977-06-05 21:24:42', '1987-11-13 13:52:46', '1975-12-18 16:14:17', '1980-03-05 17:53:57');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('14', '14', '14', '1994-07-21 16:44:50', '1992-11-01 20:47:46', '1973-01-10 18:37:58', '1982-08-26 11:16:18');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('15', '15', '15', '1997-07-23 20:22:39', '1984-09-13 15:05:04', '1998-04-27 15:11:22', '1971-07-30 10:06:33');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('16', '16', '16', '2009-03-06 15:57:05', '1992-01-12 05:05:26', '2006-06-10 05:41:19', '2003-01-24 14:13:44');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('17', '17', '17', '1992-01-09 09:03:31', '1975-03-21 03:41:41', '2012-07-17 16:26:27', '1991-05-25 14:11:54');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('18', '18', '18', '2018-07-23 16:54:56', '1982-02-02 11:05:53', '1992-12-02 08:57:40', '2018-07-01 14:13:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('19', '19', '19', '1986-03-05 13:09:37', '1975-08-30 14:10:15', '2013-12-21 22:54:20', '2019-05-27 18:21:49');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('20', '20', '20', '2009-11-09 07:38:54', '1998-11-02 04:50:21', '2006-12-15 18:32:19', '1985-10-16 16:41:33');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('21', '21', '21', '2003-07-14 15:44:11', '1980-07-28 07:12:11', '1993-07-31 03:26:21', '1978-04-11 23:58:20');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('22', '22', '22', '2006-09-10 01:03:13', '2012-09-24 15:48:08', '1981-03-31 18:04:37', '1989-05-23 17:10:30');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('23', '23', '23', '1976-03-27 18:36:30', '1987-06-16 12:41:42', '2017-04-29 01:32:56', '1972-09-21 21:04:10');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('24', '24', '24', '1994-08-03 18:01:34', '2017-02-02 00:51:55', '2018-12-21 21:11:25', '1979-01-12 23:02:54');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('25', '25', '25', '1981-07-02 21:34:57', '2020-03-07 02:49:32', '1995-09-26 20:21:26', '2020-07-10 17:09:40');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('26', '26', '26', '1977-04-11 22:16:11', '1971-06-22 04:40:46', '1970-02-24 00:00:06', '2015-06-07 17:35:20');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('27', '27', '27', '1998-06-02 23:42:46', '2011-10-01 21:32:37', '1997-09-01 07:39:15', '2006-01-05 21:30:25');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('28', '28', '28', '2013-10-01 22:48:28', '2009-02-19 02:10:03', '2002-05-25 08:03:13', '2007-02-04 13:14:13');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('29', '29', '29', '1994-03-02 00:12:02', '2009-04-13 10:04:50', '2017-03-16 19:41:25', '2010-01-14 07:53:11');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('30', '30', '30', '1982-07-20 04:50:50', '1989-05-21 20:12:22', '1970-01-27 10:12:29', '1974-12-01 13:10:49');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('31', '31', '31', '1981-07-24 18:31:24', '2004-03-04 23:14:31', '1973-12-27 02:21:16', '2019-05-20 01:53:18');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('32', '32', '32', '1989-03-08 10:20:28', '1982-03-17 01:38:28', '2010-09-27 13:42:34', '2012-02-20 23:53:09');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('33', '33', '33', '2003-01-14 04:41:30', '1975-03-26 15:05:34', '2017-12-03 00:37:37', '1984-08-05 08:34:01');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('34', '34', '34', '2020-03-28 06:15:57', '1993-08-12 21:43:48', '1995-10-31 12:49:42', '2003-03-16 23:15:45');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('35', '35', '35', '1994-03-03 08:59:22', '2001-02-02 07:04:55', '1980-08-25 08:53:07', '1983-09-26 06:04:18');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('36', '36', '36', '1978-08-30 07:35:03', '2004-02-27 18:19:54', '2011-12-24 07:18:45', '1973-07-05 23:31:33');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('37', '37', '37', '1983-04-24 03:03:43', '1991-10-25 05:04:08', '2007-03-10 20:22:01', '1997-09-19 03:26:25');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('38', '38', '38', '2000-11-02 15:19:26', '2012-10-25 21:26:55', '1997-03-22 13:10:48', '2005-06-19 14:39:36');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('39', '39', '39', '2008-11-23 20:59:41', '1997-06-12 23:42:42', '1994-12-26 13:28:57', '1979-01-30 14:14:28');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('40', '40', '40', '1994-11-30 04:04:37', '2012-02-03 14:51:18', '2007-12-17 16:01:55', '1980-10-26 18:32:15');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('41', '41', '41', '2010-06-05 04:24:25', '1978-05-10 09:24:52', '2011-10-18 23:28:59', '2016-10-25 01:16:16');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('42', '42', '42', '2008-03-22 03:05:19', '2016-01-25 18:17:21', '2007-01-26 16:51:51', '1999-02-26 20:04:53');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('43', '43', '43', '1986-03-24 01:38:38', '1985-11-11 12:43:12', '1992-10-04 21:43:24', '1975-02-01 17:56:26');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('44', '44', '44', '2016-02-29 09:50:30', '2006-12-23 01:02:53', '1971-09-18 18:09:36', '1998-01-22 04:36:44');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('45', '45', '45', '2010-01-07 09:58:19', '1996-07-27 00:54:11', '2010-01-29 02:34:20', '1976-06-16 13:25:23');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('46', '46', '46', '2010-11-22 14:10:54', '2015-02-15 17:56:15', '1993-04-27 17:04:14', '2014-08-28 20:03:35');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('47', '47', '47', '1992-06-09 22:36:25', '1979-05-11 09:18:57', '1989-09-06 17:32:12', '1985-02-25 23:26:56');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('48', '48', '48', '2020-09-20 12:52:57', '1989-10-30 21:19:52', '2016-07-20 10:02:37', '2020-06-19 11:29:05');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('49', '49', '49', '1981-02-08 14:34:42', '1988-06-26 22:51:11', '1987-08-05 07:20:21', '1996-11-07 02:29:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('50', '50', '50', '1995-12-01 08:52:03', '1991-05-29 03:49:50', '2006-01-05 19:03:14', '2019-10-01 20:57:03');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('51', '51', '51', '2020-02-20 15:13:37', '1996-09-22 19:46:24', '1990-05-16 11:59:00', '2004-03-24 19:10:32');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('52', '52', '52', '1982-06-21 18:50:37', '1992-06-14 11:36:18', '1995-01-26 17:21:09', '2018-04-11 07:59:45');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('53', '53', '53', '2013-01-02 15:31:38', '2019-12-01 23:03:00', '2002-09-22 16:49:05', '1970-02-20 13:09:04');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('54', '54', '54', '1988-09-18 12:06:01', '1979-11-17 23:56:52', '1976-11-22 22:32:15', '2004-11-19 09:01:36');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('55', '55', '55', '1997-04-30 16:51:55', '2007-04-27 19:08:12', '2019-06-13 06:39:50', '2006-07-01 16:00:20');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('56', '56', '56', '2006-09-11 22:18:26', '2004-05-30 17:29:53', '1990-05-16 05:00:27', '2002-03-08 19:14:36');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('57', '57', '57', '1993-07-21 08:11:48', '1987-04-11 12:46:27', '1971-08-06 02:02:11', '1984-12-25 02:35:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('58', '58', '58', '1993-07-18 03:55:24', '1990-12-22 02:30:10', '2012-11-24 15:33:19', '1994-05-28 13:18:21');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('59', '59', '59', '1988-02-13 20:48:40', '1988-10-06 00:44:20', '2009-08-03 03:34:30', '1995-11-05 14:57:54');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('60', '60', '60', '2020-01-06 08:00:36', '1971-02-02 18:52:42', '2015-08-21 07:21:56', '1977-04-10 23:06:16');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('61', '61', '61', '1989-06-04 15:54:31', '1983-07-20 23:26:46', '2009-05-18 00:26:09', '2010-04-14 21:23:00');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('62', '62', '62', '2015-08-02 17:05:38', '2016-10-10 18:45:51', '2011-11-03 13:46:02', '1979-02-04 17:16:01');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('63', '63', '63', '2020-01-25 02:21:11', '1982-02-08 10:15:16', '1980-06-16 14:32:51', '1985-11-29 06:44:41');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('64', '64', '64', '1987-10-14 12:23:12', '2006-01-23 00:41:31', '1977-08-01 19:54:38', '2011-06-08 20:25:16');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('65', '65', '65', '1994-07-28 05:03:43', '1995-01-10 23:26:59', '2018-10-05 14:19:34', '1974-09-22 19:26:48');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('66', '66', '66', '1996-03-25 05:41:12', '1991-11-19 03:20:17', '1992-11-02 11:53:12', '1980-07-04 21:45:16');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('67', '67', '67', '1981-07-08 23:57:04', '1995-09-05 20:40:11', '1979-08-10 13:32:47', '1999-12-01 19:17:56');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('68', '68', '68', '1992-04-18 00:22:46', '2018-01-15 04:22:41', '2014-12-15 02:41:38', '2016-01-24 20:29:06');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('69', '69', '69', '2018-04-24 07:49:38', '2019-07-13 18:36:29', '1978-05-06 04:58:54', '2008-02-17 21:47:35');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('70', '70', '70', '1993-02-21 21:14:25', '2018-12-23 01:30:44', '2001-05-09 06:52:23', '2010-05-14 17:57:45');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('71', '71', '71', '1997-04-25 19:11:14', '1970-07-03 15:55:06', '1990-09-25 14:23:15', '2019-08-28 12:13:00');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('72', '72', '72', '1973-09-07 13:58:53', '2012-09-14 04:06:24', '2004-09-28 00:03:26', '2000-10-08 09:32:24');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('73', '73', '73', '2013-02-13 00:01:55', '1998-05-24 13:38:02', '2002-07-27 15:53:14', '1993-08-18 15:32:08');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('74', '74', '74', '1995-07-21 20:38:02', '1975-02-17 09:31:10', '2015-07-09 03:38:59', '1977-04-23 14:54:51');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('75', '75', '75', '1996-06-29 12:44:35', '1997-01-19 08:26:32', '2019-11-16 06:47:49', '2016-02-05 23:32:35');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('76', '76', '76', '1976-03-11 22:53:25', '1997-11-17 04:33:35', '1990-11-24 03:44:39', '2019-08-16 18:53:29');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('77', '77', '77', '1996-11-22 07:00:06', '2020-01-26 00:36:54', '1973-09-27 22:02:32', '2019-01-17 17:51:03');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('78', '78', '78', '1987-04-25 17:12:24', '2001-05-10 13:16:59', '2002-05-21 10:20:56', '1994-06-12 05:17:58');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('79', '79', '79', '2018-06-01 22:15:04', '1972-04-07 11:47:37', '2012-05-22 20:16:05', '2015-09-07 21:00:18');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('80', '80', '80', '1980-07-19 13:36:08', '1980-05-11 14:56:41', '1993-08-22 18:56:04', '2017-03-29 02:27:20');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('81', '81', '81', '1988-04-14 15:33:43', '2013-03-11 09:04:43', '2009-05-21 11:34:54', '2001-10-06 23:55:17');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('82', '82', '82', '1972-12-23 14:40:56', '2010-01-05 21:16:56', '1993-07-23 21:59:09', '2001-07-03 15:40:14');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('83', '83', '83', '1983-02-08 08:43:30', '2013-03-22 20:16:36', '2010-04-03 04:34:28', '2008-09-12 15:31:21');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('84', '84', '84', '1976-09-28 08:19:51', '2004-01-24 09:19:33', '1975-07-28 20:36:20', '1990-09-03 22:48:09');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('85', '85', '85', '2013-04-23 04:46:11', '1998-09-19 14:04:57', '1987-01-01 11:30:41', '2008-08-22 20:17:29');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('86', '86', '86', '2002-12-11 18:56:21', '2014-08-17 13:48:03', '1981-12-23 05:13:49', '1991-07-09 21:03:45');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('87', '87', '87', '1999-11-27 22:39:56', '2017-02-09 14:43:51', '1988-02-06 07:28:22', '2010-02-24 10:46:32');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('88', '88', '88', '2013-05-27 22:07:55', '1994-12-17 10:13:09', '1971-06-30 21:12:36', '1981-04-28 04:41:48');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('89', '89', '89', '1972-09-04 09:06:32', '1983-05-31 07:14:30', '1975-12-25 07:10:01', '2018-02-14 05:35:31');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('90', '90', '90', '1976-07-20 01:41:03', '1978-04-20 16:55:13', '2009-05-19 07:18:33', '2016-04-25 11:25:13');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('91', '91', '91', '1977-04-25 02:49:57', '1978-06-17 01:56:21', '2001-11-14 17:11:09', '1978-05-20 18:45:20');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('92', '92', '92', '2010-03-14 20:26:59', '1982-01-24 22:05:38', '2007-05-19 23:46:38', '2017-08-09 06:06:15');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('93', '93', '93', '2018-12-08 11:06:02', '1979-09-10 19:11:16', '2017-07-20 00:15:46', '2014-04-03 05:34:45');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('94', '94', '94', '1970-09-28 02:12:11', '1999-05-06 13:15:08', '2011-01-12 02:31:17', '1995-03-21 16:46:22');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('95', '95', '95', '1990-03-09 01:07:53', '2018-11-06 03:00:26', '1990-04-26 06:25:03', '1976-07-25 20:30:51');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('96', '96', '96', '2017-04-01 17:04:24', '1980-03-01 14:01:36', '2015-01-08 00:20:08', '1981-10-11 10:27:31');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('97', '97', '97', '1973-12-15 03:53:12', '1979-05-22 14:16:17', '1997-04-10 08:32:00', '1992-06-07 11:29:14');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('98', '98', '98', '1984-12-05 22:10:42', '2001-01-09 16:30:44', '1971-04-15 05:50:04', '2011-06-17 10:14:32');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('99', '99', '99', '2011-08-30 12:13:55', '1974-11-13 12:38:10', '1994-05-30 20:35:34', '1992-10-27 00:14:13');
INSERT INTO `friendships` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES ('100', '100', '100', '1971-04-10 11:16:26', '2015-09-18 22:20:24', '1974-09-06 10:21:42', '2008-03-30 18:38:53');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` bigint(20) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('1', '1', '8945', '404304', NULL, '1', '1993-09-11 02:55:44', '2004-05-09 18:14:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('2', '2', '6086', '396332', NULL, '2', '1976-03-03 19:39:06', '2009-10-20 18:45:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('3', '3', '4723', '533552', NULL, '3', '2004-01-30 18:44:22', '1971-02-10 12:03:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('4', '4', '1947', '740778', NULL, '4', '1986-11-23 17:50:03', '2002-01-26 20:28:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('5', '5', '6867', '625511', NULL, '5', '1984-05-10 14:40:16', '1994-07-08 16:13:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('6', '6', '8685', '583410', NULL, '6', '1976-06-18 16:37:43', '1977-06-08 17:41:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('7', '7', '7143', '484318', NULL, '7', '1978-04-26 21:32:51', '1983-04-15 11:54:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('8', '8', '5480', '169378', NULL, '8', '2009-02-14 10:19:09', '1985-12-31 18:39:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('9', '9', '5898', '276188', NULL, '9', '1994-01-29 10:48:12', '1982-06-27 16:57:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('10', '10', '6921', '790540', NULL, '10', '1992-11-22 16:29:43', '2001-11-03 09:02:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('11', '11', '7996', '592096', NULL, '11', '2012-12-20 06:18:30', '2015-03-15 02:32:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('12', '12', '2020', '298084', NULL, '12', '1989-02-23 05:50:46', '2004-12-06 04:13:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('13', '13', '8635', '791202', NULL, '13', '1991-10-14 23:42:31', '1984-06-01 22:37:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('14', '14', '6491', '601633', NULL, '14', '2010-12-20 09:39:54', '1989-07-08 16:06:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('15', '15', '6651', '506522', NULL, '15', '1979-04-18 07:28:51', '2010-04-14 10:13:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('16', '16', '3179', '757559', NULL, '16', '2011-09-08 03:41:23', '1996-03-18 15:50:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('17', '17', '7819', '533179', NULL, '17', '2019-04-08 20:35:58', '1972-08-05 11:50:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('18', '18', '9954', '736555', NULL, '18', '2016-04-12 20:57:54', '1976-01-27 21:29:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('19', '19', '2543', '737138', NULL, '19', '2009-01-28 01:06:42', '2018-10-31 10:28:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('20', '20', '3211', '196247', NULL, '20', '2001-05-28 11:14:11', '2000-10-25 18:36:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('21', '21', '9899', '200231', NULL, '21', '1986-09-04 20:15:02', '2007-11-27 12:14:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('22', '22', '7300', '944892', NULL, '22', '2004-12-15 07:51:02', '2008-09-23 11:05:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('23', '23', '1836', '211886', NULL, '23', '1980-02-02 22:18:40', '2006-01-18 09:56:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('24', '24', '8175', '716752', NULL, '24', '1981-10-26 04:10:57', '1985-09-07 18:29:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('25', '25', '9880', '402656', NULL, '25', '2015-09-15 15:06:43', '2004-06-10 15:28:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('26', '26', '3254', '528634', NULL, '26', '1977-05-28 09:00:16', '2010-10-07 01:05:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('27', '27', '7095', '621369', NULL, '27', '1976-05-31 04:58:49', '1994-07-31 16:57:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('28', '28', '9483', '386327', NULL, '28', '2004-10-30 16:45:35', '2003-01-12 08:28:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('29', '29', '5167', '531000', NULL, '29', '1984-04-07 01:50:30', '1989-03-09 12:26:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('30', '30', '6992', '258681', NULL, '30', '1971-07-27 20:48:54', '2019-03-01 10:51:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('31', '31', '8296', '967494', NULL, '31', '1996-04-10 19:23:33', '1996-03-18 02:34:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('32', '32', '6695', '621537', NULL, '32', '2014-04-01 23:44:14', '1973-01-31 23:03:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('33', '33', '9870', '354448', NULL, '33', '2002-04-06 05:05:12', '2012-08-03 08:06:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('34', '34', '8746', '734375', NULL, '34', '2010-05-02 18:44:08', '1995-05-16 05:04:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('35', '35', '5346', '829177', NULL, '35', '2003-12-22 08:04:09', '1982-03-17 09:12:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('36', '36', '7129', '693934', NULL, '36', '2015-09-18 08:29:54', '2010-06-13 02:35:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('37', '37', '3301', '121001', NULL, '37', '1972-10-01 12:21:51', '2000-08-24 10:47:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('38', '38', '1115', '860280', NULL, '38', '1988-04-16 06:10:03', '1997-08-06 11:31:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('39', '39', '7467', '894722', NULL, '39', '1999-12-13 21:59:28', '2004-12-18 07:00:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('40', '40', '4551', '302260', NULL, '40', '1971-11-23 06:41:09', '1971-12-14 17:12:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('41', '41', '4832', '713418', NULL, '41', '1989-02-08 07:48:11', '1981-11-26 09:31:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('42', '42', '2203', '715529', NULL, '42', '1986-01-04 15:15:54', '1986-05-13 09:46:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('43', '43', '1408', '148201', NULL, '43', '2013-12-02 23:38:56', '1995-03-26 09:54:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('44', '44', '6161', '743720', NULL, '44', '1985-08-04 22:32:58', '1985-11-12 04:25:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('45', '45', '2351', '282156', NULL, '45', '2014-11-27 14:21:31', '2015-03-14 16:16:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('46', '46', '1633', '391288', NULL, '46', '2020-09-02 05:34:15', '1990-09-14 16:31:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('47', '47', '3446', '835179', NULL, '47', '1989-04-05 10:54:14', '1992-03-17 04:17:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('48', '48', '4371', '663955', NULL, '48', '1984-04-03 04:07:26', '1986-06-04 02:27:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('49', '49', '6505', '572375', NULL, '49', '2012-05-03 00:47:04', '2008-04-24 16:10:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('50', '50', '7116', '516393', NULL, '50', '1998-08-19 11:53:26', '2019-08-21 17:54:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('51', '51', '2001', '793430', NULL, '51', '1992-08-27 23:45:32', '2003-12-30 14:56:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('52', '52', '5980', '439460', NULL, '52', '1992-01-09 05:12:17', '2006-03-19 17:00:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('53', '53', '5752', '363079', NULL, '53', '1986-12-31 03:10:03', '2016-04-08 04:58:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('54', '54', '9849', '842952', NULL, '54', '1991-07-04 14:15:23', '1977-05-24 21:59:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('55', '55', '1750', '586857', NULL, '55', '1987-03-16 23:30:51', '2000-06-17 22:43:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('56', '56', '6090', '109814', NULL, '56', '1972-08-08 13:40:19', '1971-06-25 14:15:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('57', '57', '1188', '420183', NULL, '57', '2015-05-20 19:51:04', '1974-11-16 16:37:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('58', '58', '8259', '334026', NULL, '58', '2015-05-12 10:34:15', '1979-12-19 05:04:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('59', '59', '2646', '380931', NULL, '59', '2016-06-26 23:56:27', '1989-03-13 19:45:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('60', '60', '9936', '406801', NULL, '60', '2006-09-04 07:40:34', '1996-06-04 10:35:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('61', '61', '2685', '425367', NULL, '61', '1978-03-27 01:33:18', '1970-03-27 07:55:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('62', '62', '1334', '318405', NULL, '62', '2011-07-29 17:56:05', '1974-03-27 19:03:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('63', '63', '2253', '942928', NULL, '63', '1987-10-06 11:53:45', '1992-10-14 09:35:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('64', '64', '4527', '290914', NULL, '64', '2012-04-25 06:14:17', '1991-09-25 01:51:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('65', '65', '2602', '744253', NULL, '65', '2007-10-20 13:28:30', '1986-06-18 18:27:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('66', '66', '3316', '577664', NULL, '66', '2014-11-14 02:01:43', '2020-06-21 11:05:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('67', '67', '1972', '101711', NULL, '67', '1983-01-28 14:00:31', '1986-07-14 21:18:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('68', '68', '8059', '475875', NULL, '68', '1975-12-15 18:49:44', '1987-11-16 05:27:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('69', '69', '2519', '665030', NULL, '69', '1973-05-22 11:39:05', '1987-07-10 10:17:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('70', '70', '8600', '282282', NULL, '70', '2008-11-24 19:02:52', '2010-01-24 08:30:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('71', '71', '7696', '919380', NULL, '71', '1980-03-20 09:41:19', '1987-01-01 07:11:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('72', '72', '8917', '649783', NULL, '72', '1974-11-22 20:24:01', '1990-09-26 23:54:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('73', '73', '5098', '358713', NULL, '73', '1989-10-22 04:05:07', '1992-10-03 14:07:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('74', '74', '3028', '579376', NULL, '74', '2010-05-03 13:22:25', '1981-05-08 19:07:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('75', '75', '6605', '178839', NULL, '75', '2017-03-09 16:07:16', '1986-07-13 23:22:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('76', '76', '4055', '439719', NULL, '76', '1993-08-06 18:02:40', '1990-10-09 14:55:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('77', '77', '7654', '773782', NULL, '77', '1974-08-01 20:19:32', '1991-12-28 00:31:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('78', '78', '7239', '603804', NULL, '78', '1994-03-25 00:50:19', '2017-04-07 01:01:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('79', '79', '4335', '782501', NULL, '79', '2003-12-21 20:56:59', '1986-01-24 14:22:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('80', '80', '9700', '671013', NULL, '80', '1974-05-20 12:56:22', '1985-08-07 04:28:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('81', '81', '9168', '929078', NULL, '81', '1990-06-28 06:36:36', '1990-09-06 12:43:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('82', '82', '5330', '649599', NULL, '82', '2004-05-21 09:59:28', '2019-10-08 13:24:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('83', '83', '4307', '521360', NULL, '83', '2009-05-26 22:02:08', '1998-07-16 19:22:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('84', '84', '4518', '177793', NULL, '84', '1979-08-31 17:13:46', '2008-01-18 14:15:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('85', '85', '4300', '834690', NULL, '85', '2018-01-07 18:20:31', '1980-11-27 02:49:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('86', '86', '5833', '248339', NULL, '86', '2010-06-08 23:38:17', '1974-03-31 12:04:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('87', '87', '6746', '285304', NULL, '87', '2012-08-14 23:28:26', '2020-08-03 13:17:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('88', '88', '4306', '137839', NULL, '88', '2003-01-31 03:44:11', '2005-02-20 01:18:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('89', '89', '4504', '783314', NULL, '89', '2012-05-10 15:57:13', '1999-09-18 03:34:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('90', '90', '4825', '877874', NULL, '90', '2009-04-08 16:31:39', '2019-08-05 20:21:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('91', '91', '6678', '509658', NULL, '91', '1987-10-22 07:34:59', '1970-05-19 16:07:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('92', '92', '4830', '759455', NULL, '92', '2012-01-14 01:08:56', '1991-07-25 12:26:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('93', '93', '8637', '306126', NULL, '93', '1978-11-12 00:21:19', '1980-07-01 13:48:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('94', '94', '8198', '828768', NULL, '94', '1971-10-09 03:22:05', '2004-04-01 12:07:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('95', '95', '5479', '252617', NULL, '95', '1978-02-10 05:16:49', '1992-03-26 13:10:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('96', '96', '1010', '282815', NULL, '96', '1994-05-19 22:24:29', '1983-04-17 11:53:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('97', '97', '9711', '214654', NULL, '97', '1979-09-27 07:23:46', '1980-05-11 19:40:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('98', '98', '2876', '585334', NULL, '98', '1980-06-12 12:31:01', '1992-06-18 09:17:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('99', '99', '5432', '786992', NULL, '99', '1989-08-05 06:31:25', '2018-07-14 19:38:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES ('100', '100', '3660', '556837', NULL, '100', '2015-10-19 08:12:41', '1993-06-10 23:59:23');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'text/tab-separated-values', '1977-12-18 02:18:43', '1972-01-24 23:51:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'application/vnd.kenameaapp', '2003-06-15 15:16:00', '1972-08-02 01:29:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'text/x-nfo', '1976-11-08 02:56:40', '1983-08-05 16:37:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'application/vnd.ms-powerpoint.slide.macroenabled.12', '1987-01-16 01:31:42', '1971-04-28 11:16:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'application/vnd.oasis.opendocument.text-template', '1989-08-23 10:47:26', '1985-03-20 03:50:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'application/vnd.sun.xml.calc', '2000-03-08 03:15:23', '2003-09-25 10:41:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'model/vnd.collada+xml', '1994-08-28 23:45:06', '2004-06-01 11:13:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'application/vnd.epson.msf', '1971-11-18 19:41:48', '1971-05-12 14:35:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'audio/adpcm', '1982-05-21 06:46:10', '2001-12-20 01:34:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'application/x-wais-source', '2010-09-14 15:50:16', '1981-06-27 15:06:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'application/vnd.immervision-ivp', '1991-06-08 20:28:37', '1982-03-29 22:23:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'application/ecmascript', '1990-06-15 00:34:10', '2010-10-12 00:36:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'application/yang', '1986-03-30 08:12:52', '1995-05-17 13:34:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'application/vnd.stepmania.stepchart', '2015-11-22 19:41:05', '1997-03-24 01:32:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'video/jpm', '1973-07-19 17:39:15', '1984-05-07 19:24:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'application/vnd.lotus-screencam', '1974-01-10 02:49:42', '2005-01-25 21:55:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'application/vnd.route66.link66+xml', '1972-05-08 10:28:16', '1975-02-25 04:51:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'application/vnd.las.las+xml', '1974-03-07 14:35:45', '2015-07-02 21:44:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'text/x-opml', '2009-04-15 21:18:08', '1995-01-18 23:07:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'application/vnd.ms-cab-compressed', '1986-02-11 22:53:18', '1972-12-03 23:31:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('21', 'application/xop+xml', '2004-06-09 00:45:22', '1996-06-22 00:41:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('22', 'application/vnd.syncml+xml', '2016-04-29 15:28:57', '1989-11-28 20:15:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('23', 'image/vnd.dece.graphic', '1988-06-18 19:07:27', '2014-02-11 12:00:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('24', 'model/vnd.dwf', '1993-06-15 08:54:44', '1982-12-10 01:07:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('25', 'audio/vnd.rip', '2004-06-24 07:26:15', '2016-02-24 19:32:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('26', 'application/x-zmachine', '2004-04-29 13:15:04', '1972-06-16 07:01:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('27', 'application/x-x509-ca-cert', '1995-03-21 19:09:03', '1994-03-11 02:15:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('28', 'audio/x-pn-realaudio-plugin', '2013-03-24 15:18:04', '1971-12-22 08:34:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('29', 'application/vnd.oasis.opendocument.presentation', '1994-05-11 05:48:57', '1985-02-04 03:46:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('30', 'application/x-xliff+xml', '2008-05-10 08:33:43', '1990-10-03 17:04:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('31', 'application/vnd.tmobile-livetv', '1987-07-07 12:19:35', '1987-02-18 02:58:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('32', 'application/x-ms-application', '2008-11-22 07:17:18', '2003-08-17 07:22:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('33', 'application/vnd.kde.karbon', '2019-05-17 19:26:30', '2011-12-28 03:27:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('34', 'text/vcard', '2011-10-02 17:16:15', '2012-10-24 02:40:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('35', 'text/vnd.curl.mcurl', '2016-12-04 05:34:23', '1976-11-01 03:04:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('36', 'application/x-cfs-compressed', '2013-05-28 06:35:43', '1991-10-25 06:47:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('37', 'application/x-tcl', '2016-04-07 02:03:29', '1976-02-28 17:54:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('38', 'image/x-cmx', '1993-10-26 15:30:57', '2013-09-20 15:42:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('39', 'video/vnd.uvvu.mp4', '1985-07-05 03:27:43', '2018-10-26 23:55:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('40', 'application/vnd.data-vision.rdz', '1995-06-04 06:31:39', '1995-11-29 02:48:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('41', 'application/vnd.rn-realmedia', '2015-11-27 22:50:53', '2007-09-13 15:27:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('42', 'video/vnd.fvt', '2013-08-17 12:34:35', '1981-05-06 16:10:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('43', 'image/vnd.xiff', '1970-08-04 05:15:17', '1994-12-07 09:10:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('44', 'application/jsonml+json', '1975-07-09 11:39:17', '2010-07-01 17:57:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('45', 'application/vnd.adobe.air-application-installer-package+zip', '1984-03-14 18:44:57', '1999-12-03 00:16:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('46', 'application/vnd.umajin', '1981-07-07 09:00:27', '1981-12-16 20:16:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('47', 'application/vnd.sun.xml.writer.template', '2006-11-01 10:27:21', '2012-04-02 21:38:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('48', 'application/widget', '1996-08-07 15:48:03', '1990-04-04 23:25:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('49', 'application/pgp-encrypted', '2020-03-14 04:49:50', '1976-09-12 23:31:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('50', 'application/x-ms-shortcut', '1988-11-24 02:31:21', '1975-09-09 16:33:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('51', 'model/vnd.gdl', '1974-12-04 22:07:23', '1987-12-13 22:36:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('52', 'application/vnd.visionary', '1976-11-28 12:01:17', '2006-07-19 13:47:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('53', 'application/vnd.dvb.service', '1981-06-28 04:46:25', '2007-09-03 23:01:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('54', 'application/vnd.rim.cod', '1987-06-20 04:08:41', '2018-10-11 00:47:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('55', 'application/vnd.ms-pki.seccat', '2005-12-15 00:44:19', '2014-02-01 06:52:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('56', 'model/x3d+binary', '2004-06-30 06:22:45', '1978-05-23 08:25:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('57', 'text/sgml', '1998-07-09 00:41:25', '2009-11-19 16:41:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('58', 'video/h264', '1972-04-24 09:53:20', '1984-02-19 02:15:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('59', 'application/x-cdlink', '1971-02-15 08:45:38', '1976-12-27 04:10:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('60', 'image/cgm', '2008-02-03 12:33:57', '2001-06-29 16:38:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('61', 'application/java-archive', '2018-10-03 05:57:38', '1979-08-29 21:26:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('62', 'application/vnd.ms-powerpoint.slideshow.macroenabled.12', '1985-06-08 03:44:48', '1979-11-29 20:36:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('63', 'application/vnd.iccprofile', '2018-12-02 22:55:52', '2005-09-06 10:58:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('64', 'application/mods+xml', '1970-01-04 10:19:06', '1975-01-20 06:49:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('65', 'application/vnd.sus-calendar', '1974-04-20 22:28:47', '1983-03-28 12:41:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('66', 'application/x-gtar', '1998-06-25 09:26:41', '1995-09-11 08:45:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('67', 'text/css', '2003-02-09 13:07:06', '1971-07-14 02:10:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('68', 'application/x-xfig', '2008-08-14 23:27:27', '1984-10-14 01:31:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('69', 'application/x-msaccess', '2002-02-16 06:57:41', '2012-06-04 20:43:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('70', 'application/x-msbinder', '1990-09-25 06:05:32', '1988-11-12 21:31:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('71', 'application/x-stuffitx', '1974-02-04 04:58:53', '1988-07-04 02:33:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('72', 'application/pgp-signature', '1982-09-16 22:11:12', '2007-07-26 16:12:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('73', 'text/vnd.graphviz', '2001-09-24 20:41:29', '1981-04-29 03:34:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('74', 'application/vnd.oasis.opendocument.formula-template', '1995-07-06 02:44:53', '2003-05-13 03:48:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('75', 'application/vnd.kde.kivio', '1989-06-17 08:22:58', '1983-09-17 11:18:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('76', 'application/x-font-woff', '1989-11-09 06:25:40', '1990-07-26 05:55:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('77', 'image/webp', '1999-06-08 03:40:02', '2005-10-17 14:47:53');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('78', 'image/x-pcx', '2004-08-10 08:16:48', '1970-05-28 20:02:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('79', 'application/vnd.sun.xml.draw', '1994-10-02 06:22:21', '2004-06-04 23:47:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('80', 'application/vnd.tao.intent-module-archive', '1987-03-14 00:06:17', '2019-03-31 06:38:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('81', 'video/x-flv', '2000-07-05 22:03:01', '1996-08-02 07:09:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('82', 'application/vnd.smaf', '1976-11-09 23:32:09', '2017-03-15 17:29:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('83', 'application/xhtml+xml', '1998-10-31 10:05:58', '1976-04-28 04:19:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('84', 'application/vnd.dece.unspecified', '2018-02-26 04:52:24', '1980-07-15 06:02:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('85', 'application/x-chess-pgn', '1975-10-09 03:53:59', '2003-07-21 06:04:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('86', 'application/x-tads', '2006-03-19 04:42:05', '2020-09-12 23:23:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('87', 'application/vnd.ms-powerpoint.template.macroenabled.12', '1994-12-11 10:24:23', '2016-09-01 11:51:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('88', 'application/vnd.semf', '2003-05-01 21:01:28', '1975-07-20 17:43:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('89', 'application/x-msclip', '2011-01-05 16:07:34', '1975-01-21 17:16:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('90', 'text/x-vcard', '2017-08-14 18:28:26', '1992-07-22 12:15:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('91', 'application/vnd.recordare.musicxml+xml', '2019-05-22 14:58:25', '2007-08-31 09:30:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('92', 'application/mathml+xml', '1993-05-06 02:54:47', '1981-07-29 04:42:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('93', 'application/vnd.ms-excel.sheet.binary.macroenabled.12', '2020-07-21 06:49:59', '2000-07-06 13:46:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('94', 'video/ogg', '2004-07-25 11:50:06', '1975-04-15 21:51:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('95', 'application/vnd.fdsn.seed', '1972-01-30 06:58:55', '1997-06-24 18:20:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('96', 'application/xcap-diff+xml', '2016-10-05 19:24:48', '2009-11-09 13:18:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('97', 'image/x-freehand', '1985-08-05 12:56:19', '2005-06-07 21:38:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('98', 'application/x-mscardfile', '1980-05-09 09:35:15', '1982-11-26 23:33:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('99', 'text/x-sfv', '2017-05-21 19:52:19', '1970-01-05 00:47:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('100', 'application/javascript', '2007-05-31 20:17:15', '1972-11-14 13:03:23');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('1', '1', 'Ab odio aliquam iusto autem. Possimus odio sunt iusto. Eveniet ex quidem eveniet. Nulla repellendus aperiam et nihil quas aut earum.', 1, '1996-12-08 17:08:44', '1999-07-03 21:39:58');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('2', '2', 'Quia aliquam fuga voluptatibus expedita aspernatur explicabo. Omnis provident perferendis minus itaque inventore culpa nulla. Est nulla quam illum architecto. Eaque est qui quaerat eos adipisci quasi ullam eligendi. Quo ullam eius ratione exercitationem ea sequi.', 0, '1986-11-08 15:54:04', '1989-09-17 06:29:12');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('3', '3', 'Veniam est aut laudantium expedita ex dignissimos in. Necessitatibus enim dolores officiis ut. Ipsa temporibus cumque ut aut nam odit consequatur magni.', 0, '2018-10-05 17:07:23', '2010-04-04 22:45:03');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('4', '4', 'Id nemo maiores libero vero expedita. Eius itaque consequuntur consequatur tempore aut necessitatibus et. Fuga possimus totam quo voluptatem pariatur magni id. Aut voluptas ad hic quisquam.', 1, '2016-10-06 21:04:32', '2013-04-28 23:32:30');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('5', '5', 'Et et maxime incidunt voluptatem. Vel eius architecto fugiat voluptate maxime ipsum. Unde ut qui id. Qui numquam quam ab iste est.', 1, '1984-09-01 08:34:22', '2015-04-21 17:37:29');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('6', '6', 'Unde dolores qui quos laudantium omnis enim modi. Sit sit praesentium reprehenderit molestias dolorem aliquid porro. Omnis minus provident consequatur qui reiciendis. Culpa expedita sed at. Eum hic perferendis dolorem est nisi fugiat.', 0, '1972-04-20 20:39:08', '2015-08-15 21:45:52');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('7', '7', 'Voluptatem laudantium magni beatae a sunt error consequuntur. Magni deserunt vel commodi deleniti cum quibusdam culpa. Ut et non atque corporis et fugit repudiandae.', 0, '2019-01-20 12:33:40', '2002-03-23 22:04:23');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('8', '8', 'Cum accusantium quaerat iste dignissimos quis. Est a et architecto explicabo distinctio. Animi iste dicta reprehenderit earum sunt.', 0, '2017-03-05 06:34:14', '1992-10-24 01:47:24');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('9', '9', 'Enim autem voluptas accusantium esse sit iste hic. Fugiat officiis sit aspernatur enim earum. Quia nam dolorem voluptatem voluptas fugit. Et quo culpa ut nam nihil repellat rerum.', 0, '2016-04-21 19:10:37', '1990-02-10 17:24:14');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('10', '10', 'Nihil ex rerum provident est repellendus. Doloremque repudiandae est corporis. Tempore ea ipsum voluptates consequuntur nobis maiores porro.', 1, '2007-09-09 21:55:17', '1970-08-24 15:21:59');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('11', '11', 'Recusandae alias distinctio iure quo. Aliquam aut qui quibusdam. Quisquam et eos veritatis repellendus eveniet.', 0, '1994-06-29 22:58:52', '1972-12-11 19:02:13');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('12', '12', 'Veritatis tenetur sit quasi sed cum ducimus. Quidem vel vero nihil qui. Vitae molestiae dolorem quis aut.', 1, '1983-11-19 15:21:11', '2015-04-30 20:30:20');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('13', '13', 'Corrupti eveniet architecto exercitationem doloremque distinctio sed quae. Dolorum ex dolor et libero ipsa accusantium. Non quis voluptatem est laborum perspiciatis enim. Maxime non in qui blanditiis ut aspernatur.', 0, '2020-06-19 08:42:22', '1983-01-23 08:44:14');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('14', '14', 'Sint sit sunt nulla possimus cupiditate aperiam velit. Ut quasi vel doloremque tenetur fuga. Consequatur et dolor ut.', 1, '2002-05-25 00:12:03', '1996-01-08 16:45:50');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('15', '15', 'Dolorum iusto libero debitis itaque eaque. Aperiam ut culpa iusto dolorem corrupti non rerum. Consequatur reiciendis quisquam excepturi nesciunt sed eligendi minima.', 0, '2017-11-12 12:54:42', '1988-01-02 14:22:44');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('16', '16', 'Autem qui iure eum vel voluptatibus. Non voluptatum qui error voluptas aspernatur. Sapiente nihil laudantium iure. Ipsam voluptas perspiciatis nam molestiae velit. Error similique dolorem neque dolorem modi et et.', 1, '2007-11-28 03:19:42', '2001-06-27 01:27:39');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('17', '17', 'Qui molestiae architecto et ullam quam quidem tempore. Et ea libero quia dolorem eaque quisquam.', 1, '2004-12-01 23:44:22', '1984-08-22 18:57:44');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('18', '18', 'Accusantium officia soluta beatae dicta aliquam mollitia at. Reiciendis ad est est ut et. Neque eaque error voluptatem aspernatur. Ea fuga praesentium vitae ex vel magni vero reprehenderit.', 1, '1974-12-30 00:01:38', '1988-05-31 20:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('19', '19', 'Impedit corporis explicabo quibusdam. Eveniet quae sed cumque commodi quia aut cupiditate. Laborum nulla iure sed soluta et et libero.', 0, '1989-05-11 21:37:02', '1987-12-02 11:03:45');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('20', '20', 'Praesentium quae accusamus omnis explicabo ducimus eveniet voluptates. Necessitatibus molestiae cupiditate et consequatur dolor. Est iste dolor doloremque excepturi eum.', 1, '1972-09-09 21:52:31', '1993-04-17 06:10:17');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('21', '21', 'Mollitia assumenda velit quae facilis dolorem. Quo exercitationem vel ea minima. Officiis voluptas laudantium ea aperiam voluptas soluta consequatur. Quisquam placeat et excepturi sed suscipit.', 1, '1974-12-27 20:59:52', '1983-01-20 13:09:37');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('22', '22', 'Sit amet excepturi sed et sint sunt consectetur ut. Labore id quos iste voluptatem. Dignissimos quo non laboriosam. Dolorem quis incidunt placeat quis.', 1, '2008-06-18 12:59:49', '2020-09-06 21:55:19');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('23', '23', 'Ut quo omnis modi quas at voluptas et. Sint inventore veritatis ab omnis sunt quam. Suscipit ut consectetur aut tempore esse facilis.', 0, '1974-07-07 07:33:48', '1994-10-24 02:35:55');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('24', '24', 'Ut consectetur consequatur amet non voluptatem neque perferendis. Earum cumque voluptate enim dolorem hic repellendus. Aut perferendis cupiditate sunt atque consectetur ex dolor. Consequuntur totam et aut molestiae asperiores. Enim voluptatibus et cupiditate voluptas doloribus minus hic.', 0, '1977-02-03 14:25:41', '2004-09-01 07:59:07');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('25', '25', 'Sit est ut maxime. Ipsa placeat pariatur officiis aut quisquam. Voluptatem et vero tenetur omnis explicabo doloremque.', 0, '1980-05-04 07:34:22', '2018-01-27 13:36:55');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('26', '26', 'Beatae in provident perspiciatis repellendus. Dolores nihil id porro id qui aut. Qui eaque ratione voluptatem dolores quisquam rerum.', 0, '2011-10-12 00:47:09', '1994-06-17 08:06:35');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('27', '27', 'Voluptatem molestias laudantium sunt rerum omnis fugiat magnam. Nostrum ut est qui recusandae. Aut eligendi sunt dolor aspernatur eaque quasi.', 0, '2003-07-08 09:22:02', '1971-06-20 06:40:39');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('28', '28', 'Ducimus est similique deserunt. Est dolor unde aut ratione quisquam quaerat atque.', 1, '2006-07-13 11:44:18', '1971-02-24 05:06:27');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('29', '29', 'Accusantium eum est veritatis ex saepe sapiente. Iure molestiae nostrum architecto ipsum. Officiis vitae debitis recusandae ipsum et. Nam ab et quidem doloremque iusto.', 1, '1993-05-23 23:29:43', '1985-10-06 19:51:51');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('30', '30', 'Sed dolorem laboriosam fugit. Dolores dolorem consequatur accusamus dolore. Ipsa debitis voluptatibus velit in. Iste qui ratione et beatae dolorem.', 0, '2019-11-24 02:22:43', '2006-09-30 03:25:59');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('31', '31', 'Odio exercitationem tempore earum assumenda ex eaque veritatis explicabo. Facilis ut dignissimos incidunt fugiat labore natus. Et voluptates officia reiciendis.', 0, '2002-02-11 03:04:51', '1990-06-06 12:55:36');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('32', '32', 'Fugit sit omnis quas et enim. Illo omnis nesciunt est officia magnam. Harum eaque doloribus dolor dolorem maxime occaecati distinctio. Esse quas aut exercitationem non minus consequatur autem.', 0, '1998-09-28 03:32:22', '2009-01-13 07:13:05');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('33', '33', 'Debitis tenetur consectetur officiis quo consequuntur ut. Voluptatum illo aut neque et vero ut vitae delectus. Distinctio qui placeat nesciunt asperiores sunt nam.', 1, '1970-07-30 08:55:01', '1987-11-08 22:13:27');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('34', '34', 'Quis doloribus repellendus rem sed. Fugit reprehenderit laborum harum vitae a. Odio qui possimus ut odit sunt facilis. Facere consequatur consequatur quia commodi.', 0, '2018-06-21 22:43:56', '1974-05-19 08:28:33');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('35', '35', 'Minus tempora consequatur cum libero voluptatem et. Voluptate dolore excepturi expedita natus. Est deleniti nihil et esse suscipit nobis eius.', 1, '1999-08-13 23:25:38', '1994-06-06 02:37:06');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('36', '36', 'Aut eaque saepe earum quia id alias qui. Alias repellendus aut aspernatur omnis est aut enim aliquid. Non quia impedit dolor ad corporis molestias nihil.', 1, '1977-06-20 07:13:25', '1988-07-12 15:01:52');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('37', '37', 'Fugiat quis corrupti est. Et ex qui et.', 1, '2016-11-24 06:03:19', '2003-09-29 17:16:20');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('38', '38', 'Debitis voluptatibus occaecati nostrum soluta veniam. Ut mollitia mollitia facilis enim eum deleniti. Aut sunt velit facilis dolorum asperiores.', 1, '1973-02-04 13:26:34', '2002-01-18 08:33:28');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('39', '39', 'Eum magnam et laboriosam et aut unde dolores. Veniam quia ut tenetur aliquam sint autem. Aut consequatur laudantium consequuntur est dolores. Sit aliquid dolorem nostrum voluptas libero.', 1, '1971-10-24 17:18:50', '2001-06-29 02:22:16');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('40', '40', 'Rerum fuga maiores repudiandae doloremque cumque ex. Architecto quam dignissimos eos sunt ducimus. Quia autem omnis ipsum.', 0, '1996-02-29 09:29:42', '2014-02-07 22:47:35');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('41', '41', 'Voluptas itaque rerum quod ad aliquid. Reiciendis voluptas atque vel et facilis. Nihil vero quia et sequi enim. Sint nesciunt aut nostrum sunt quos. Nihil nam necessitatibus reprehenderit porro id natus et.', 1, '2000-01-27 17:40:30', '1976-07-04 14:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('42', '42', 'Voluptatibus eius nobis rerum assumenda. Ipsa nam rem nulla harum quam et repudiandae. Voluptas dignissimos animi saepe eos commodi.', 0, '1992-03-22 00:58:51', '2014-12-22 17:27:59');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('43', '43', 'Vel tempore magnam necessitatibus sit ut est. Similique necessitatibus ratione provident assumenda aut atque amet vel. Minus porro non aliquid. Consequatur nostrum vel illo voluptates accusamus labore veniam voluptas.', 0, '1987-09-22 03:41:49', '2013-09-28 15:01:20');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('44', '44', 'Autem voluptas ut aspernatur dicta totam tempora delectus. Voluptas quia dolorem omnis amet et.', 1, '2007-07-15 22:09:23', '2003-08-21 08:02:13');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('45', '45', 'Accusamus cumque ab labore omnis ut. Eaque voluptatem velit quos officia. Sint qui non qui temporibus aut ducimus. Quisquam ut rerum ipsum sint sunt qui eligendi. Itaque illum sapiente delectus aut impedit eligendi libero odit.', 0, '1983-04-06 16:53:46', '2007-05-22 06:50:08');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('46', '46', 'Necessitatibus minima id voluptatum deserunt beatae. Impedit quod voluptatem eaque porro laboriosam. Debitis laudantium et aut occaecati hic accusamus est. Illum sequi possimus nesciunt iste.', 0, '2008-09-18 02:25:40', '1978-09-17 00:54:42');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('47', '47', 'Dolor tenetur aut eos et magni a. Animi porro ut quibusdam magni.', 1, '2019-04-09 09:38:01', '1997-11-22 10:05:33');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('48', '48', 'Similique est sed rerum quaerat et exercitationem cum eum. Ipsum nemo quo repellendus et. Labore similique possimus nostrum corrupti magni modi. Nesciunt maiores eos amet deserunt illo placeat.', 1, '2015-06-27 14:36:38', '1994-08-22 22:20:04');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('49', '49', 'Suscipit ut inventore odit delectus ea. Vero assumenda labore ipsam pariatur. Est vitae neque sit ab commodi nihil maiores labore. Adipisci sint aut dolores necessitatibus natus aut rerum nisi. Dolorem sed ut voluptatem dolor illo dolore et.', 0, '1981-08-08 19:29:31', '1986-02-04 11:43:39');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('50', '50', 'Iusto suscipit facere quaerat consectetur. Et iste quia earum qui in voluptatibus voluptatem. Quia ex ducimus quae hic assumenda expedita.', 1, '2018-04-21 19:04:42', '2005-05-20 13:54:21');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('51', '51', 'Et et ut voluptas molestiae perferendis. Iste veritatis et officiis asperiores aliquam accusantium. Fugit consequuntur aperiam esse culpa aspernatur quaerat. Rem numquam adipisci reprehenderit ullam consequatur.', 0, '1991-11-29 18:16:12', '1996-04-30 18:33:57');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('52', '52', 'Aliquam excepturi facilis pariatur rem earum. Consequatur soluta eius totam ut placeat molestiae. Est sunt sunt minima quia in. Alias et qui esse praesentium nihil itaque laboriosam.', 0, '1994-05-31 23:42:37', '1987-04-02 16:53:49');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('53', '53', 'Id nulla architecto pariatur aut debitis facilis voluptatum ea. Quae consequatur voluptas dignissimos et. Ea quod sit ut.', 1, '1999-11-20 17:59:50', '1989-11-19 15:52:30');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('54', '54', 'Repudiandae ex rerum eius et aut. Consequatur iure odit ut illo sapiente. Illum culpa sit in perspiciatis maxime perferendis.', 1, '1976-10-16 02:43:42', '1990-03-30 22:24:40');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('55', '55', 'Doloribus est cum sit maiores beatae nobis et. Qui sint porro maiores voluptatem. Officia dolor voluptatem magni sint blanditiis minima.', 0, '1977-12-14 16:27:56', '1988-06-29 05:43:24');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('56', '56', 'Autem repudiandae occaecati ducimus neque. Ipsam amet ad aut enim consequatur. Veniam veritatis iure explicabo provident facere et maiores.', 1, '1997-11-23 08:24:01', '1997-04-19 13:45:13');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('57', '57', 'Ut eveniet tempora omnis quas est maiores. Tempore quia repellat libero eos numquam aperiam et id. Sapiente provident quia est exercitationem excepturi at veniam. Id aut accusantium ad voluptatem.', 0, '2011-03-07 10:37:09', '1978-03-27 16:17:44');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('58', '58', 'Itaque et sed vitae eius. Nostrum molestias nobis qui et ut eos. Reprehenderit non similique rem qui deleniti aspernatur deserunt. Dolorem dolores voluptatem alias fugit.', 0, '2005-04-10 16:54:50', '1972-11-08 03:34:37');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('59', '59', 'Odio vel provident placeat qui. Qui possimus autem recusandae dolores doloremque modi. Molestias ut suscipit qui ut reprehenderit explicabo qui. Laboriosam numquam voluptatem voluptatem nihil qui dolores numquam.', 0, '1986-04-08 22:52:12', '1971-08-13 23:31:43');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('60', '60', 'Iure ex saepe aspernatur. Doloribus deleniti qui totam totam sint. Praesentium autem nulla qui sunt consequatur aut. Molestiae deserunt nulla voluptatem facere.', 0, '2012-07-15 03:21:01', '1998-08-06 15:59:52');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('61', '61', 'Repudiandae explicabo eum et libero. Vitae vitae laudantium iste non tempora at assumenda. Aut qui ipsum facere quia veritatis. Ipsa voluptatem omnis commodi quos. Aut eius repellendus aut quis vel ratione ea.', 0, '2016-10-18 09:35:03', '1973-02-23 05:20:20');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('62', '62', 'Ut officia occaecati ratione quis ea cupiditate repudiandae voluptatem. Aut velit aliquam soluta et. Dolor deleniti unde eaque qui. Quis rerum nobis ipsa accusamus ad asperiores.', 1, '2010-02-01 16:39:56', '2003-12-17 18:36:47');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('63', '63', 'Hic dolores aut illum minus vel debitis dolor. Quos rerum minima ea et sunt et. Necessitatibus quam mollitia odit alias rerum voluptatum numquam ut.', 1, '1983-01-26 13:16:18', '1995-01-29 18:51:11');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('64', '64', 'Modi nulla dolor quia quibusdam recusandae necessitatibus. Ullam est aut sunt harum sed. Enim explicabo culpa quo qui alias corrupti veritatis.', 0, '1985-09-16 16:11:41', '1984-02-06 12:10:56');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('65', '65', 'Excepturi assumenda rem tenetur neque. Voluptatem reprehenderit ipsa vel nulla ipsa. Tempora similique asperiores exercitationem officiis.', 1, '2002-07-22 07:01:18', '1976-09-27 08:20:38');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('66', '66', 'Eum cupiditate eius natus iste. Id et quisquam iure necessitatibus. Quia dolores dolor corporis voluptas quia animi. Eum id aut officia.', 1, '1970-01-29 18:18:23', '2008-09-29 08:29:14');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('67', '67', 'Debitis molestiae nobis sed autem. Velit debitis eligendi doloremque et itaque repellat et. Quibusdam non neque ratione in fugiat. Labore temporibus quia a voluptatem illo.', 1, '1972-08-16 18:12:06', '2007-03-09 20:47:03');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('68', '68', 'Dolorem voluptates ullam ullam assumenda sit dolore id. Illo error cum perspiciatis. Rerum dolorum quibusdam amet tenetur temporibus quia expedita aut.', 1, '1987-02-11 04:17:45', '1989-01-16 02:23:03');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('69', '69', 'Et tenetur aut quis. Nobis in in hic id consequatur quae. Eos sit quisquam vero quod sunt debitis sed. Nesciunt rerum et nemo inventore cumque provident.', 0, '1979-08-24 01:17:27', '1991-05-04 22:22:38');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('70', '70', 'Molestias voluptatem repellat quia possimus voluptatum. Culpa perspiciatis accusamus consectetur neque ullam delectus tenetur. Laudantium et quia magni repudiandae.', 0, '2014-04-11 17:29:12', '1994-09-14 03:25:01');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('71', '71', 'Nihil debitis fuga totam. Veniam voluptas aliquam quia neque labore facere.', 1, '2004-01-05 18:09:46', '1998-06-19 03:11:34');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('72', '72', 'Dolores necessitatibus eveniet rerum. In quia eum sed porro. Sit quo possimus vitae accusantium est repellat non.', 0, '2000-01-05 04:09:29', '2004-03-26 23:34:26');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('73', '73', 'Id autem ducimus nihil aut quasi iusto at corporis. Ab perspiciatis enim distinctio optio tenetur enim in sit. Enim debitis et dignissimos debitis.', 0, '1990-07-20 06:31:28', '2014-11-23 19:25:15');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('74', '74', 'Vero quia iste quo consequatur deserunt laboriosam. Vero possimus tempore ad et. Sed aut id in quam nihil id aut ullam. Ut et alias modi ut qui enim.', 0, '2007-01-15 14:42:53', '2004-10-03 18:52:17');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('75', '75', 'Quae pariatur quaerat ex minus necessitatibus eaque pariatur. Commodi eius necessitatibus magni est placeat aut. Quae fuga quo omnis iusto ducimus error et. Quia hic eos omnis laudantium et sint ut.', 1, '1986-08-16 23:00:59', '2005-10-26 16:13:19');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('76', '76', 'Velit iusto occaecati consequatur omnis. Amet reprehenderit voluptatum aut commodi amet. Aut odio corrupti deleniti illum itaque ullam sed. Velit amet deleniti natus est.', 1, '1991-12-28 17:05:45', '2011-10-20 19:41:48');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('77', '77', 'Consequatur enim magni provident sit. Est amet quia qui et est. Esse eaque molestias natus dicta. Illum velit deleniti excepturi est omnis sunt.', 0, '2011-01-21 12:27:48', '1978-06-26 14:25:38');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('78', '78', 'Occaecati est recusandae asperiores a aut nam voluptas. Maxime debitis dignissimos doloremque fugiat sed. Enim qui nobis rerum qui similique mollitia incidunt magni. Iure officiis consequatur itaque recusandae ab illo reprehenderit. Qui earum fugit voluptatem error ullam.', 1, '1982-04-15 13:26:34', '1993-09-20 01:43:54');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('79', '79', 'Neque nesciunt a neque unde. Asperiores voluptas eum voluptate temporibus. Est et ut necessitatibus natus cupiditate odio dolore porro. Adipisci facere quidem doloremque aut explicabo autem officiis. Provident non laudantium laboriosam natus.', 1, '2007-04-25 04:22:22', '2008-08-02 21:37:04');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('80', '80', 'Ducimus vel sed et nemo sit. Voluptas eos quo ullam eius aperiam corrupti. Veritatis animi velit deleniti quibusdam aliquam. Non perspiciatis fuga fuga quisquam aspernatur rerum.', 0, '2006-09-16 06:41:21', '1986-04-23 16:47:03');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('81', '81', 'Expedita eos perspiciatis sint consequatur officiis culpa et. Recusandae nemo voluptatem id vel tempora maiores voluptas in. Asperiores soluta qui exercitationem. Unde similique consequuntur aperiam modi sed molestias sequi.', 0, '2001-05-19 12:55:52', '1973-03-23 21:07:48');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('82', '82', 'Sint qui et aut repellendus aperiam qui id. Ab nam laudantium omnis esse autem excepturi ipsa. Voluptatem ea nihil dolorem.', 1, '2018-12-01 05:58:06', '1973-08-14 06:49:29');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('83', '83', 'Maxime ut voluptates et assumenda. Voluptatum optio accusamus maxime fugit nostrum perferendis. Beatae veritatis ut necessitatibus animi voluptas ducimus reprehenderit. Odit reiciendis quisquam harum rem non. Aperiam consequatur odit eum in ipsam et enim.', 0, '2014-03-09 13:22:03', '1992-01-14 21:18:38');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('84', '84', 'Eos aut atque debitis magni doloremque. Aspernatur fugit sed dolores natus porro occaecati pariatur libero. Laboriosam consequatur praesentium autem soluta harum. Placeat eius sit soluta nisi deserunt. Ut quibusdam voluptatem similique mollitia.', 1, '1981-10-09 07:17:21', '1991-08-22 05:21:03');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('85', '85', 'Qui sit est voluptatibus dolor porro. Voluptas consequatur qui harum debitis nisi impedit.', 1, '1986-06-21 16:06:58', '1978-09-03 06:18:09');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('86', '86', 'Nostrum quaerat error et consequuntur enim. Et fugit qui maiores sit et. Asperiores omnis ex atque quia dolores inventore accusantium.', 1, '1971-01-15 19:00:45', '1981-04-08 06:09:59');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('87', '87', 'Qui sapiente ipsum ut tempora. Dolorum exercitationem provident reiciendis nemo quos aliquam iusto. Sed consequatur libero enim non molestiae ut. Quaerat quia illo incidunt sed in omnis tenetur. Quia nihil minima aut labore qui quidem.', 0, '1993-07-13 17:47:47', '2017-01-04 09:26:57');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('88', '88', 'Eaque earum aut optio et asperiores. Atque cumque quaerat voluptate voluptatem. Nostrum repellat mollitia aperiam id voluptatem.', 0, '2001-04-16 20:54:30', '2009-06-25 00:49:35');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('89', '89', 'Animi eius mollitia ab quibusdam. Sed quis fugit quibusdam voluptatem. Pariatur atque consectetur nihil dolor aliquid. Possimus omnis voluptatem qui minima.', 1, '1971-11-13 18:47:08', '1996-11-02 09:32:47');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('90', '90', 'Vitae quisquam assumenda illum qui. Qui modi alias officia voluptas error et quod eius. Voluptates occaecati exercitationem fugit similique. Et et quas quo voluptatem.', 0, '1999-07-04 20:18:44', '1989-04-03 14:52:23');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('91', '91', 'Et consequatur exercitationem dolore. Possimus impedit ex culpa labore. Magnam vel enim blanditiis.', 1, '2000-02-06 13:12:30', '2005-08-04 22:09:21');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('92', '92', 'Officia nostrum similique adipisci quaerat quibusdam voluptatem. Earum dicta blanditiis minus quam corrupti deleniti amet. Similique aut suscipit nihil ducimus. Ut delectus soluta in in.', 1, '1980-06-05 07:00:35', '1984-12-14 14:15:04');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('93', '93', 'Dicta nam dolores odio harum quis quibusdam. Dolores excepturi nulla reprehenderit itaque. Sint officia qui et rem impedit consectetur.', 1, '1993-12-25 00:59:35', '2003-04-27 03:16:06');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('94', '94', 'Dicta quod voluptas tenetur. Fugit saepe beatae at et consequatur veniam magni. Dolores omnis consectetur modi.', 1, '1980-07-31 05:43:08', '1991-01-28 00:12:08');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('95', '95', 'Et non non minus voluptas minus quaerat ipsam quod. Rem delectus asperiores totam soluta. Aut corrupti adipisci velit. Eum ut esse enim dolorem voluptas dignissimos. Minima ut quos vitae nisi.', 0, '1979-09-23 12:15:08', '1979-11-29 20:22:26');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('96', '96', 'Et animi quod ut voluptatem. Vero id quia eveniet sint consectetur voluptatem.', 0, '1985-07-29 17:18:32', '2006-05-05 04:03:16');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('97', '97', 'Pariatur qui accusamus libero ut molestiae illum ut. Unde in officiis praesentium aliquid velit et. Id consectetur et consectetur consequatur voluptatem.', 1, '1982-02-16 18:00:16', '1985-03-09 04:04:16');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('98', '98', 'Dolore consequuntur fugit eligendi sed reprehenderit alias. Accusantium minus est amet sint ut. Et praesentium sequi dolores blanditiis.', 0, '1984-07-04 00:58:59', '2003-06-25 06:16:53');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('99', '99', 'Rerum quos iure eveniet. Aut nemo debitis ratione. Provident eligendi voluptas voluptatem pariatur. Dolorem qui corrupti voluptatibus maxime at provident voluptate.', 0, '1991-05-23 09:06:10', '2004-10-24 15:02:12');
INSERT INTO `messages` (`id`, `from_user_id`, `body`, `is_important`, `created_at`, `updated_at`) VALUES ('100', '100', 'Repellat beatae dolores vitae assumenda accusantium. Eum molestiae ea provident facere et ad quo. Tempore voluptate ea vero provident est soluta.', 1, '1988-02-26 21:30:01', '2000-12-19 01:27:26');


#
# TABLE STRUCTURE FOR: messages_communities_relations
#

DROP TABLE IF EXISTS `messages_communities_relations`;

CREATE TABLE `messages_communities_relations` (
  `message_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на сообщение',
  `community_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`message_id`,`community_id`) COMMENT 'Составной первичный ключ',
  KEY `community_id` (`community_id`),
  CONSTRAINT `messages_communities_relations_ibfk_1` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `messages_communities_relations_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Связи сообщений и групп';

INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('1', '1', '1982-03-16 16:51:14', '2018-10-01 01:50:01');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('2', '2', '1978-01-21 19:47:13', '1978-06-24 09:36:08');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('3', '3', '2017-06-05 09:17:45', '2008-11-24 20:18:26');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('4', '4', '1975-04-11 03:57:20', '2000-05-17 14:03:08');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('5', '5', '2010-11-29 12:58:25', '1979-05-09 22:12:03');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('6', '6', '1990-05-03 06:24:43', '2018-06-16 07:00:26');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('7', '7', '1981-08-09 05:24:36', '2007-09-03 11:55:55');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('8', '8', '1976-05-20 01:06:17', '1985-03-13 10:36:24');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('9', '9', '1998-06-13 04:32:22', '2004-11-21 15:02:08');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('10', '10', '1988-08-29 05:27:20', '1994-10-17 00:32:03');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('11', '11', '2001-12-20 18:38:29', '2003-11-14 10:52:53');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('12', '12', '1977-11-19 14:52:48', '1979-10-05 04:47:35');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('13', '13', '1988-01-03 00:37:15', '1991-11-10 07:17:52');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('14', '14', '2013-07-14 00:07:42', '1978-03-29 01:32:11');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('15', '15', '2004-01-24 21:59:43', '2019-11-11 22:01:15');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('16', '16', '1977-08-18 10:55:12', '2002-08-04 04:54:51');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('17', '17', '2014-07-24 22:02:39', '1992-02-27 22:48:42');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('18', '18', '2004-12-12 05:17:49', '1973-02-16 13:24:33');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('19', '19', '1996-04-30 20:32:27', '2002-04-25 18:53:45');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('20', '20', '2007-11-12 21:19:02', '1998-03-28 18:11:30');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('21', '21', '2016-06-23 02:39:00', '2002-10-01 16:54:23');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('22', '22', '1975-12-02 11:00:01', '1978-12-10 11:48:17');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('23', '23', '2001-03-28 10:47:55', '2006-02-06 23:40:02');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('24', '24', '1999-02-02 14:28:01', '1998-12-06 06:59:41');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('25', '25', '1990-03-20 19:27:22', '1999-01-03 05:03:23');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('26', '26', '1970-12-28 15:34:48', '2019-09-02 17:55:43');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('27', '27', '2012-05-20 23:58:06', '1985-07-24 01:31:03');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('28', '28', '2019-02-27 22:55:14', '2011-04-26 07:30:10');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('29', '29', '2002-01-23 03:55:37', '2006-10-13 18:48:37');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('30', '30', '1992-11-15 07:53:53', '1975-08-01 18:38:29');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('31', '31', '2011-01-14 14:48:27', '1992-05-29 21:29:39');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('32', '32', '2004-06-23 06:39:31', '1980-05-04 20:18:44');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('33', '33', '2003-12-09 13:59:37', '1978-09-15 10:25:24');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('34', '34', '1998-10-16 19:57:09', '2003-09-26 02:21:03');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('35', '35', '1973-06-25 16:17:14', '1974-07-15 11:48:36');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('36', '36', '1989-04-21 01:32:35', '1989-06-28 04:47:43');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('37', '37', '1982-06-10 14:12:40', '2011-02-07 10:42:54');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('38', '38', '1971-10-13 11:25:13', '1979-10-08 05:58:23');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('39', '39', '2014-05-18 20:17:49', '1978-12-03 09:05:27');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('40', '40', '2000-09-27 08:43:30', '2006-08-13 11:33:34');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('41', '41', '2001-03-16 09:55:13', '2008-10-01 03:23:19');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('42', '42', '1996-04-21 21:29:12', '1985-04-04 00:04:31');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('43', '43', '1988-09-10 23:31:54', '2012-08-28 13:10:10');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('44', '44', '2005-04-17 02:00:52', '1987-11-06 22:22:18');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('45', '45', '1982-02-20 04:13:09', '1993-10-02 14:09:36');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('46', '46', '1990-02-01 22:34:32', '2010-06-29 21:15:28');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('47', '47', '2011-12-04 12:46:08', '2007-03-16 00:12:34');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('48', '48', '2002-10-11 13:09:18', '2018-05-21 13:23:20');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('49', '49', '2019-07-30 16:43:05', '2006-10-22 21:58:11');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('50', '50', '2007-12-07 08:05:21', '2013-05-01 07:01:31');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('51', '51', '1998-03-15 05:06:42', '1973-07-31 09:30:05');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('52', '52', '1975-10-29 13:46:18', '2010-06-08 03:28:04');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('53', '53', '1991-05-28 05:22:46', '2013-08-08 01:28:01');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('54', '54', '2018-04-12 08:30:02', '2002-05-02 13:05:44');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('55', '55', '1978-12-16 20:30:42', '1993-06-25 15:22:35');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('56', '56', '2014-02-18 02:10:03', '1990-11-16 00:05:20');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('57', '57', '1976-09-30 23:20:06', '1977-03-11 00:37:18');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('58', '58', '1994-10-25 14:35:30', '2017-11-06 21:32:18');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('59', '59', '1974-08-05 15:05:36', '2010-03-07 18:59:43');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('60', '60', '1979-05-09 19:46:26', '2005-02-28 21:48:22');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('61', '61', '2016-04-17 12:51:16', '1978-03-22 03:33:56');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('62', '62', '1985-03-06 18:29:41', '2002-01-04 12:08:16');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('63', '63', '1979-01-13 22:15:34', '1988-07-31 04:26:44');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('64', '64', '2003-10-18 20:15:48', '2004-08-30 00:58:12');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('65', '65', '2017-08-15 05:10:37', '1976-02-20 06:06:24');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('66', '66', '2016-04-18 03:45:45', '2009-12-08 05:17:42');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('67', '67', '1998-05-06 05:10:49', '2016-10-01 19:15:54');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('68', '68', '2008-12-24 04:13:06', '2014-11-18 20:29:35');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('69', '69', '1986-07-26 21:00:37', '2015-07-26 22:21:58');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('70', '70', '1976-07-18 05:32:51', '1978-09-05 03:31:29');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('71', '71', '1977-05-26 05:59:07', '1990-10-16 21:38:22');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('72', '72', '2000-08-17 08:34:39', '1981-03-21 07:18:44');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('73', '73', '2013-02-23 02:23:35', '1980-01-28 11:07:15');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('74', '74', '2004-01-20 18:42:14', '1992-08-14 21:11:32');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('75', '75', '1988-06-01 05:27:24', '1999-02-02 11:30:35');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('76', '76', '2016-07-21 09:56:53', '1995-07-11 09:37:20');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('77', '77', '1983-02-22 17:22:28', '2000-06-05 20:42:25');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('78', '78', '1996-02-03 14:31:45', '2013-06-01 17:03:16');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('79', '79', '1992-01-11 07:52:26', '2020-06-17 01:11:25');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('80', '80', '1993-01-30 23:02:15', '1997-06-23 17:56:40');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('81', '81', '2014-04-28 23:15:57', '1995-06-08 05:43:58');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('82', '82', '2010-04-03 15:56:32', '2001-06-17 13:29:15');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('83', '83', '2009-11-07 06:53:47', '1985-10-24 10:26:25');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('84', '84', '2007-12-20 15:54:27', '1974-05-28 13:37:17');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('85', '85', '1993-02-09 08:58:42', '1998-10-23 03:57:46');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('86', '86', '1999-11-17 11:06:41', '1974-08-17 16:52:06');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('87', '87', '1984-10-07 04:44:22', '2002-08-16 16:50:38');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('88', '88', '2009-01-15 12:29:05', '1972-09-11 15:45:32');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('89', '89', '2018-07-09 22:29:14', '1996-07-30 14:41:48');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('90', '90', '2005-01-23 21:55:00', '1981-06-17 13:18:31');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('91', '91', '1999-02-04 07:49:55', '1978-11-15 01:17:04');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('92', '92', '2018-12-07 14:30:22', '2000-10-01 05:37:00');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('93', '93', '2000-01-24 10:47:57', '2001-03-19 21:22:05');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('94', '94', '2010-06-17 18:50:05', '1992-10-16 12:52:47');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('95', '95', '2001-08-13 20:02:20', '2018-04-08 05:42:26');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('96', '96', '2015-03-31 12:23:18', '2012-06-20 05:02:43');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('97', '97', '2019-09-05 03:22:05', '2002-02-22 14:05:33');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('98', '98', '1971-07-12 18:41:47', '1995-05-22 15:26:59');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('99', '99', '1999-09-04 01:46:50', '2019-12-30 02:39:47');
INSERT INTO `messages_communities_relations` (`message_id`, `community_id`, `created_at`, `updated_at`) VALUES ('100', '100', '2008-08-02 22:18:58', '2015-06-19 04:20:03');


#
# TABLE STRUCTURE FOR: messages_users_relations
#

DROP TABLE IF EXISTS `messages_users_relations`;

CREATE TABLE `messages_users_relations` (
  `message_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на сообщение',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`message_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `user_id` (`user_id`),
  CONSTRAINT `messages_users_relations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `messages_users_relations_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Связи сообщений и пользователей';

INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('1', '1', 0, '1979-10-01 05:23:53', '1999-07-11 00:34:51');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('2', '2', 0, '2012-01-08 14:12:52', '1997-07-23 19:58:38');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('3', '3', 1, '2010-01-02 18:15:35', '1971-06-18 01:33:36');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('4', '4', 1, '2006-09-09 09:23:22', '1994-08-02 09:54:37');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('5', '5', 0, '1991-02-07 04:55:32', '1984-03-11 08:58:53');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('6', '6', 1, '2003-12-08 10:10:21', '1982-12-01 23:42:17');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('7', '7', 1, '2002-12-01 18:42:35', '1990-08-08 06:56:34');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('8', '8', 0, '1985-02-14 19:04:37', '1975-01-15 22:32:32');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('9', '9', 0, '1980-01-27 21:26:44', '2007-11-13 09:56:30');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('10', '10', 1, '1981-06-13 21:43:52', '1974-04-05 11:15:31');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('11', '11', 1, '1998-05-08 03:31:19', '2014-12-30 05:46:44');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('12', '12', 0, '1975-12-04 06:51:03', '2017-01-30 16:22:32');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('13', '13', 0, '2001-11-10 10:25:18', '1988-05-08 12:13:31');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('14', '14', 0, '1972-07-14 13:10:25', '2001-02-04 11:39:01');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('15', '15', 1, '1999-08-28 14:38:26', '1996-06-25 22:45:54');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('16', '16', 1, '2000-12-18 20:42:01', '1997-02-13 19:53:38');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('17', '17', 0, '2016-02-16 19:16:59', '1985-04-23 02:37:43');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('18', '18', 1, '1998-07-15 20:17:08', '2019-08-04 02:02:12');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('19', '19', 0, '1991-10-17 23:25:03', '2008-12-31 06:56:28');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('20', '20', 0, '2016-03-25 08:12:42', '1994-11-03 00:46:13');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('21', '21', 1, '1978-04-02 19:38:41', '1977-05-23 06:54:14');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('22', '22', 1, '1979-10-02 23:08:48', '2009-09-30 10:32:16');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('23', '23', 0, '2008-11-21 09:55:03', '1995-07-03 06:17:22');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('24', '24', 1, '1991-09-14 12:09:55', '2013-03-13 16:23:29');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('25', '25', 0, '2005-05-11 04:53:33', '1982-11-02 05:11:20');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('26', '26', 0, '2014-11-02 21:44:24', '2018-10-30 11:01:11');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('27', '27', 1, '1998-03-30 09:41:08', '1994-04-12 20:30:46');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('28', '28', 1, '1993-12-23 18:08:51', '2009-10-28 17:01:48');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('29', '29', 0, '1989-02-21 23:27:07', '1982-09-19 06:17:00');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('30', '30', 1, '1974-07-18 03:38:26', '2008-03-26 10:36:55');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('31', '31', 1, '2002-11-16 04:16:17', '1991-07-03 19:09:10');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('32', '32', 0, '1997-06-28 08:06:02', '1988-08-01 17:03:15');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('33', '33', 0, '1976-10-29 00:49:50', '2005-12-08 15:44:02');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('34', '34', 0, '1992-01-28 13:34:33', '2007-12-30 10:01:41');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('35', '35', 1, '1982-05-05 00:07:06', '1979-06-14 09:41:54');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('36', '36', 0, '1971-12-27 17:11:30', '1974-04-14 08:58:26');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('37', '37', 0, '2009-08-18 02:54:33', '1970-11-26 19:58:41');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('38', '38', 0, '2005-03-06 14:45:37', '2006-03-12 18:34:07');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('39', '39', 1, '2015-04-17 21:29:10', '1996-01-17 10:16:22');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('40', '40', 0, '2020-07-12 08:43:53', '1971-02-25 12:44:47');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('41', '41', 0, '2005-04-09 10:12:24', '1988-08-22 09:04:34');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('42', '42', 1, '2001-01-30 17:13:13', '1986-09-23 10:40:26');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('43', '43', 1, '2015-10-17 07:02:31', '1979-10-31 15:14:23');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('44', '44', 0, '1983-05-27 10:14:29', '1994-06-22 15:44:31');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('45', '45', 1, '1970-07-21 01:50:03', '1972-06-06 08:20:55');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('46', '46', 0, '1975-08-07 17:16:08', '1985-05-25 10:09:09');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('47', '47', 1, '2013-07-09 10:16:18', '2010-01-17 06:38:43');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('48', '48', 0, '1973-07-06 12:41:42', '1999-07-03 06:25:55');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('49', '49', 1, '2004-06-27 01:19:06', '2000-10-07 22:14:25');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('50', '50', 1, '1980-12-22 12:10:56', '1973-04-02 00:55:56');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('51', '51', 1, '1984-02-27 07:28:30', '1974-09-18 08:20:37');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('52', '52', 1, '2013-03-10 07:51:24', '1995-12-11 20:56:49');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('53', '53', 1, '2013-12-31 19:00:37', '1976-09-09 13:23:09');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('54', '54', 0, '1997-05-26 18:19:27', '1982-04-22 17:29:51');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('55', '55', 1, '2002-01-25 16:50:28', '1994-01-27 05:47:57');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('56', '56', 0, '2008-11-17 22:38:14', '1970-08-01 12:14:07');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('57', '57', 0, '1971-01-06 10:13:28', '1992-09-09 13:09:21');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('58', '58', 0, '1980-09-27 14:14:53', '1978-07-23 22:45:17');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('59', '59', 1, '2017-02-24 06:17:05', '2012-08-16 01:39:00');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('60', '60', 1, '1988-09-01 05:16:43', '2001-07-29 18:50:46');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('61', '61', 0, '1980-06-25 03:40:07', '2001-07-03 15:47:29');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('62', '62', 0, '1981-04-18 12:48:18', '1992-10-25 11:16:47');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('63', '63', 1, '1983-04-21 02:10:31', '1978-02-26 09:30:36');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('64', '64', 1, '2005-09-20 07:43:29', '2019-08-09 11:20:05');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('65', '65', 1, '1972-12-20 09:15:27', '1984-07-08 16:34:47');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('66', '66', 1, '1997-06-12 07:38:43', '1972-01-17 03:08:47');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('67', '67', 0, '1981-04-07 02:38:00', '1994-10-07 09:44:45');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('68', '68', 0, '1982-05-15 02:10:05', '1980-10-23 00:38:38');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('69', '69', 1, '2014-09-01 14:41:41', '1973-05-21 02:44:50');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('70', '70', 1, '1991-10-15 08:31:24', '1981-11-24 12:43:02');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('71', '71', 1, '2010-06-29 06:21:54', '1984-01-26 12:27:59');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('72', '72', 0, '1977-06-29 08:11:27', '1991-11-27 05:08:05');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('73', '73', 1, '2010-01-18 15:33:11', '2007-10-22 09:57:25');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('74', '74', 0, '1975-10-25 20:35:06', '2019-11-27 07:53:10');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('75', '75', 0, '1994-07-19 22:04:06', '2009-08-08 12:47:01');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('76', '76', 0, '1970-04-13 19:16:18', '2003-06-12 18:15:55');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('77', '77', 1, '2009-04-13 20:01:59', '2011-09-03 07:11:24');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('78', '78', 1, '2005-03-29 19:50:50', '2003-04-06 01:18:47');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('79', '79', 1, '2010-04-09 06:26:26', '1983-03-13 02:15:29');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('80', '80', 1, '1982-02-08 13:10:28', '1976-05-31 23:48:48');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('81', '81', 1, '1979-08-08 08:26:57', '1995-11-26 13:18:56');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('82', '82', 0, '1982-03-30 13:58:48', '2013-07-11 05:05:41');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('83', '83', 0, '1971-05-26 08:41:50', '1985-09-28 02:09:24');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('84', '84', 0, '2013-09-14 08:03:16', '1995-06-17 11:17:03');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('85', '85', 0, '1989-11-07 02:06:05', '2018-03-26 19:42:47');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('86', '86', 0, '2014-02-18 13:05:39', '1989-08-30 00:03:51');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('87', '87', 1, '1974-12-06 01:49:59', '1984-12-17 04:20:05');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('88', '88', 1, '2002-04-16 12:02:28', '1986-03-30 16:58:36');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('89', '89', 1, '2002-08-02 01:55:16', '2008-05-24 13:35:16');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('90', '90', 0, '2020-06-28 17:55:04', '2003-12-02 06:28:36');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('91', '91', 1, '1992-04-04 17:36:28', '2014-03-10 13:51:07');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('92', '92', 1, '2004-07-09 12:27:31', '2004-12-02 12:13:20');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('93', '93', 1, '2017-10-05 00:20:29', '2005-09-06 11:02:37');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('94', '94', 1, '1992-03-31 04:53:55', '2017-07-15 09:24:20');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('95', '95', 0, '2005-01-30 07:29:05', '1982-12-30 20:26:17');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('96', '96', 1, '1989-04-29 20:51:48', '2007-04-23 04:04:04');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('97', '97', 0, '2008-04-19 03:38:41', '2007-05-22 13:14:18');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('98', '98', 1, '1992-11-11 03:39:55', '2001-12-14 01:40:19');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('99', '99', 0, '1992-10-02 10:58:06', '2000-10-20 19:00:32');
INSERT INTO `messages_users_relations` (`message_id`, `user_id`, `is_delivered`, `created_at`, `updated_at`) VALUES ('100', '100', 1, '2000-08-18 13:23:49', '1979-12-03 08:04:30');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;
 
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` enum('f','m') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Ссылка на город проживания',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  KEY `user_id` (`user_id`),
  KEY `photo_id` (`photo_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `profiles_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('1', 'f', '2020-07-12', '1', 'Debitis omnis nisi minus reici', '1', '1991-10-21 01:28:46', '1994-10-18 13:25:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('2', 'm', '1972-04-04', '2', 'Dolorum non in neque magni cum', '2', '1984-04-06 15:33:10', '2014-04-27 11:53:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('3', 'm', '2007-07-08', '3', 'Dolorum aut reprehenderit cons', '3', '2010-05-27 20:08:57', '2015-07-06 07:19:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('4', 'f', '1974-11-06', '4', 'Iste hic qui distinctio. Eaque', '4', '1980-08-28 01:56:54', '1996-10-25 22:16:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('5', 'm', '1989-11-25', '5', 'Velit ipsum et ut omnis a. Sae', '5', '2004-10-04 11:27:35', '2001-05-04 19:30:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('6', 'm', '1978-09-18', '6', 'Omnis nobis sapiente in sed ve', '6', '1982-08-17 05:58:03', '1995-01-23 08:10:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('7', 'm', '1994-07-25', '7', 'Dolores quam possimus voluptat', '7', '2018-07-12 14:07:53', '1973-08-04 17:51:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('8', 'm', '1974-04-22', '8', 'Reprehenderit rerum cumque est', '8', '1995-09-30 02:05:02', '2008-09-01 06:26:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('9', 'm', '1990-06-28', '9', 'Nesciunt sit accusantium sunt ', '9', '1991-07-16 15:05:45', '1970-12-29 19:01:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('10', 'm', '2007-10-28', '10', 'Temporibus repellat autem quia', '10', '2001-05-29 02:58:01', '1978-04-07 07:36:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('11', 'f', '1973-10-22', '11', 'Aut adipisci voluptas atque ne', '11', '1974-11-05 21:00:08', '1973-05-18 02:49:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('12', 'm', '2000-10-31', '12', 'Qui cum magni eveniet voluptat', '12', '2014-05-21 06:42:28', '2000-03-13 09:22:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('13', 'f', '1997-04-02', '13', 'Exercitationem tempore nemo na', '13', '1975-08-12 01:31:47', '1970-12-08 01:09:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('14', 'm', '1981-11-19', '14', 'Vel qui sed omnis sequi nesciu', '14', '2007-03-26 19:15:37', '2010-08-09 17:58:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('15', 'f', '1996-02-11', '15', 'Harum nisi ut optio ut. Omnis ', '15', '1978-03-29 09:49:54', '1993-04-20 16:48:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('16', 'm', '1979-11-14', '16', 'Consequatur consequuntur dolor', '16', '1994-08-02 22:15:03', '1995-11-25 14:38:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('17', 'm', '1988-10-05', '17', 'Blanditiis illo deserunt elige', '17', '2006-06-22 16:43:45', '1985-05-02 01:48:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('18', 'm', '2007-09-20', '18', 'Maxime provident cupiditate de', '18', '1982-03-22 08:01:30', '2005-11-28 13:05:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('19', 'f', '1998-01-08', '19', 'Ut sit odio sint doloribus. Of', '19', '1994-12-10 22:26:26', '1999-04-03 19:19:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('20', 'm', '1991-06-15', '20', 'Fuga sint debitis ut natus. Su', '20', '1999-12-29 02:26:52', '1999-05-22 17:51:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('21', 'f', '2017-11-13', '21', 'A explicabo pariatur officiis ', '21', '1992-12-03 09:39:46', '2013-03-24 07:50:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('22', 'f', '2009-05-06', '22', 'Praesentium qui dolorum quibus', '22', '2010-06-16 20:32:06', '2004-12-29 03:21:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('23', 'f', '1999-09-01', '23', 'Numquam explicabo sed voluptat', '23', '2010-07-04 18:45:47', '2017-07-18 23:19:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('24', 'f', '2019-10-07', '24', 'Placeat necessitatibus sed eaq', '24', '1975-11-07 06:24:49', '1971-09-24 09:03:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('25', 'm', '1987-05-10', '25', 'Nostrum ratione maxime minima ', '25', '2020-07-20 10:12:20', '1979-08-30 08:48:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('26', 'm', '1973-08-05', '26', 'Debitis non unde quo eius illu', '26', '1988-11-08 22:29:42', '2009-10-01 02:49:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('27', 'm', '1976-06-01', '27', 'Ut ex voluptatum harum reicien', '27', '1977-02-20 23:30:23', '1976-01-21 20:42:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('28', 'f', '2020-03-23', '28', 'Dolore et consequatur enim ver', '28', '1983-07-18 10:19:50', '2006-09-21 09:41:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('29', 'm', '2010-02-13', '29', 'Adipisci repudiandae eum ea qu', '29', '1975-11-17 14:51:02', '2015-11-10 10:25:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('30', 'm', '1989-03-09', '30', 'Iste quod eaque ex harum nostr', '30', '1977-11-08 09:17:44', '2003-08-23 12:09:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('31', 'm', '2000-10-28', '31', 'Occaecati est illo et corporis', '31', '1970-09-21 07:48:26', '1990-10-13 02:48:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('32', 'f', '1972-07-12', '32', 'Laboriosam quae dolores recusa', '32', '2019-09-05 03:58:07', '2009-08-26 04:26:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('33', 'm', '1977-06-07', '33', 'Laudantium quisquam fuga et od', '33', '1996-05-15 12:54:30', '1986-09-06 04:36:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('34', 'f', '2015-04-12', '34', 'Est omnis excepturi cum hic. S', '34', '1986-04-15 10:55:49', '1974-09-18 23:36:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('35', 'm', '1971-05-22', '35', 'Accusamus totam rerum laborios', '35', '2017-09-13 02:34:31', '1971-02-11 04:36:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('36', 'f', '2010-01-08', '36', 'Voluptatum vel voluptas mollit', '36', '2014-02-02 13:04:02', '1971-01-22 16:15:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('37', 'f', '1971-11-23', '37', 'Fugiat sit velit vitae autem d', '37', '1995-11-07 04:47:47', '2015-08-04 20:56:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('38', 'f', '2004-10-27', '38', 'Qui beatae officiis sed. Lauda', '38', '2020-07-09 20:17:53', '1976-04-21 07:16:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('39', 'f', '1975-04-25', '39', 'Aut at eaque est neque. Dolori', '39', '1974-09-01 19:20:02', '1989-01-29 00:35:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('40', 'f', '1986-12-23', '40', 'Sed qui dolor aliquam optio la', '40', '1974-02-09 07:27:34', '1972-07-26 03:14:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('41', 'm', '1970-08-14', '41', 'Quaerat aut et modi consequunt', '41', '1981-01-22 04:44:32', '2007-01-07 06:49:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('42', 'm', '1986-05-15', '42', 'Veritatis sed est consequuntur', '42', '2013-01-17 23:18:52', '1978-05-12 05:32:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('43', 'm', '2002-06-17', '43', 'Veniam dolor dolorum et harum ', '43', '2000-04-23 21:34:18', '1978-01-14 20:42:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('44', 'm', '1980-06-20', '44', 'Sit cumque ex omnis nostrum sa', '44', '1977-12-14 20:07:45', '1979-07-13 11:10:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('45', 'm', '1990-06-13', '45', 'Amet rem et ut amet ullam ut e', '45', '2010-08-20 06:33:44', '1998-10-24 13:44:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('46', 'f', '2011-09-06', '46', 'Velit voluptatem omnis rem opt', '46', '1983-04-19 11:54:57', '1978-04-05 08:26:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('47', 'm', '1973-01-27', '47', 'Est ut non nulla sequi molesti', '47', '2012-05-09 17:53:01', '1984-04-30 07:43:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('48', 'm', '1989-01-03', '48', 'Cupiditate atque voluptate qua', '48', '2010-07-30 03:50:24', '1982-09-03 04:12:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('49', 'f', '2018-06-24', '49', 'Molestiae fuga commodi sed. De', '49', '1998-03-17 22:37:32', '2000-06-19 21:46:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('50', 'm', '1974-08-09', '50', 'Ut laudantium quo eos qui. Rer', '50', '2013-09-19 17:55:59', '2002-02-24 16:36:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('51', 'f', '1971-06-19', '51', 'Fugiat quas inventore voluptat', '51', '2001-06-15 00:56:44', '2003-09-24 02:18:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('52', 'f', '1991-08-28', '52', 'Corporis earum cum id velit cu', '52', '1997-12-16 01:51:53', '1987-04-07 04:06:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('53', 'm', '1987-12-10', '53', 'Molestiae vel nihil aut ipsum ', '53', '1973-09-05 12:52:16', '2014-11-10 01:11:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('54', 'm', '1997-06-25', '54', 'Optio praesentium rerum nobis ', '54', '1984-07-15 08:41:57', '2002-02-15 00:22:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('55', 'm', '1976-11-25', '55', 'Ut repellendus omnis fugiat al', '55', '1993-06-04 01:54:38', '2012-03-15 21:26:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('56', 'm', '2011-11-23', '56', 'Beatae dolorem voluptas quisqu', '56', '2019-02-01 16:29:10', '2010-04-27 22:39:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('57', 'm', '2003-09-16', '57', 'Beatae qui harum odit voluptat', '57', '2018-02-27 07:20:14', '1980-10-27 18:40:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('58', 'f', '1993-01-07', '58', 'Distinctio et cupiditate dolor', '58', '1995-03-17 09:57:23', '2016-10-06 17:51:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('59', 'm', '1995-07-17', '59', 'Maiores perferendis neque eum ', '59', '2014-10-23 09:47:41', '2019-10-27 06:23:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('60', 'f', '1980-06-13', '60', 'Aut nesciunt in odio eaque ips', '60', '1992-09-29 10:21:25', '2011-06-16 08:32:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('61', 'f', '1977-09-21', '61', 'Omnis sunt officia cumque corp', '61', '2015-12-29 05:43:26', '1970-06-02 03:51:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('62', 'm', '2003-12-09', '62', 'Est perspiciatis quis inventor', '62', '1998-09-29 03:58:47', '1983-10-06 14:09:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('63', 'm', '1995-04-30', '63', 'Dolore atque harum perferendis', '63', '1978-02-09 08:55:58', '1994-09-03 05:58:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('64', 'f', '1996-02-27', '64', 'Autem tenetur sed accusamus er', '64', '1996-07-01 19:08:07', '2020-02-27 12:05:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('65', 'm', '2004-12-18', '65', 'Commodi dolor non vitae ut exp', '65', '1983-10-13 17:54:48', '2000-07-14 13:46:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('66', 'f', '2013-06-03', '66', 'Vero ipsam sed incidunt recusa', '66', '1974-05-10 11:36:04', '1989-08-29 10:50:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('67', 'm', '2008-03-06', '67', 'Doloribus ipsa aspernatur at u', '67', '2015-12-20 00:26:00', '1997-03-08 16:24:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('68', 'm', '1985-06-15', '68', 'Doloremque quod ab laudantium ', '68', '2003-04-22 14:43:16', '1997-11-14 00:47:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('69', 'f', '1987-07-07', '69', 'Ratione distinctio reprehender', '69', '2012-11-16 13:13:03', '2001-09-26 10:39:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('70', 'f', '1995-06-20', '70', 'Nihil est autem hic libero. Ut', '70', '1993-12-05 12:52:20', '1977-08-28 18:44:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('71', 'f', '1979-03-02', '71', 'Fuga quos et sunt saepe qui vi', '71', '2004-06-05 07:53:19', '2007-02-15 14:03:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('72', 'f', '1979-05-07', '72', 'Omnis voluptatem temporibus iu', '72', '1986-03-31 15:37:21', '2020-03-13 23:12:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('73', 'f', '1981-05-10', '73', 'Dolorem voluptatum itaque quam', '73', '1975-04-01 15:01:28', '2011-08-27 05:01:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('74', 'f', '1992-11-06', '74', 'Sit ab deserunt asperiores vel', '74', '2012-03-31 13:43:45', '1986-12-18 13:56:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('75', 'f', '1992-04-25', '75', 'Deleniti molestiae ut aut sed ', '75', '1999-12-11 23:30:19', '2018-12-02 18:49:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('76', 'f', '2007-03-26', '76', 'Quos nemo est et et sed animi ', '76', '1970-01-15 13:44:13', '2015-05-08 16:25:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('77', 'm', '1988-06-14', '77', 'Est hic et in. Quaerat minima ', '77', '2015-05-13 06:46:52', '1989-01-25 00:57:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('78', 'm', '2011-01-13', '78', 'Non veniam modi ut corporis co', '78', '2003-02-19 05:00:51', '1988-10-08 14:44:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('79', 'm', '1973-05-12', '79', 'Repellat recusandae hic quibus', '79', '1981-04-05 20:20:40', '1986-11-15 21:05:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('80', 'f', '2002-04-17', '80', 'Et molestias est eaque sed mag', '80', '2019-10-25 06:57:44', '1987-02-11 09:52:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('81', 'f', '2011-10-23', '81', 'Magnam quo illo harum commodi ', '81', '1992-02-01 09:42:34', '1997-06-23 05:45:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('82', 'f', '1974-05-14', '82', 'Consequatur officia nemo in et', '82', '2002-03-28 11:20:01', '1987-12-21 05:13:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('83', 'm', '1973-12-25', '83', 'Totam ratione voluptatem et pl', '83', '1970-12-05 18:02:16', '2000-12-27 17:02:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('84', 'f', '1980-10-01', '84', 'Placeat deserunt praesentium a', '84', '1982-05-23 12:34:42', '1970-07-12 23:00:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('85', 'm', '1994-05-19', '85', 'Aspernatur rem officia delectu', '85', '1987-09-02 09:44:04', '2004-11-27 19:31:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('86', 'm', '2017-06-01', '86', 'Deserunt dolore magnam eius nu', '86', '2000-07-02 20:07:52', '1983-09-27 13:19:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('87', 'm', '1975-04-10', '87', 'Ratione reiciendis labore odit', '87', '1980-08-25 21:34:24', '1989-11-22 02:18:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('88', 'f', '1973-05-03', '88', 'Et doloremque voluptatem ea ne', '88', '2006-06-28 15:59:56', '2016-09-02 12:16:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('89', 'm', '1984-07-31', '89', 'Nisi magni non ut ea. Quia ips', '89', '1995-10-30 11:04:46', '2014-05-05 17:25:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('90', 'm', '1984-04-12', '90', 'Ea quam mollitia totam saepe a', '90', '2006-03-21 15:54:53', '1995-02-23 19:41:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('91', 'm', '2001-03-23', '91', 'Et et ipsum et omnis sit digni', '91', '1997-05-29 06:00:21', '2012-02-19 09:57:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('92', 'm', '1980-03-08', '92', 'In dolores facilis nisi conseq', '92', '2012-12-29 07:28:24', '1981-06-09 14:49:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('93', 'm', '2014-03-22', '93', 'Porro praesentium vitae et vol', '93', '2017-03-19 17:55:28', '2012-07-30 00:29:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('94', 'f', '1980-04-22', '94', 'Similique ad a perspiciatis. A', '94', '1981-02-14 18:25:03', '2005-12-25 20:55:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('95', 'm', '1986-10-03', '95', 'Cumque omnis tempore amet volu', '95', '1989-12-25 13:05:14', '1987-06-25 11:45:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('96', 'm', '1991-11-27', '96', 'Accusantium iure omnis a quia ', '96', '1986-01-19 13:11:45', '1992-04-24 11:29:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('97', 'f', '2003-04-06', '97', 'Hic non dolores et suscipit te', '97', '2008-12-01 23:01:54', '1986-05-08 10:54:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('98', 'f', '1992-08-14', '98', 'Ab aperiam cupiditate sunt ame', '98', '1976-11-24 00:42:09', '1981-04-03 06:34:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('99', 'm', '2019-04-26', '99', 'Rerum vero dolorum sit volupta', '99', '1972-09-23 06:26:30', '2010-02-05 12:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city_id`, `created_at`, `updated_at`) VALUES ('100', 'm', '1987-01-11', '100', 'Neque et ipsum sunt dolorem su', '100', '1997-11-15 01:09:29', '1985-11-14 05:54:47');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('1', 'Jammie', 'Borer', 'mdaniel@example.org', '02779888100', '2017-03-18 07:18:32', '1974-08-28 11:42:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('2', 'Mitchel', 'Senger', 'lyric.schamberger@example.net', '999-753-3283', '1975-12-12 08:48:40', '1992-08-22 23:06:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('3', 'Salvatore', 'Ferry', 'felix37@example.org', '(546)967-0128x87909', '2001-12-23 20:00:52', '2015-07-19 07:34:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('4', 'Adrienne', 'Hamill', 'denesik.bailee@example.com', '054-083-7487', '2000-01-06 14:26:47', '2002-11-22 16:11:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('5', 'Emily', 'Koch', 'vesta33@example.org', '321-922-5155x90927', '2000-11-13 21:28:40', '1970-04-21 16:23:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('6', 'Syble', 'Koepp', 'carissa95@example.org', '09534576683', '1972-10-02 16:31:45', '2008-05-02 04:09:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('7', 'Winnifred', 'Gottlieb', 'josiah.mohr@example.org', '(677)407-8548', '1999-03-31 22:53:06', '2011-02-10 10:13:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('8', 'Bernard', 'Muller', 'ubeatty@example.com', '(329)218-3928x711', '1992-06-16 18:20:49', '2018-07-26 16:29:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('9', 'Chyna', 'Wunsch', 'dora26@example.org', '(916)430-4545x491', '1983-08-07 22:33:29', '1977-08-08 00:59:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('10', 'Libby', 'Pagac', 'hahn.zack@example.net', '439-494-9174x314', '1975-09-05 13:02:22', '1978-02-28 00:09:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('11', 'Oceane', 'Wiza', 'marianne70@example.org', '(534)827-5552', '2017-06-30 21:22:57', '1986-01-26 20:16:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('12', 'Maye', 'Dietrich', 'ksporer@example.org', '893-778-5214x0482', '1994-03-09 08:20:20', '2011-01-06 16:46:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('13', 'Michelle', 'Osinski', 'destiny.emard@example.com', '(815)476-8424', '1978-05-24 06:42:30', '2018-02-03 09:03:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('14', 'Edward', 'McDermott', 'darron43@example.net', '106.977.3652x265', '2008-10-17 07:26:47', '1999-10-03 08:11:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('15', 'Andres', 'Buckridge', 'eloy02@example.net', '073.310.2985x383', '1982-06-09 10:18:13', '2006-01-05 05:27:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('16', 'Rusty', 'Block', 'jluettgen@example.com', '1-154-413-9112', '2011-08-05 16:56:16', '2009-12-22 22:44:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('17', 'Samanta', 'Cronin', 'reyna.fadel@example.net', '+94(1)0044374904', '2006-07-03 00:05:58', '1993-03-09 15:13:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('18', 'Harvey', 'Lubowitz', 'eliezer.kirlin@example.net', '(115)208-7736', '1977-09-13 18:54:21', '2015-06-21 04:03:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('19', 'Valentin', 'Runte', 'okunde@example.com', '+36(9)7223856968', '1975-12-21 07:08:06', '2009-07-25 18:27:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('20', 'Casper', 'Kirlin', 'rickey90@example.com', '607-341-6497x300', '2007-11-28 10:03:26', '2014-06-22 03:59:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('21', 'Jasper', 'Gerlach', 'vprice@example.com', '(683)460-1515x16438', '1977-04-18 16:41:03', '1999-08-25 18:58:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('22', 'Herminia', 'Lindgren', 'uroberts@example.com', '(048)237-4696x382', '2008-04-15 17:22:47', '2008-05-15 18:28:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('23', 'Tyson', 'Hettinger', 'zhahn@example.net', '514-751-5112x843', '1982-02-07 11:16:51', '1972-09-02 20:03:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('24', 'Elenor', 'Braun', 'stiedemann.lessie@example.com', '1-079-556-0615', '1978-02-13 00:31:45', '1976-05-17 14:21:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('25', 'Frederik', 'Jacobi', 'hickle.alvina@example.org', '006.393.8314', '1993-09-18 16:39:51', '1989-07-18 01:56:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('26', 'Molly', 'Hintz', 'sally.tromp@example.org', '280.052.6028x8145', '2014-12-05 00:18:49', '2000-09-28 19:11:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('27', 'Pablo', 'Crona', 'bonita45@example.com', '(478)576-4100x473', '2006-10-03 16:01:49', '1972-01-30 19:44:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('28', 'Elliott', 'Lowe', 'bins.wilburn@example.com', '519-322-6964x6417', '2004-12-31 04:59:05', '1985-12-13 01:22:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('29', 'Adonis', 'Cormier', 'darion75@example.org', '286-473-3770x211', '1978-10-09 13:04:47', '2000-02-27 08:48:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('30', 'Joyce', 'Daugherty', 'reymundo81@example.com', '(746)939-1334', '1989-04-30 03:24:34', '1972-03-16 19:49:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('31', 'Gunner', 'Upton', 'vemmerich@example.com', '469.637.3411', '2001-02-07 23:10:37', '1981-07-04 17:59:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('32', 'Dawn', 'Fay', 'weimann.kari@example.com', '290-220-9827x402', '2012-05-31 00:19:24', '1995-12-26 19:50:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('33', 'Alda', 'Bogan', 'mbogan@example.org', '655.331.7837x69434', '1991-03-30 19:17:53', '1997-04-30 20:09:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('34', 'Melisa', 'Baumbach', 'fzboncak@example.net', '578-492-2499', '1990-07-23 08:31:02', '1974-05-31 12:53:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('35', 'Jaeden', 'Corwin', 'timothy40@example.com', '(935)016-9836x7939', '1990-11-08 00:15:32', '1985-04-12 13:01:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('36', 'Barton', 'Toy', 'uwest@example.org', '031-502-2941x237', '1988-10-13 06:30:35', '2019-06-11 19:01:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('37', 'Georgianna', 'Collins', 'anjali.barrows@example.net', '132.034.9947x85680', '1980-01-04 20:14:39', '2001-06-02 17:21:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('38', 'Logan', 'Brown', 'hans16@example.org', '(298)264-5203', '2003-11-23 00:55:58', '1989-09-26 02:31:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('39', 'Cletus', 'Rohan', 'thaag@example.com', '807-698-1336', '1971-05-25 09:02:28', '2016-10-03 12:44:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('40', 'Erwin', 'Goodwin', 'amir91@example.org', '853-857-0799x144', '2014-10-04 21:06:40', '1982-04-05 08:25:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('41', 'Kaci', 'Homenick', 'wilburn93@example.org', '785-184-5251', '2002-03-04 23:39:02', '1974-08-03 10:01:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('42', 'Vern', 'Schoen', 'crona.vergie@example.net', '1-672-961-6959x87665', '1999-10-18 15:25:24', '1971-12-01 18:08:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('43', 'Desiree', 'Raynor', 'torrance.mertz@example.net', '393-830-9277x311', '1994-11-16 11:28:28', '2005-01-17 09:09:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('44', 'Keyshawn', 'Krajcik', 'kirstin.konopelski@example.org', '+30(1)8581212459', '2001-07-07 10:48:53', '1972-03-18 11:11:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('45', 'Evie', 'Emard', 'pwehner@example.com', '1-157-900-6317x848', '2009-11-13 06:46:10', '1979-08-20 22:04:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('46', 'Oren', 'Armstrong', 'lane42@example.org', '125.477.4314x1220', '1989-03-28 20:51:25', '2017-07-18 23:22:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('47', 'Hugh', 'Schmidt', 'hand.naomie@example.net', '176.059.6372', '2004-11-08 13:20:06', '2008-07-23 04:45:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('48', 'Chaim', 'Simonis', 'keira.fadel@example.net', '1-671-504-7508', '2004-09-30 08:41:14', '2008-06-27 13:16:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('49', 'Lucie', 'Klocko', 'jayce.fahey@example.org', '+22(8)3792424331', '1999-10-21 10:43:25', '1999-06-17 23:58:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('50', 'Johnny', 'Mann', 'irath@example.net', '158-428-5553', '2005-10-16 08:57:44', '2005-06-01 04:55:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('51', 'Miracle', 'Gerhold', 'murphy.emile@example.com', '(875)404-2033x3682', '1987-10-26 07:31:16', '1989-09-06 05:37:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('52', 'Rashad', 'Mayer', 'kenyon.gleichner@example.net', '877.438.0097x16978', '1971-11-24 18:42:25', '1974-05-11 13:19:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('53', 'Milton', 'Steuber', 'aleuschke@example.com', '05093846371', '1987-08-18 20:50:03', '1978-08-19 21:23:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('54', 'Rolando', 'Jerde', 'judy.leffler@example.com', '+82(8)9624775140', '2014-05-30 08:23:06', '2004-08-18 14:12:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('55', 'Mauricio', 'Rempel', 'nbrekke@example.net', '361-761-8769x684', '2003-11-24 12:34:36', '2002-03-05 14:14:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('56', 'Adolphus', 'Koss', 'mayer.brooklyn@example.com', '457-364-8100', '2007-09-29 10:46:15', '1976-12-14 17:35:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('57', 'Stephanie', 'Witting', 'anibal78@example.org', '1-280-335-4387x617', '1992-05-31 09:47:42', '1987-02-14 05:42:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('58', 'Joan', 'Balistreri', 'leland51@example.net', '04573171409', '1988-01-27 10:06:25', '2003-03-12 23:42:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('59', 'Antonio', 'Jacobi', 'vturcotte@example.org', '1-689-362-2833', '2019-07-12 02:00:12', '2009-08-09 17:36:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('60', 'Damion', 'Dietrich', 'jraynor@example.com', '1-924-981-8071x4276', '1982-12-13 15:16:38', '2017-01-20 06:28:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('61', 'Cornelius', 'Eichmann', 'ova.abbott@example.net', '487.061.1437', '2004-11-18 08:46:53', '1974-05-01 06:38:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('62', 'Gussie', 'McKenzie', 'dawn15@example.com', '1-594-922-9213x6784', '1979-09-24 12:28:53', '1977-12-25 14:28:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('63', 'Callie', 'Herman', 'bledner@example.com', '1-267-137-3729', '2017-02-24 06:20:46', '2017-11-08 15:54:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('64', 'Makenzie', 'Stokes', 'earl69@example.org', '(783)847-4840', '1994-04-10 03:47:55', '2020-08-02 01:14:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('65', 'Betsy', 'Lesch', 'koch.wilbert@example.org', '+52(0)3957346960', '2014-09-17 19:15:54', '2008-12-01 00:19:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('66', 'Jade', 'Bechtelar', 'ryder22@example.org', '763-374-5164', '1979-08-19 00:57:58', '1994-11-23 06:15:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('67', 'Jermey', 'Volkman', 'kutch.leora@example.net', '02062026581', '2020-04-17 14:20:52', '1996-02-09 16:21:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('68', 'Sylvester', 'Douglas', 'giovanny41@example.net', '1-564-337-2352x60426', '1982-05-25 06:16:41', '1988-06-25 03:24:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('69', 'Ronaldo', 'Barton', 'norris06@example.com', '559.203.6269', '2008-05-08 10:47:28', '2009-01-11 23:30:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('70', 'Remington', 'Cartwright', 'botsford.leslie@example.net', '05677863377', '1971-10-28 09:46:33', '1990-09-26 21:28:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('71', 'Magnus', 'Bradtke', 'kim.rice@example.org', '365.960.1258x4009', '1975-08-02 17:21:03', '1996-10-10 10:35:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('72', 'Lavada', 'Gaylord', 'justyn.bahringer@example.com', '1-894-143-2909', '1977-07-20 03:38:46', '2012-06-04 03:00:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('73', 'Marilou', 'McDermott', 'hahn.garfield@example.org', '(532)664-7966x598', '2014-10-11 23:37:26', '2005-09-28 10:08:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('74', 'Rickey', 'Hoppe', 'tess64@example.org', '(242)423-1568x989', '2008-01-26 16:43:17', '2004-05-07 10:30:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('75', 'Anya', 'Reinger', 'sandrine14@example.net', '119.330.3688x261', '1980-06-08 18:09:29', '1987-07-07 22:25:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('76', 'Jermey', 'Corwin', 'legros.jarrett@example.org', '(019)376-1348x6415', '1995-06-07 05:29:42', '1991-01-07 05:31:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('77', 'Ardith', 'Bogisich', 'ggrady@example.net', '319-472-3070', '2013-03-25 12:37:56', '1970-06-07 22:21:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('78', 'Xavier', 'Schroeder', 'kuphal.jarred@example.com', '+39(8)7619024288', '2012-09-02 01:39:21', '1990-02-08 05:46:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('79', 'Darrell', 'Kris', 'breilly@example.org', '1-809-158-6511', '2012-09-05 11:07:35', '1994-09-13 18:06:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('80', 'Winnifred', 'Rath', 'marvin.jay@example.org', '228-683-2258', '1984-12-04 05:52:48', '1995-07-10 22:55:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('81', 'Trace', 'Larkin', 'ferry.zoe@example.com', '+52(4)2119743981', '1976-09-12 13:36:32', '1980-09-16 12:50:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('82', 'Elouise', 'Lynch', 'margaretta.hackett@example.net', '427.494.7392x5812', '1982-09-13 17:39:51', '2007-10-03 21:03:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('83', 'Rhiannon', 'Becker', 'ullrich.maxie@example.com', '896.515.8416x04399', '2015-04-11 03:18:30', '1991-05-05 07:28:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('84', 'Norris', 'Wehner', 'dariana.reynolds@example.com', '07668783847', '1977-07-22 16:57:19', '2013-02-02 02:33:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('85', 'Gunnar', 'Grimes', 'dbashirian@example.org', '072-774-8161x2029', '2002-10-19 00:56:17', '1976-12-03 09:25:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('86', 'Rosario', 'Raynor', 'dare.serenity@example.org', '03815340119', '1974-11-25 00:09:11', '1981-08-02 16:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('87', 'Alphonso', 'Leannon', 'dedrick68@example.org', '999-199-1607', '1980-08-04 04:04:22', '1985-12-30 12:48:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('88', 'Marcella', 'Block', 'dora.parker@example.net', '00989940910', '1983-02-12 15:29:41', '1999-06-21 11:11:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('89', 'Dawn', 'Lebsack', 'xgreenholt@example.net', '1-208-526-6745', '2013-01-26 15:51:07', '1994-10-13 02:54:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('90', 'Thurman', 'Heidenreich', 'virginie12@example.org', '498.497.4982', '2020-06-26 22:26:20', '2008-08-09 03:31:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('91', 'Lenna', 'Moore', 'davonte.bartoletti@example.net', '(378)671-1307x7591', '1970-06-06 20:20:11', '2014-07-21 21:03:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('92', 'Raphaelle', 'Hansen', 'murazik.otilia@example.com', '+45(7)9481903555', '1975-07-22 20:35:51', '1970-07-07 04:31:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('93', 'Mike', 'Leannon', 'nnader@example.org', '410-102-2514', '2004-12-19 19:54:13', '1973-08-07 06:13:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('94', 'Vernie', 'Hahn', 'sjast@example.com', '098-253-0548x6385', '2008-09-09 03:30:50', '1978-07-06 12:23:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('95', 'Stone', 'Cassin', 'jkunze@example.net', '(213)027-9675', '1999-08-25 04:02:19', '1971-09-09 23:55:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('96', 'Adelbert', 'Senger', 'tad49@example.org', '310-241-0682', '2011-01-12 22:49:30', '1987-10-07 23:31:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('97', 'Dennis', 'Reinger', 'lenora76@example.org', '1-278-213-7775x119', '2011-04-23 03:55:12', '2011-09-30 22:30:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('98', 'Unique', 'Ryan', 'jones.dorris@example.net', '533.551.5310', '2015-07-24 13:42:37', '1975-06-07 08:40:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('99', 'Linnea', 'Rippin', 'fhettinger@example.com', '390-935-7548', '1996-02-21 02:04:01', '1995-07-04 05:06:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES ('100', 'Adell', 'Stehr', 'willow.braun@example.com', '190.419.9380x3298', '1982-07-24 13:40:11', '2014-03-31 02:26:49');


