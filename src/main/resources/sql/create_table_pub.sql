CREATE TABLE IF NOT EXISTS pub (
    id BIGINT AUTO_INCREMENT,
    name VARCHAR(60),
    cnpj VARCHAR(22),
    address VARCHAR(300),
    address_num MEDIUMINT,
    address_cep INT,
    city VARCHAR(60),
    state VARCHAR(2),
    phone VARCHAR(20),
    email VARCHAR(60),
    primary key (id)
);