CREATE TABLE IF NOT EXISTS band (
    id BIGINT AUTO_INCREMENT,
    name varchar(30),
    cnpj varchar(22),
    fee_brl decimal(8, 2),
    members_num smallint,
    style varchar(50),
    phone varchar(20),
    email varchar(100),
    PRIMARY KEY (id)
);