create database batch59;
-- create database: database olustururuz

-- aciklama yazabilmek icin "--" kullanilir

/*
Java'daki gibi aciklama yapabiliriz 
*/


use batch59; -- birden fazla database var ise "use" komutu ile calistiracagimiz database'i seceriz


-- TABLO OLUSTURMA
create table student
(
id varchar(4), 
name varchar(30),
age int
);

-- VERI GIRISI
insert into student values('1000', 'Ali Can', '35');
insert into student values('1001', 'Ali Veli', '30');
insert into student values('1002', 'Erol Evren', '37');
insert into student values('1003', 'Canan Tan', '29');


select * from student; -- student tablosundaki herseyi getirir. * yerine hangi data'yi girersek onu getirir

select id, name from student; -- id ve name sutununu getirir

drop table student; -- student tablosunu siler






