stock_details1=# insert into tbl_stock(vchr_name,int_quantity,int_price,int_supplier) values('mouse',10,501,1);
INSERT 0 1
stock_details1=# insert into tbl_stock(vchr_name,int_quantity,int_price,int_supplier) values('keyboard',5,451,3);
INSERT 0 1
stock_details1=# insert into tbl_stock(vchr_name,int_quantity,int_price,int_supplier) values('modem',10,1201,2);
INSERT 0 1
stock_details1=# insert into tbl_stock(vchr_name,int_quantity,int_price,int_supplier) values('memmory',100,1501,5);
INSERT 0 1
stock_details1=# insert into tbl_stock(vchr_name,int_quantity,int_price,int_supplier) values('headphone',50,751,4);
INSERT 0 1
stock_details1=# insert into tbl_stock(vchr_name,int_quantity,int_price,int_supplier) values('memmory',2,3501,4);
INSERT 0 1
stock_details1=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | int_supplier
-----------------+-----------+--------------+-----------+--------------
               1 | mouse     |           10 |       501 |            1
               2 | keyboard  |            5 |       451 |            3
               3 | modem     |           10 |      1201 |            2
               4 | memmory   |          100 |      1501 |            5
               5 | headphone |           50 |       751 |            4
               6 | memmory   |            2 |      3501 |            4
(6 rows)


stock_details1=# update tbl_stock set int_price=int_price+1.50;
UPDATE 6
stock_details1=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | int_supplier
-----------------+-----------+--------------+-----------+--------------
               1 | mouse     |           10 |     502.5 |            1
               2 | keyboard  |            5 |     452.5 |            3
               3 | modem     |           10 |    1202.5 |            2
               4 | memmory   |          100 |    1502.5 |            5
               5 | headphone |           50 |     752.5 |            4
               6 | memmory   |            2 |    3502.5 |            4
(6 rows)

stock_details1=# select * from tbl_stock where int_price>1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | int_supplier
-----------------+-----------+--------------+-----------+--------------
               3 | modem     |           10 |    1202.5 |            2
               4 | memmory   |          100 |    1502.5 |            5
               6 | memmory   |            2 |    3502.5 |            4
(3 rows)


stock_details1=# select * from tbl_stock order by vchr_name asc;
 pk_int_stock_id | vchr_name | int_quantity | int_price | int_supplier
-----------------+-----------+--------------+-----------+--------------
               5 | headphone |           50 |     752.5 |            4
               2 | keyboard  |            5 |     452.5 |            3
               4 | memmory   |          100 |    1502.5 |            5
               6 | memmory   |            2 |    3502.5 |            4
               3 | modem     |           10 |    1202.5 |            2
               1 | mouse     |           10 |     502.5 |            1
(6 rows)

stock_details1=# select * from tbl_stock order by vchr_name asc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | int_supplier
-----------------+-----------+--------------+-----------+--------------
               5 | headphone |           50 |     752.5 |            4
               2 | keyboard  |            5 |     452.5 |            3
               4 | memmory   |          100 |    1502.5 |            5
(3 rows)


stock_details1=# select * from tbl_stock order by vchr_name desc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | int_supplier
-----------------+-----------+--------------+-----------+--------------
               1 | mouse     |           10 |     502.5 |            1
               3 | modem     |           10 |    1202.5 |            2
               4 | memmory   |          100 |    1502.5 |            5
(3 rows)


stock_details1=# select vchr_name,int_quantity,int_price, (int_quantity * int_price) as "int_quantity*int_price" from tbl_stock;
 vchr_name | int_quantity | int_price | int_quantity*int_price
-----------+--------------+-----------+------------------------
 mouse     |           10 |     502.5 |                   5025
 keyboard  |            5 |     452.5 |                 2262.5
 modem     |           10 |    1202.5 |                  12025
 memmory   |          100 |    1502.5 |                 150250
 headphone |           50 |     752.5 |                  37625
 memmory   |            2 |    3502.5 |                   7005
(6 rows)


stock_details1=# delete from tbl_stock where fk_int_supplier=5;
DELETE 1
stock_details1=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | mouse     |           10 |     501.5 |               1
               2 | keyboard  |            5 |     451.5 |               3
               3 | modem     |           10 |    1201.5 |               2
               5 | headphone |           50 |     751.5 |               4
               6 | memmory   |            2 |    3501.5 |               4
(5 rows)


stock_details1=# insert into tbl_dept(vchr_dept_name,vchr_dept_description) values('computer science','CS');
INSERT 0 1
stock_details1=# insert into tbl_dept(vchr_dept_name,vchr_dept_description) values('Electronics','EC');
INSERT 0 1
stock_details1=# insert into tbl_dept(vchr_dept_name,vchr_dept_description) values('Commerce','CC');
INSERT 0 1
stock_details1=# insert into tbl_dept(vchr_dept_name,vchr_dept_description) values('Arts','AR');
INSERT 0 1
stock_details1=# select * from tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | computer science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
(4 rows)



