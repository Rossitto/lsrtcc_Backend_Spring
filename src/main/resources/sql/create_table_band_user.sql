create table if not exists band_user (
    id bigint auto_increment,
    user_id bigint,
    band_id bigint,
    responsible boolean,
    primary key (id)
);
alter table band_user
add constraint fk_band_user_user_id FOREIGN KEY (user_id) REFERENCES user(id);
alter table band_user
ADD CONSTRAINT fk_band_user_band_id FOREIGN KEY (band_id) REFERENCES band(id);