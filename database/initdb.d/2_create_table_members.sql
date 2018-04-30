-- CREATE TABLE IF NOT EXISTS `project`.`members` (
-- 	id		MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
-- 	name	VARCHAR(20) NOT NULL,
-- 	PRIMARY KEY( id )
-- );

CREATE TABLE `project`.`members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' NOT NULL,
  `email` varchar(255) DEFAULT '' NOT NULL,
  `delete_flg` tinyint(1) DEFAULT '0' NOT NULL,
  `created_at` datetime  NOT NULL,
  `updated_at` datetime  NOT NULL,
  PRIMARY KEY (`id`)
);