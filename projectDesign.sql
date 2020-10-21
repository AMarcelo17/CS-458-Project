-- 458 project

drop table Department cascade constraints;
create table Department
-- to give information about the departments in the store
(dept_num	integer,
dept_name	varchar2(18),
primary key (dept_num)
);

drop table Customer cascade constraints;
create table Customer
-- to give information about the customer 
(customer_id	   integer,
cus_fname	   varchar2(10),
cus_lname	   varchar2(10),
cus_phone	   varchar2(12),
primary key (customer_id)
);

drop table Sales cascade constraints;
create table Sales
-- keeps track of customer purchases
(Sales_id		integer,
balance			decimal(6,2),
date_of_sale    date,
customer_id		integer,
product_id    integer, 
primary key (sales_id),
foreign key (customer_id) references Customer,
foreign key (product_id) references Products
);

drop table Employee cascade constraints;
create table Employee
-- to give information about employees working in the shop
(empl_id 	varchar2(15),
empl_fname	varchar2(15),
empl_lname 	varchar2(15),
empl_title	varchar2(15),
empl_salary integer,
empl_bonus integer,
dept_num 	integer,
primary key (empl_id),
foreign key (dept_num) references Department
);

drop table Vendors cascade constraints;
create table Vendors
-- to give information about vendors
(ven_id   	varchar2(6),
vendor_name	varchar2(20),
ven_email	varchar2(35),
ven_phone	varchar2(12),
primary key (ven_id)
);

drop table Products cascade constraints;
create table Products
-- to give informaion about the products sold in shop 
(product_id 		integer,
prod_name		varchar2(35),
prod_price		decimal(6,2),
prod_avab		integer,
ven_id          varchar2(6),
primary key(product_id),
foreign key (ven_id) references Vendors
);