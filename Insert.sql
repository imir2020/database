insert into suppliers(name, address, e_mail, phone_number)
values ('Horns&&Hoofs', 'Perm, commi 35', 'horn@gmail.com', '8-988-342-65-98');
insert into orders(supplier_id, name_product, count_product, price_product, date_order)
values (1, 'horns', 2, 2000, '2020-06-14T18:07');
insert into products(supplier_id, name, count, price_for_one)
values (1, 'horns', 400, 100);
insert into ranks (rank_name, salary)
values ('Manager', 80000),
       ('Employee', 50000);
insert into employees(last_name, name, middle_name, date_birth, phone_number, address, rank_id)
values ('Ivanov', 'Oleg', 'Ivanovich', '1992-11-21', '8-911-432-89-61', 'Moskow, Novyi Arbat 22, kv.2555', 1),
 ('Sergeev', 'Kirill', 'Antonovich', '1994-09-11', '8-925-444-89-17', 'Moskow, Komissarov 125, kv.800', 2);
insert into sales(product_id, count, employee_id, date_sales)
values (1,100, 2, '2020-08-01T14:15');
