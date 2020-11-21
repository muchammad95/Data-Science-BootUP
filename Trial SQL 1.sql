/* I am a comment in SQL
It's still comment */
#it's also comment
create database november;
#select the database to be used -> ALWAYS USE THIS !!!
use november;

##############################################################################
#TABLE MANIPULATION
##############################################################################
CREATE TABLE student (
    id NUMERIC PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    age NUMERIC NOT NULL,
    email_id VARCHAR(50) NOT NULL
);
#coba ALTER -> BISA BUAT NAMAH COLUMN ATAU MODIFY COLUMN
alter table student add city varchar(20) not null;
alter table student modify city varchar(30) not null;
#lihat deskripsi tabel
desc student;
#ngilangin tabel
alter table student drop email_id; 
desc student;
alter table student modify id int not null auto_increment; #JANGAN TULIS PRIMARY KEY

##############################################################################
#DATA MANIPULATION
##############################################################################
insert into student (name,age,city) values ("Much",20,"Jakarta");
insert into student (name,age,city) values ("Ahmad",25,"Jakarta");
insert into student (name,age,city) values ("Galih",35,"Papua"), ("Tina",15,"Aceh"), ("Harto",29,"Tapanuli");
select * from student;
update student set age = 27, city = 'Ambon' where id = 5;
select * from student;
delete from student where id = 4;
select * from student;

select * from student limit 2;
select * from student where city = 'Ambon' and age < 30;
select name, age from student where city != 'Ambon';
select name, age from student where city != 'Ambon' order by age,name desc;
