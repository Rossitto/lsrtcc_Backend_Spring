CREATE TABLE IF NOT EXISTS pub_manager (
    id bigint NOT NULL AUTO_INCREMENT,
    pub_id bigint,
    user_id bigint,
    primary key (id)
);
ALTER TABLE pub_manager
ADD CONSTRAINT fk_pub_manager_pub_id FOREIGN KEY (pub_id) REFERENCES pub(id);
ALTER TABLE pub_manager
ADD CONSTRAINT fk_pub_manager_user_id FOREIGN KEY (user_id) REFERENCES user(id);