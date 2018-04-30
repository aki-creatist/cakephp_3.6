CREATE TABLE `project`.`meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `meeting_room_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '' NOT NULL,
  `gidai` varchar(1024) DEFAULT '',
  `status` int(11) DEFAULT '1' NOT NULL,
  PRIMARY KEY (`id`)
);