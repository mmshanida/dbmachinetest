stock_details1=# select sum(int_quantity*int_price) as total_cost from tbl_stock;
 total_cost
------------
   214015.5
(1 row)

stock_details1=# select sum(int_quantity) as total_no_product from tbl_stock;
 total_no_product
------------------
              177
(1 row)


stock_details1=# select count (distinct vchr_name) as items from tbl_stock;
 items
-------
     5
(1 row)

stock_details1=# select vchr_name,int_price from tbl_stock where int_price=(select max(int_price) from tbl_stock);
 vchr_name | int_price
-----------+-----------
 memmory   |    3501.5
(1 row)


stock_details1=# select sum(int_count) as total_enrollment from tbl_enrollment;
 total_enrollment
------------------
              351
(1 row)


stock_details1=# select count(vchr_class_name) as no_of_classes from tbl_classes;
 no_of_classes
---------------
             7
(1 row)


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

stock_details1=# select concat(vchr_name,int_price) from tbl_stock;
     concat
----------------
 mouse501.5
 keyboard451.5
 modem1201.5
 memmory1501.5
 headphone751.5
 memmory3501.5
(6 rows)


stock_details1=# select tbl_student.name,tbl_grade.course from tbl_student inner join tbl_grade using(RollNo) where grade='A';
  name   | course
---------+--------
 Akhil   | C
 Maya    | Java
 Maya    | PHP
 Paul    | Java
 Sandeep | PHP
(5 rows)


stock_details1=# select count(distinct name) from tbl_student inner join tbl_grade using(RollNo) where grade='B';
 count
-------
     4
(1 row)


stock_details1=#  select tbl_student.name, count(tbl_grade.course) as no_of_course from tbl_grade INNER JOIN tbl_student on tbl_student.rollno=tbl_grade.rollno group by tbl_student.name,tbl_student.rollno order by tbl_student.name;
  name   | no_of_course
---------+--------------
 Akhil   |            2
 Anoop   |            1
 Maya    |            3
 Paul    |            2
 Sandeep |            2
(5 rows)


stock_details1=#  select tbl_student.name from tbl_student INNER JOIN tbl_grade on tbl_student.rollno=tbl_grade.rollno where tbl_grade.course='Java' and tbl_student.city='Bangalore' group by tbl_student.name;
 name
-------
 Anoop
 Maya
(2 rows)

stock_details1=#  select tbl_grade.course, tbl_student.name from tbl_student INNER JOIN  tbl_grade on tbl_student.rollno=tbl_grade.rollno where name like'A%';
 course | name
--------+-------
 C      | Akhil
 Java   | Akhil
 Java   | Anoop
(3 rows)


stock_details1=# select name, date_part('year', age(Dob))as age , * from tbl_student;
  name   | age | enrlno | rollno |  name   |   city    |  mobile  |    dob
---------+-----+--------+--------+---------+-----------+----------+------------
 Akhil   |  37 |     11 |      2 | Akhil   | Delhi     | 98756579 | 1986-01-12
 Maya    |  35 |      6 |      4 | Maya    | Bangalore | 98734534 | 1987-11-12
 Anoop   |  32 |      1 |      8 | Anoop   | Bangalore | 93456535 | 1990-12-22
 Paul    |  31 |     20 |      1 | Paul    | Cochin    | 96754555 | 1991-03-13
 Sandeep |  29 |      3 |      5 | Sandeep | Delhi     | 84865644 | 1993-06-14
(5 rows)


stock_details1=# create table tbl_std(name varchar(20),Date_of_birth date);
CREATE TABLE
stock_details1=# insert into tbl_std(name,Date_of_birth) values('Name 1','12-12-2010');
INSERT 0 1
stock_details1=# insert into tbl_std(name,Date_of_birth) values('Name 2','23-1-2010');
INSERT 0 1
stock_details1=# select name,to_char(date_of_birth,'dd-Mon-yyyy') from tbl_std;
  name  |   to_char
--------+-------------
 Name 1 | 12-Dec-2010
 Name 2 | 23-Jan-2010
(2 rows)
