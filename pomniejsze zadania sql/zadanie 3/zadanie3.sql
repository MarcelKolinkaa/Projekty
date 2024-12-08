create table salesman (salesman_id number primary key , name varchar2(100char), city varchar2(100char) , commission number );




insert into salesman (salesman_id,name,city,commission) values (5001, 'James Hoog', 'New York',0.15);
insert into salesman (salesman_id,name,city,commission) values (5002, 'Nail Knite', 'Paris',0.13);
insert into salesman (salesman_id,name,city,commission) values (5005, 'Pit Alex', 'London',0.11);
insert into salesman (salesman_id,name,city,commission) values (5006, 'Mc Lyon', 'Paris', 0.14);
insert into salesman (salesman_id,name,city,commission) values (5007, 'Paul Adam', 'Rome',0.13);
insert into salesman (salesman_id,name,city,commission) values (5003, 'Lausen hen', 'San Jose',0.12);


drop table salesman;











create table customer_2 (customer_id number primary key , cust_name varchar2(100char), city varchar2(100char),grade number ,salesman_id number not null );




insert into customer_2 (customer_id,cust_name,city, grade,salesman_id) values (3002, 'Nick Rimando', 'New York',100,5100);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3007, 'Brad Davis', 'New York',200,5001);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3005, 'Graham Zusi', 'California',200,5002);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3008, 'Julian Green', 'London',300,5002);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3004, 'Fabian Johnson', 'Paris',300,5006);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3009, 'Geoff Cameron', 'Berlin',100,5003);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3003, 'Jozy Altidor', 'Moscow',200,5007);
insert into customer_2 (customer_id,cust_name,city,grade,salesman_id) values (3001, 'Brad Guzan', 'London',NULL,5005);



drop table customer_2;







CREATE TABLE orders_2 (
    ord_no     NUMBER NOT NULL PRIMARY KEY,
    purch_amt  NUMBER NOT NULL,
    ord_date   DATE,
    customer_id number not null,
    salesman_id number not null,
    Constraint customer_id_fk2 foreign key (customer_id)
    REFERENCES customer_2(customer_id),
    constraint salesman_id_fk foreign key (salesman_id)
    references salesman(salesman_id)
);



insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70001,150.5,to_date('2012.10.05','rrrr.mm.dd'),3005,5002);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70009,270.65,to_date('2012.09.10','rrrr.mm.dd'),3001,5005);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70002,65.26,to_date('2012.10.05','rrrr.mm.dd'),3002,5001);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70004,110.5,to_date('2012.08.17','rrrr.mm.dd'),3009,5003);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70007,948.5,to_date('2012.09.10','rrrr.mm.dd'),3005,5002);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70005,2400.6,to_date('2012.07.27','rrrr.mm.dd'),3007,5001);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70008,5760,to_date('2012.09.10','rrrr.mm.dd'),3002,5001);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70010,1983.43,to_date('2012.10.10','rrrr.mm.dd'),3004,5006);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70003,2480.4,to_date('2012.10.10','rrrr.mm.dd'),3009,5003);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70012,250.45,to_date('2012.06.27','rrrr.mm.dd'),3008,5002);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70011,75.29,to_date('2012.08.17','rrrr.mm.dd'),3003,5007);
insert into orders_2 (ord_no,purch_amt,ord_date,customer_id,salesman_id) values (70013,3045.6,to_date('2012.04.25','rrrr.mm.dd'),3002,5001);




drop table orders_2;







B)    
    SELECT customer_2.cust_name,
salesman.name, salesman.city
FROM salesman, customer_2
WHERE salesman.city = customer_2.city;
    


C)    
    SELECT customer_2.cust_name,
salesman.name,salesman.salesman_id, customer_2.salesman_id
FROM salesman, customer_2
WHERE salesman.salesman_id = customer_2.salesman_id;
    
    albo  bez idkow


    
    
    SELECT customer_2.cust_name,
salesman.name
FROM salesman, customer_2
WHERE salesman.salesman_id = customer_2.salesman_id;
    
    
    
D)  SELECT customer_2.cust_name,
salesman.name
FROM salesman, customer_2
WHERE salesman.salesman_id = customer_2.salesman_id and salesman.city != customer_2.city ;
     

samo pokazanie salesmenow customera ale ktorzy nie sa z jednego miasta


SELECT ord_no, cust_name, orders_2.customer_id, orders_2.salesman_id
FROM salesman, customer_2, orders_2
WHERE customer_2.city != salesman.city
AND orders_2.customer_id = customer_2.customer_id
AND orders_2.salesman_id = salesman.salesman_id;
 

rozwiazane w orderze





