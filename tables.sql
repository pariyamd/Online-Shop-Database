create table producer
(
    name        varchar(20)  not null,
    lastname    varchar(20)  not null,
    ID          int unsigned not null
        primary key,
    phoneNumber varchar(11)  not null
);

create table user
(
    name        varchar(20)  not null,
    lastname    varchar(20)  not null,
    ID          int unsigned not null
        primary key,
    phoneNumber varchar(11)  not null,
    city        varchar(20)  not null,
    address     text         not null
);

create table product
(
    code          int            not null
        primary key,
    name          varchar(100)   not null,
    purchasePrice float unsigned not null,
    salePrice     float unsigned not null,
    balance       int unsigned   not null,
    producer      int unsigned   not null,
    constraint product_producer_ID_fk
        foreign key (producer) references producer (ID)
);

create table factor
(
    code         int          not null
        primary key,
    buyer        int unsigned not null,
    purchaseDate date         not null,
    constraint factor_ibfk_1
        foreign key (buyer) references user (ID)
);

create table list
(
    factor  int   not null,
    product int   not null,
    count   int   not null,
    rank  float null check between 0 and 5,
    primary key (factor, product),
    constraint list_factor_code_fk
        foreign key (factor) references factor (code),
    constraint list_product_code_fk
        foreign key (product) references product (code)
);