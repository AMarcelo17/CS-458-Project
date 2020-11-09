drop table Customer_Product_Purchases cascade constraints;
drop table Product_Vendor_Supplies cascade constraints;
drop table Quarterly_Finances cascade constraints;
drop table Product cascade constraints;
drop table Vendor cascade constraints;
drop table Department cascade constraints;
drop table Employee cascade constraints;
drop table Customer cascade constraints;

create table Employee
(empl_id int,
empl_lname varchar2(20),
empl_fname varchar(20),
empl_title varchar2(20),
empl_salary int,
empl_bonus int,
primary key (empl_id));

create table Customer
(loyalty varchar2(20),
cust_id int,
-- prod_id int,
cust_fname varchar2(20),
cust_lname varchar2(20),
cust_phone varchar2(20),
primary key (cust_id));
-- foreign key (prod_id) references Product);

create table Product
(prod_id int,
cust_id int,
prod_inventory int,
prod_price int,
prod_name varchar2(20),
total_sales int,
primary key (prod_id),
foreign key (cust_id) references Customer);

create table Department
(dept_num int,
dept_name varchar2(20),
empl_id int,
primary key (dept_num),
foreign key (empl_id) references Employee);

create table Vendor
(ven_id int,
ven_phone varchar2(20),
ven_business_name varchar2(20),
ven_email varchar2(20),
prod_id int,
primary key (ven_id),
foreign key (prod_id) references Product);

create table Product_Vendor_Supplies
(dept_num int,
prod_id int,
primary key (dept_num, prod_id),
foreign key (dept_num) references Department,
foreign key (prod_id) references Product);

create table Quarterly_Finances
(date_of_quarter date,
bool_bonus int,
prod_id int,
empl_id int,
primary key (date_of_quarter),
foreign key (empl_id) references Employee,
foreign key (prod_id) references Product);

create table Customer_Product_Purchases
(purchase_hist int,
prod_id int,
cust_id int,
primary key (prod_id, cust_id),
foreign key (prod_id) references Product,
foreign key (cust_id) references Customer);
