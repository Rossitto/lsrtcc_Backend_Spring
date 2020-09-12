CREATE TABLE IF NOT EXISTS calendar (
    id bigint NOT NULL AUTO_INCREMENT,
    pub_id bigint,
    band_id bigint,
    event_datetime DATETIME NOT NULL,
    primary key (id)
);
ALTER TABLE calendar
ADD CONSTRAINT fk_calendar_pub_id FOREIGN KEY (pub_id) REFERENCES pub(id);
ALTER TABLE calendar
ADD CONSTRAINT fk_calendar_band_id FOREIGN KEY (band_id) REFERENCES user(id);
-- -- OR you can run the following script that returns the same result (MySQL DDL):
-- CREATE TABLE `calendar` (
--     `id` bigint NOT NULL AUTO_INCREMENT,
--     `pub_id` bigint DEFAULT NULL,
--     `band_id` bigint DEFAULT NULL,
--     `event_datetime` datetime NOT NULL,
--     PRIMARY KEY (`id`),
--     KEY `fk_calendar_pub_id` (`pub_id`),
--     KEY `fk_calendar_band_id` (`band_id`),
--     CONSTRAINT `fk_calendar_band_id` FOREIGN KEY (`band_id`) REFERENCES `user` (`id`),
--     CONSTRAINT `fk_calendar_pub_id` FOREIGN KEY (`pub_id`) REFERENCES `pub` (`id`)
-- ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci