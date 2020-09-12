CREATE TABLE IF NOT EXISTS calendar (
    id bigint NOT NULL AUTO_INCREMENT,
    pub_id bigint,
    band_id bigint,
    event_datetime DATETIME,
    primary key (id)
);
ALTER TABLE calendar
ADD CONSTRAINT fk_calendar_pub_id FOREIGN KEY (pub_id) REFERENCES pub(id);
ALTER TABLE calendar
ADD CONSTRAINT fk_calendar_band_id FOREIGN KEY (band_id) REFERENCES user(id);