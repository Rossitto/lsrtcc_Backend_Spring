/*
-- Query: SELECT * FROM lsrtcc.user
LIMIT 0, 1000

-- Date: 2021-06-13 18:14
*/
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    1,
    'MURILOVER',
    'murilo@email.com',
    '21 6969696969',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    2,
    'maria',
    'maria@gmail.com',
    '(41) 98852-3178',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    3,
    'jonas',
    'jonasbrother@hotmail.com',
    '11987625789',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    4,
    'juca2',
    'juca@gmail.com',
    '21 98127634',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    5,
    'juca3',
    'ju123casdadaa@gmail.com',
    '21 9131127634',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    6,
    'Lucas Rossi',
    'lucas7r@gmai.com',
    '12312415234123',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    7,
    'Nome 01',
    'emaildocaboclo@email.com',
    '1231231',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    8,
    'Lucas Rossi2',
    'email@novo.com',
    '1231123123',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    9,
    'Lucas Rossi 3',
    'eumail@emails.coms',
    '123123123',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    10,
    'Eu mesmo',
    'eumesmo@gmail.com',
    'aerq414123',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    11,
    'lucas',
    'maasdae@gmail.com',
    '12312312',
    '$2a$10$z7.2PiZuRmER4hyokwI2ueqCdtRKTAyGuJz5wVwg9xn/MJvtTjtGG'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    12,
    'Pedróca com acento',
    'pedrohacker@gmail.com',
    '41 99196-6333',
    '$2a$10$P8.nVKVsgiKtoSa346FPeuRwkdKIjon//AXLGosLwahB7oonAVF8S'
  );
INSERT INTO
  `user` (`id`, `name`, `email`, `phone`, `password`)
VALUES
  (
    20,
    'KADUZERA',
    'kaduzera@gmail.com',
    '41 991126-6333',
    '$2a$10$P8.nVKVsgiKtoSa346FPeuRwkdKIjon//AXLGosLwahB7oonAVF8S'
  );
  /*
  -- Query: SELECT * FROM lsrtcc.band
  LIMIT 0, 1000
  
  -- Date: 2021-06-13 18:11
  */
INSERT INTO
  `band` (
    `id`,
    `name`,
    `cnpj`,
    `fee_brl`,
    `members_num`,
    `style`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    1,
    '91Rock',
    NULL,
    1000.00,
    5,
    'Hard Rock',
    '41998566278',
    '91rockband@gmail.com',
    1
  );
INSERT INTO
  `band` (
    `id`,
    `name`,
    `cnpj`,
    `fee_brl`,
    `members_num`,
    `style`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    2,
    'WakeUp!',
    NULL,
    1000.00,
    4,
    'Nu Metal',
    NULL,
    'wakeup@gmail.com',
    2
  );
INSERT INTO
  `band` (
    `id`,
    `name`,
    `cnpj`,
    `fee_brl`,
    `members_num`,
    `style`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    3,
    'Backstage',
    NULL,
    1000.00,
    5,
    'Hard Rock',
    NULL,
    'backstage@gmail.com',
    3
  );
INSERT INTO
  `band` (
    `id`,
    `name`,
    `cnpj`,
    `fee_brl`,
    `members_num`,
    `style`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    4,
    'Válvula Vapor',
    NULL,
    1000.00,
    4,
    'Rock Nacional',
    NULL,
    'valvulavapor@gmail.com',
    4
  );
INSERT INTO
  `band` (
    `id`,
    `name`,
    `cnpj`,
    `fee_brl`,
    `members_num`,
    `style`,
    `phone`,
    `email`,
    `user_id`
  )
VALUES
  (
    7,
    'Kiss',
    NULL,
    99999.00,
    4,
    'Glam Rock',
    NULL,
    'kiss@gmail.com',
    5
  );
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
  /*
  -- Query: SELECT * FROM lsrtcc.show_schedule
  LIMIT 0, 1000
  
  -- Date: 2021-06-13 18:18
  */
INSERT INTO
  `show_schedule` (
    `id`,
    `pub_id`,
    `band_id`,
    `show_datetime`,
    `confirmed`,
    `confirmed_at`,
    `requested_at`
  )
VALUES
  (
    1,
    5,
    4,
    '2021-05-19 22:30:00',
    1,
    '2021-05-09 20:42:00',
    '2021-05-09 20:39:00'
  );
INSERT INTO
  `show_schedule` (
    `id`,
    `pub_id`,
    `band_id`,
    `show_datetime`,
    `confirmed`,
    `confirmed_at`,
    `requested_at`
  )
VALUES
  (
    2,
    5,
    4,
    '2021-05-19 22:30:00',
    1,
    '2021-05-09 20:42:00',
    '2021-05-09 20:39:00'
  );
INSERT INTO
  `show_schedule` (
    `id`,
    `pub_id`,
    `band_id`,
    `show_datetime`,
    `confirmed`,
    `confirmed_at`,
    `requested_at`
  )
VALUES
  (
    3,
    5,
    3,
    '2021-06-19 22:30:00',
    0,
    NULL,
    '2021-06-09 20:39:00'
  );
INSERT INTO
  `show_schedule` (
    `id`,
    `pub_id`,
    `band_id`,
    `show_datetime`,
    `confirmed`,
    `confirmed_at`,
    `requested_at`
  )
VALUES
  (
    4,
    2,
    1,
    '2021-05-16 20:00:00',
    0,
    NULL,
    '2021-05-16 20:16:00'
  );
INSERT INTO
  `show_schedule` (
    `id`,
    `pub_id`,
    `band_id`,
    `show_datetime`,
    `confirmed`,
    `confirmed_at`,
    `requested_at`
  )
VALUES
  (
    5,
    1,
    3,
    '2021-05-16 20:00:00',
    0,
    NULL,
    '2021-05-16 20:16:00'
  );