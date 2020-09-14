CREATE TABLE `show` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pub_id` bigint DEFAULT NULL,
  `band_id` bigint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_at` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_show_schedule_pub_id` (`pub_id`),
  KEY `fk_show_schedule_band_id` (`band_id`),
  CONSTRAINT `fk_show_schedule_band_id` FOREIGN KEY (`band_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_show_schedule_pub_id` FOREIGN KEY (`pub_id`) REFERENCES `pub` (`id`)
)
/* ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci */