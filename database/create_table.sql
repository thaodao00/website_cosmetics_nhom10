CREATE DATABASE web_cosmetic_nhom10;

use web_cosmetic_nhom10;

create table user(
                     id bigint not null primary key auto_increment,
                     username VARCHAR(255) not null,
                     fullname VARCHAR(255) null,
                     password VARCHAR(255) not null,
                     email VARCHAR(255) null,
                     phone VARCHAR(15) null,
                     country VARCHAR(50) null,
                     roleid BIGINT not null DEFAULT 0
);

ALTER TABLE user ADD COLUMN avatar VARCHAR(255) null;

create table role(
                     id bigint not null primary key auto_increment,
                     name varchar(255) not null,
                     code varchar(255) not null
);

alter table user add constraint fk_user_role foreign key (roleid) references role(id);

create table product
(
    id               bigint       not null primary key auto_increment,
    name             VARCHAR(255) not null,
    thumnaliImg      text         null,
    price            float        not null,
    discount         float        null,
    sold             int          null,
    shortDescription text         null,
    longDesscription text         null,
    rate             float        null,
    weight           varchar(20)  null,
    dimension        varchar(20)  null
);

create table cart(
									id bigint not null primary key auto_increment,
									total double null,
									userid bigint not null
);

alter table cart add constraint fk_cart_user foreign key (userid) references user(id);

create table cartitems (
									cartid bigint not null,
									productid bigint not null,
									quantity int not null,
									primary key (cartid, productid)
);

alter table cartitems add constraint fk_cartitems_cart foreign key (cartid) references cart(id);
alter table cartitems add constraint fk_cartitems_product foreign key (productid) references products(id);