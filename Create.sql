-- create database internet_shop;

create table suppliers
(
    id           serial primary key,
    name         varchar(128) not null,
    address      varchar(128) not null,
    e_mail       varchar(128) not null,
    phone_number varchar(128) not null

);
create table orders
(
    id            serial primary key,
    supplier_id   int references suppliers,
    name_product  varchar(128) not null,
    count_product int not null,
    price_product int not null,
    date_order    date
);
create table products
(
    id            serial primary key,
    supplier_id   int references suppliers,
    name          varchar(128) not null,
    count         int          not null,
    price_for_one int          not null
);

create table ranks
(
    id        serial primary key,
    rank_name text,
    salary    int not null
);
create table employees
(
    id           serial primary key,
    last_name    text not null,
    name         text not null,
    middle_name  text not null,
    date_birth   date not null,
    phone_number text not null,
    address      text,
    rank_id      int references ranks
);
create table sales
(
    id          serial primary key,
    product_id  int references products,
    count       int not null,
    employee_id int references employees,
    date_sales  date
)