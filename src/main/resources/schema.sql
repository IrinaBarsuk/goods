create table role
(
    id          int NOT NULL primary key AUTO_INCREMENT,
    name_role   varchar(100),
    description varchar(100)
);
create table manufacturer
(
    id                int NOT NULL primary key AUTO_INCREMENT,
    name_manufacturer varchar(100),
    country           varchar(100),
    city              varchar(100),
    address            varchar(100),
    phone_number      varchar(100),
    email             varchar(100)
);

create table category
(
    id            int NOT NULL primary key AUTO_INCREMENT,
    name_category varchar(100)
);

create table type_metal
(
    id          int NOT NULL primary key AUTO_INCREMENT,
    type_metal varchar(100)
);

create table client
(
    id            int NOT NULL primary key AUTO_INCREMENT,
    name_client   varchar(100),
    surname       varchar(100),
    login         varchar(100),
    password      varchar(100),
    mobile_number varchar(100),
    email         varchar(100),
    birthday      date,
    fk_role_id    int,
    foreign key (fk_role_id) references role (id)
);

create table goods
(
    id                 int NOT NULL primary key AUTO_INCREMENT,
    fk_category_id     int,
    fk_manufacturer_id int,
    vendor_code        varchar(100),
    name_goods         varchar(100),
    fk_type_metal_id   int,
    price              float,
    description        varchar(100),
    image              blob,
    foreign key (fk_category_id) references category (id),
    foreign key (fk_manufacturer_id) references manufacturer (id),
    foreign key (fk_type_metal_id) references type_metal (id)
);
create table review
(
    id           int NOT NULL primary key AUTO_INCREMENT,
    fk_client_id int,
    date_review  date,
    review       varchar(100),
    foreign key (fk_client_id) references client (id)
);