delete from Customer_Product_Purchases;
delete from Quarterly_Finances;
delete from Product_Vendor_Supplies;
delete from Vendor;
delete from Department;
delete from Product;
delete from Customer;
delete from Employee;

prompt Employee inserts

insert into Employee
values
(1, 'Smith', 'Susan', 'Sales', 12, 50);

insert into Employee
values
(2, 'Johnson', 'John', 'HR', 18, 50);

insert into Employee
values
(3, 'Barnard', 'Tabitha', 'Accounting', 22, 50);

insert into Employee
values
(4, 'Kent', 'Donald', 'Engineer', 20, 50);

insert into Employee
values
(5, 'Dent', 'Martha', 'Manager', 25, 50);

prompt Customer inserts

drop sequence cust_seq;

create sequence cust_seq
increment by 2
start with 1000;

insert into Customer
values
('1234567', cust_seq.nextval, 'Mary', 'Richardson', '333-4433');

insert into Customer
values
('111111', cust_seq.nextval, 'Elizabeth', 'Williams', '224-0023');

insert into Customer
values
('2222222', cust_seq.nextval, 'Butch', 'Cassidy', '911');

insert into Customer
values
('8888888', cust_seq.nextval, 'Davey', 'Jones', '030-0303');

insert into Customer
values
('9876543', 5, 'Mark', 'Miller', '837-4059');

prompt Product inserts

insert into Product
values
(1, 1, 44, 12, 'coconut', 11);

insert into Product
values
(2, 2, 41, 15, 'palm', 11);

insert into Product
values
(3, 3, 35, 18, 'oak', 11);

insert into Product
values
(4, 4, 46, 16, 'fern', 11);

insert into Product
values
(5, 5, 10, 10, 'date', 11);

prompt Department inserts

insert into Department
values
(1, 'Nav', 1);

insert into Department
values
(2, 'Electrical', 2);

insert into Department
values
(3, 'Cams', 3);

insert into Department
values
(4, 'Medbay', 4);

insert into Department
values
(5, 'Engineering', 5);

prompt Vendor inserts

insert into Vendor
values
(1, '111-1111', 'Lyft', 'test@test.com', 1);

insert into Vendor
values
(2, '222-2222', 'Uber', 'quiz@quiz.org', 2);

insert into Vendor
values
(3, '333-3333', 'Apple', 'exam@exam.com', 3);

insert into Vendor
values
(4, '444-4444', 'Microsoft', 'ginger@ginger.com', 4);

insert into Vendor
values
(5, '555-5555', 'LIDS', 'true@false.com', 5);

prompt Product_Vendor_Supplies inserts

insert into Product_Vendor_Supplies
values
(1, 1);

insert into Product_Vendor_Supplies
values
(2, 2);

insert into Product_Vendor_Supplies
values
(3, 3);

insert into Product_Vendor_Supplies
values
(4, 4);

insert into Product_Vendor_Supplies
values
(5, 5);

prompt Quarterly_Finances inserts

insert into Quarterly_Finances
values
('21-JAN-2000', 0, 1, 1);

insert into Quarterly_Finances
values
('01-NOV-2020', 1, 2, 2);

insert into Quarterly_Finances
values
('14-JUN-2000', 0, 3, 3);

insert into Quarterly_Finances
values
('28-APR-2000', 1, 4, 4);

insert into Quarterly_Finances
values
('09-DEC-2000', 0, 5, 5);

prompt Customer_Product_Purchases inserts

insert into Customer_Product_Purchases
values
(77, 1, 1);

insert into Customer_Product_Purchases
values
(3, 2, 2);

insert into Customer_Product_Purchases
values
(0, 3, 3);

insert into Customer_Product_Purchases
values
(19, 4, 4);

insert into Customer_Product_Purchases
values
(5, 5, 5);
