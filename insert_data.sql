
INSERT INTO `user` (
`email`,
`name`,
`password`,
`phone` ) 
VALUES 
   ('kaduzera@gmail.com','KADUZERA','$2a$10$xDT36Aivqwhoow76LB6/VuanVZfPayzIR9b0jqarUkQVerGyBL0WC','41
   991126-6333') ; 
   
INSERT INTO `user` (
`email`,
`name`,
`password`,
`phone` )    VALUES
   ('muh@email.com','Muh','$2a$10$CS0OBdoPI2if0F3lsOb6gOMgvhnW6m48oHOtFHGQgk4RKUIwh6xdu','41
   991126-6333');
   

select * from users;


INSERT INTO `band`
(cnpj
,email
,fee_brl
,members_num
,name
,phone
,style)
 VALUES
   (NULL,'kiss7@gmail5.com',99999,4,'Kiss',NULL,'Glam Rock'),
   (NULL,'kiss@gmail.com',1000,5,'91Rock',NULL,'Hard Rock'),
   (NULL,'wakeup@email.com',1000,4,'WakeUp!',NULL,'NuMetal');
   
   select * from band;


INSERT INTO `band_user` VALUES (1,1),(2,2),(3,2);


INSERT INTO `band_user` VALUES (3,2);

select * from band_user;



INSERT INTO `pub`
(address
,address_cep
,address_num
,city
,cnpj
,email
,name
,phone
,state
,user_id)
 VALUES
   ('Rua perto do
   centro',99997799,112131,'Curitiba','11.333.111/0901-79','1001graus@gmail.com','1001
   Graus','41982351234','PR',1),
   ('Rua do
   Batel',99997799,112131,'Curitiba','12.333.111/0901-79','xeda@gmail.com','Sheridans','41982351124','PR',1),
   ('Rua
   de
   SJP',99997799,112131,'Curitiba','12.233.111/0901-79','egdarmeiga@gmail.com','The
   Éd','41982351124','PR',2),
   ('Av.
   Iguaçu',99997799,112131,'Curitiba','02.233.111/0901-79','harrygoncalves@gmail.com','Cross','41982351124','PR',2),
   ('Rua
   da pizza',80820000,390,'Curitiba','79167557646676','pubdorossi@email.com','Pub
   do Rossi','7497515071','PR',2),
   ('Rua
   Topperson',80320159,185,'Curitiba','12345678901234','pub@email.com','Pub
   do Rossi','4152365890','PR',1);

select * from pub;




