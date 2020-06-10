use discord;

DROP TABLE IF EXISTS `message_key_value`;

CREATE TABLE `message_key_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `user` varchar(50) NOT NULL,
  `server` varchar(50) NOT NULL,
  `channel` varchar(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `tweet`;

CREATE TABLE `tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_id` BIGINT(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `tweet` varchar(300) NOT NULL,
  `tweet_url` varchar(100) NOT NULL,
  `tweet_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `discord_user`;

CREATE TABLE `discord_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `server_id` BIGINT(20) NOT NULL,
  `server` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `rukute`;

CREATE TABLE `rukute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discord_user_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 3,
  `attack_count` int(11) NOT NULL DEFAULT 1,
  `raid_attack_count` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `rukute_box`;

CREATE TABLE `rukute_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discord_user_id` int(11) NOT NULL,
  `rukute_one` int(11) DEFAULT 0,
  `rukute_two` int(11) DEFAULT 0,
  `rukute_three` int(11) DEFAULT 0,
  `rukute_four` int(11) DEFAULT 0,
  `rukute_five` int(11) DEFAULT 0,
  `rukute_six` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `rukute_raid_battle`;

CREATE TABLE `rukute_raid_battle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hp` BIGINT(20) NOT NULL,
  `uid` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
