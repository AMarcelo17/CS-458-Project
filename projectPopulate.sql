-- 458 project

delete from Products;
delete from Vendors;
delete from Employee;
delete from Sales;
delete from Customer;
delete from Department;

prompt populating Department

insert into Department
values
('1','management');

insert into Department
values
('2','sales');

insert into Department
values
('3','technician');

insert into Department
values
('4','instructor');

insert into Department
values
('5','staff shooter');

insert into Department
values
('6','maintenance');

prompt Populating Customer

insert into Customer
values
('001','jj','2jayz','626-862-2971');

insert into Customer
values
('002','taco','nick','510-626-6969');

insert into Customer
values
('003','nvidia','threeighty','213-356-2115');

insert into Customer
values
('004','dweeb','ortiz','707-382-6825');

insert into Customer
values
('005','cake','smacker','805-757-9168');


insert into Customer
values
('006','jay','fowler','510-517-9060');


insert into Customer
values
('007','trever','santos','510-541-9745');


insert into Customer
values
('008','andrew','simp','707-453-9012');


insert into Customer
values
('009','edwin','sardines','707-098-1276');


insert into Customer
values
('010','paul','narc','707-991-228');


insert into Customer
values
('011','juan','dos','626-320-2217');

insert into Customer
values
('012','santos','customs','626-243-8975');

insert into Sales
values
(000001,'100.0','21-JAN-2017','001',22);

insert into Sales
values
(000002,'100.0','21-JAN-2017','002',43);

insert into Sales
values
(000003,'100.0','21-JAN-2017','003',100);

insert into Sales
values
(000004,'100.0','21-JAN-2017','004',99);

insert into Sales
values
(000005,'100.0','21-JAN-2017','005',17);

insert into Sales
values
(000006,'100.0','21-JAN-2017','006',25);

insert into Sales
values
(000007,'100.0','21-JAN-2017','007',19);

insert into Sales
values
(000008,'100.0','21-JAN-2017','008',13);

insert into Sales
values
(000009,'100.0','21-JAN-2017','009',39);

insert into Sales
values
(000010,'100.0','21-JAN-2017','010',24);

prompt populating Employee

insert into Employee
values
('0001','carl','massey','owner','12000','0','1');

insert into Employee
values
('0002','jacob','massey','owner','12000','0','1');

insert into Employee
values
('0011','daniel','massey','sales','12000','0','2');
insert into Employee
values
('0003','anthony','carlson','instructor','12000','0','4');

insert into Employee
values
('0004','mike','sedlak','instructor','12000','0','4');

insert into Employee
values
('0005','jess','aldape','instructor','12000','0','4');

insert into Employee
values
('0006','austin','green','staff shooter','12000','0','5');

insert into Employee
values
('0007','miranda','pena','staff shooter','12000','0','5');

insert into Employee
values
('0008','ryan','murray','staff shooter','12000','0','5');

insert into Employee
values
('0009','gianna','D-arezzo','staff shooter','12000','0','5');

insert into Employee
values
('0010','kaitlind','jenkins','staff shooter','12000','0','5');

prompt populating vendors

insert into Vendors
values
('11111A','PSE','proshop@pse-archery.com','520-884-9201');

insert into Vendors
values
('22222B','HOYT','csteam@hoyt.com','801-363-2990');

insert into Vendors 
values
('33333C','MATHEWS','jondoe@mathewsinc.com','608-269-2728');

insert into Vendors 
values
('44444D','BOWTECH','info@bowtecharchery.com','541-284-4711');

insert into Vendors 
values
('55555E','BEAR','bearcustomercare@beararchery.com','812-467-1200');

insert into vendors 
values
('66666F','ELITE','techsupport.north@togllc.com','585-444-0204');

insert into Vendors 
values
('77777G','EASTON','support@eastonarchery.com','801-539-1400');

insert into Vendors
values
('88888H','GOLD-TIP','sales@goldtip.com','800-551-0541');

insert into Vendors
values
('99999I','TRU-BALL','truball@truball.com','434-929-2800');

insert into Vendors
values
('00000J','TROPHY-RIDGE','sales@trophyridge.com','812-467-1200');

insert into Vendors
values
('01010L','SPOT-HOGG','info@spot-hogg.com','541-995-3702');

prompt populating products

insert into Products
values
(22,'carbon arrows','150.00','100','77777G');

insert into Products
values
(43,'aluminum arrows','60.00','100','77777G');

insert into Products
values
(100,'compound bow','1200.00','10','11111A');

insert into Products
values
(99,'long bow','125.00','20','11111A');

insert into Products
values
(17,'compound bow','500.00','25','55555E');
insert into Products
values
(25,'long bow','99.99','80','55555E');

insert into Products
values
(19,'5-pin sight','180.00','10','01010L');

insert into Products
values
(13,'single pin sight','150.00','10','01010L');

insert into Products
values
(39,'5-pin sight','80.00','10','00000J');

insert into Products
values
(24,'single pin sight','100.00','10','00000J');

insert into Products
values
(56,'index finger release','150.00','20','99999I');

insert into Products
values
(66,'thumb release',' 200.00','5','99999I');

insert into Products
values
(77,'trigger release','99.99','15','00000J');

insert into Products
values
(88,'carbon arrows','225.00','50','88888H');

insert into Products
values
(64,'aluminum arrows','100.00','3','88888H');

insert into Products
values
(1,'compound bow','1000.00','3','44444D');

insert into Products
values
(2,'recurve bow','700.00','3','44444D');

insert into Products
values
(3,'compound bow','1000.00','3','22222B');

insert into Products
values
(6,'recurve bow','800.00','3','22222B');

insert into Products
values
(7,'hunting bow','800.00','8','33333C');

insert into Products
values
(47,'competition bow','1000.00','3','33333C');

insert into Products
values
(9,'hutning compound bow','900.00','3','66666F');

insert into Products
values
(127,'competition compound bow','1000.00','3','66666F');