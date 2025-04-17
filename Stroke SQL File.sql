create database student1;
use student1;
create table stu (id int primary key , name varchar(10) ) ;
insert stu value (4 ,"Sarthak"),(3,"Mohti");
select * from stu;
create table stu2 (stu_id  int primary key , Marks int ) ;
insert into stu2 value (18,56),(25,20),(33,55),(45,89),(5,55);
select * from stu2;
select * from stu s right join stu2 st on s.id  =st.stu_id and s.name like  "M%" and st.marks > 50;
SELECT * FROM ORDERS ;
use masai;
select * from sales;
use masai;
select * from products where product like "%O%";
select * from customers;
#CITY 
select row_number() over(partition by city order by city) as indexing,city ,lag(dateentered) over(partition by city order by city) as previous_date ,
count(city) over(partition by city order by city) as countingOFcity,
 date(dateentered) from customers order by countingOFcity desc ;
 
 # COUNTING OF CUSTOMER BY CITY , STATE , COUNTRY
 with x as (select country ,state, city ,count(customerid) as cntOFcustomer from customers
 group by 1,2,3 order by 1 desc) 
 select * , count(country) over(partition by country) as cntingOF_COUNTRY from x order by country desc;
 
 #COUNTING OF TOTAL NUMBER OF DISTINCT CITY 
 select count(distinct country) as cnt from customers;
 
 
 
 select distinct user_name from user_activiy 
 where active_date >= date_sub(current_date(),interval 7 day) ;
 # column we need user_name , active_date 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 