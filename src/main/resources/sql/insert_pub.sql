/*
-- Query: SELECT * FROM lsrtcc.pub
LIMIT 0, 1000

-- Date: 2021-06-13 18:16
*/
INSERT INTO
  `pub` (
    `id`,
    `name`,
    `cnpj`,
    `address`,
    `address_num`,
    `address_cep`,
    `city`,
    `state`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    1,
    'Opera 1',
    '11.111.111/0001-01',
    'Rua alguma do largo da ordem',
    3129,
    11111111,
    'Curitiba',
    'PR',
    '41987651234',
    'opera1@gmail.com',
    1
  );
INSERT INTO
  `pub` (
    `id`,
    `name`,
    `cnpj`,
    `address`,
    `address_num`,
    `address_cep`,
    `city`,
    `state`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    2,
    '91 Graus',
    '11.121.111/0901-99',
    'Rua perto do cemitério municipal',
    1,
    99999999,
    'Curitiba',
    'PR',
    '419812312351234',
    '92graus@gmail.com',
    2
  );
INSERT INTO
  `pub` (
    `id`,
    `name`,
    `cnpj`,
    `address`,
    `address_num`,
    `address_cep`,
    `city`,
    `state`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    3,
    '102 Graus',
    '11.121.111/1111-79',
    'Rua perto do fim',
    111121,
    99997799,
    'Curitiba',
    'PR',
    '41982351234',
    '102graus@gmail.com',
    7
  );
INSERT INTO
  `pub` (
    `id`,
    `name`,
    `cnpj`,
    `address`,
    `address_num`,
    `address_cep`,
    `city`,
    `state`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    5,
    'LSR Pub',
    '1936127842131231',
    'Rua melhor de todas',
    69,
    80660239,
    NULL,
    NULL,
    '41289371297',
    'lsrpub@email.com',
    8
  );
INSERT INTO
  `pub` (
    `id`,
    `name`,
    `cnpj`,
    `address`,
    `address_num`,
    `address_cep`,
    `city`,
    `state`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    6,
    'LSR Pub 2',
    '1936127842565',
    'Rua melhor de todas',
    69,
    80660239,
    NULL,
    NULL,
    '41289371297',
    'lsrpub2@email.com',
    9
  );
INSERT INTO
  `pub` (
    `id`,
    `name`,
    `cnpj`,
    `address`,
    `address_num`,
    `address_cep`,
    `city`,
    `state`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    7,
    'pub3',
    '17268516351123',
    'Rua TOP',
    89,
    12367811,
    'Mafra',
    'PR',
    '912367128',
    'pub3@email.com',
    6
  );