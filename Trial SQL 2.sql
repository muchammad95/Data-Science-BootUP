create database Regiment;
use Regiment;
CREATE TABLE regiment (
    regiment VARCHAR(50) not null,
    company VARCHAR(50) not null,
    name VARCHAR(30) not null,
    pretestscore NUMERIC not null,
    posttest NUMERIC not null
);
alter table regiment add id int primary key auto_increment not null;
desc regiment;
insert into regiment(regiment, company, name, pretestscore, posttest) 
value ('Nighthawks', '1st', 'Miller', 4, 25), ('Nighthawks', '1st', 'Jacobson', 44, 49), ('Nighthawks', '2nd', 'Ali', 31, 57),
('Nighthawks', '2nd', 'Milner', 2, 62), ('Dragoons', '1st', 'Cooze', 3, 70), ('Dragoons', '1st', 'Jacon', 3, 70),
('Dragoons', '2nd', 'Ryaner', 24, 94),('Dragoons', '2nd', 'Sone', 31, 57), ('Scouts', '1st', 'Sloan', 2, 62),
('Scouts', '1st', 'Piger', 3, 70), ('Scouts', '2nd', 'Riani', 2, 62), ('Scouts', '2nd', 'Alii', 3, 70);
select * from regiment where regiment = 'Dragoons';
select * from regiment where posttest > 50;
drop table regiment;

##########################################################################################

CREATE TABLE employee (
    Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(40) NOT NULL,
    Age INT NOT NULL,
    City VARCHAR(40) NOT NULL,
    Salary NUMERIC(30) NOT NULL
);

insert into employee values(1, "John",32,"London",12455),(2,"Max",45,"Jakarta",145633),(3,"Cristy",25,"London",254683),(4,"Jimmy",29,"Jakarta",648256),
(5,"Kelly",24,"Berlin",135477),(6,"Georgia",39,"Nairobi",689652),(7,"Johny",45,"Tokyo",132456),(8,"Marco",38,"Delhi",468452),(9,"Mary",36,"Tokyo",135465);

select count(*) from employee;
select sum(salary) from employee;
select avg(salary) from employee;
select min(salary) from employee;
select max(salary) from employee;
select City, avg(salary) from employee group by city;
select City, avg(salary) from employee group by city order by avg(salary) desc;

##########################################################################################
CREATE TABLE customers (
    Id INT NOT NULL,
    Name VARCHAR(30) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(200),
    Salary NUMERIC(30),
    PRIMARY KEY (Id)
);

CREATE TABLE orders (
    Oid INT NOT NULL,
    Date DATETIME NOT NULL,
    Customerid INT NOT NULL,
    Amount NUMERIC(20),
    PRIMARY KEY (Oid)
);

insert into customers values(1, "John",32, "New York", 12455);
insert into customers values(2, "Robert",25, "London", 48755);
insert into customers values(3, "Juan",28, "Paris", 13525);
insert into customers values(4, "Cello",18, "Jakarta", 78925);
insert into customers values(5, "Oscar",39, "Singapore", 13655);
insert into customers values(6, "Anshu",42, "Delhi", 12455);
insert into customers values(7, "Rahul",21, "Kualalumpur", 78555);

insert into orders values(105, "20191012",3,2000);
insert into orders values(100, "20190202",3,5400);
insert into orders values(106, "20191121",2,3210);
insert into orders values(112, "20191226",6,7840);
insert into orders values(110, "20190312",1,1000);
insert into orders values(109, "20190521",4,6300);
insert into orders values(120, "20190521",9,8700);

select * from orders;
select * from customers;

select id, name, age, date, amount from customers inner join orders on customers.id = orders.customerid;
select id, name, age, date, amount from customers left join orders on customers.id = orders.customerid;
select id, name, age, date, amount from customers right join orders on customers.id = orders.customerid;
select id, name, age, date, amount from customers left join orders on customers.id = orders.customerid
union
select id, name, age, date, amount from customers right join orders on customers.id = orders.customerid;
