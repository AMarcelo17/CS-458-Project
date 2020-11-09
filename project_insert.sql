-- Jesse Garcia
-- may 7, 2020

create or replace procedure project_insert(cus_fname customer.cust_fname%TYPE, cus_lname customer.cust_lname%TYPE, cus_pho customer.cust_phone%TYPE, cus_email customer.cust_email%TYPE)
as
begin
	insert into Customer
	       (cust_fname, cust_lname, cust_phone, cust_email)
	       values
	       (cus_fname, cus_lname, cus_pho, cus_email);
end;
/
show errors
