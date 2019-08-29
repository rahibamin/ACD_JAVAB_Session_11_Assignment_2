use salesinformationsystem;

-- 1
select client_name, client_city
from `clients`;

-- 2
select product_name
from `product`;

-- 3
select client_name
from `clients`
where substring(client_name, 2, 1) = 'a';

-- 4
select client_name
from `clients`
where client_city = 'Tezpur';

-- 5
select product_name
from `product`
where product_manufacture_price > 2000 and product_manufacture_price < 5000;
alter table `product`
drop column `new_price`;


-- 6
alter table `product`
add column `new_price` decimal;

-- 7
alter table `sales`
change `sales_new_product_rate` `sales_new_product_rate` decimal;

-- 8
select *
from `product`
order by `product_description`;

-- 9
select sale_order_date, sales_quantity, sale_ID
from sales;

-- 10
delete from `sales`
where sale_order_date < 20080825;

-- 11
update `sales`
set `sale_order_date` = 20080816
where sale_ID = 8;

-- 12
update `clients`
set client_balance = 1200
where client_id = 3;

-- 13
select product_name
from `product`
where  product_description like '%HDD1034%' and product_description like '%DVDRW%';

-- 14 
select client_name, client_city, client_state
from clients
where not client_city = 'ASSAM';

