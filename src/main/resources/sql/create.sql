create table band (
  id bigint not null auto_increment,
  cnpj varchar(255),
  email varchar(255),
  fee_brl double precision not null,
  members_num integer not null,
  name varchar(255),
  phone varchar(255),
  style varchar(255),
  primary key (id)
) engine = InnoDB create table band_user (band_id bigint not null, user_id bigint not null) engine = InnoDB create table pub (
  id bigint not null auto_increment,
  address varchar(255),
  address_cep integer,
  address_num integer,
  city varchar(255),
  cnpj varchar(255),
  email varchar(255),
  name varchar(255),
  phone varchar(255),
  state varchar(255),
  user_id bigint,
  primary key (id)
) engine = InnoDB create table show_schedule (
  id bigint not null auto_increment,
  confirmed bit not null,
  confirmed_at datetime(6),
  requested_at datetime(6),
  show_datetime datetime(6),
  band_id bigint not null,
  pub_id bigint not null,
  primary key (id)
) engine = InnoDB create table user (
  id bigint not null auto_increment,
  email varchar(255),
  name varchar(255),
  password varchar(255),
  phone varchar(255),
  primary key (id)
) engine = InnoDB
alter table
  band_user
add
  constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table
  band_user
add
  constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table
  pub
add
  constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table
  show_schedule
add
  constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table
  show_schedule
add
  constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id) create table band (
    id bigint not null auto_increment,
    cnpj varchar(255),
    email varchar(255),
    fee_brl double precision not null,
    members_num integer not null,
    name varchar(255),
    phone varchar(255),
    style varchar(255),
    primary key (id)
  ) engine = InnoDB create table band_user (band_id bigint not null, user_id bigint not null) engine = InnoDB create table pub (
    id bigint not null auto_increment,
    address varchar(255),
    address_cep integer,
    address_num integer,
    city varchar(255),
    cnpj varchar(255),
    email varchar(255),
    name varchar(255),
    phone varchar(255),
    state varchar(255),
    user_id bigint,
    primary key (id)
  ) engine = InnoDB create table show_schedule (
    id bigint not null auto_increment,
    confirmed bit not null,
    confirmed_at datetime(6),
    requested_at datetime(6),
    show_datetime datetime(6),
    band_id bigint not null,
    pub_id bigint not null,
    primary key (id)
  ) engine = InnoDB create table user (
    id bigint not null auto_increment,
    email varchar(255),
    name varchar(255),
    password varchar(255),
    phone varchar(255),
    primary key (id)
  ) engine = InnoDB
alter table
  band_user
add
  constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table
  band_user
add
  constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table
  pub
add
  constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table
  show_schedule
add
  constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table
  show_schedule
add
  constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
create table band (id bigint not null auto_increment, cnpj varchar(255), email varchar(255), fee_brl double precision not null, members_num integer not null, name varchar(255), phone varchar(255), style varchar(255), primary key (id)) engine=InnoDB
create table band_user (band_id bigint not null, user_id bigint not null) engine=InnoDB
create table pub (id bigint not null auto_increment, address varchar(255), address_cep integer, address_num integer, city varchar(255), cnpj varchar(255), email varchar(255), name varchar(255), phone varchar(255), state varchar(255), user_id bigint, primary key (id)) engine=InnoDB
create table show_schedule (id bigint not null auto_increment, confirmed bit not null, confirmed_at datetime(6), requested_at datetime(6), show_datetime datetime(6), band_id bigint not null, pub_id bigint not null, primary key (id)) engine=InnoDB
create table user (id bigint not null auto_increment, email varchar(255), name varchar(255), password varchar(255), phone varchar(255), primary key (id)) engine=InnoDB
alter table band_user add constraint FKktob81s7pq5wkg5sv4vlu5w9r foreign key (user_id) references user (id)
alter table band_user add constraint FKclqdtpqeoycb43outv6k8fymj foreign key (band_id) references band (id)
alter table pub add constraint FKn1ii1s0cjs33odmdk31hrmm3 foreign key (user_id) references user (id)
alter table show_schedule add constraint FK7y3b34ouv2b38lb82h2rx2qy8 foreign key (band_id) references band (id)
alter table show_schedule add constraint FKalevhv0dhd4l8k5nh1cxvtvxp foreign key (pub_id) references pub (id)
