/*
	- test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), 
	  birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
	- Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
	- Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
	- Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
*/

/* 
	1- CREATE TABLE

CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	birtday DATE             
);

	2- ADD DATA
	
insert into employee (name, email, birtday) values ('solunney0', 'bkingsnod0@independent.co.uk', '2001-05-18');
insert into employee (name, email, birtday) values ('ctouzey1', 'nboulde1@reuters.com', '2008-11-28');
.....;
	
	3- UPDATE DATA
	
UPDATE employee
SET name = 'test',
	email = 'test@test1.com',
	birtday = '1900-11-23'
WHERE id = 3;

UPDATE employee
SET email = 'boulde@gamil.com'
WHERE name = 'ctouzey1';

UPDATE employee
SET birtday = '2024-01-06'
WHERE id = 42
RETURNING * ;

	4- DELETE DATA
	
DELETE FROM employee
WHERE id = 10
RETURNING * ;

DELETE FROM employee
WHERE name ILIKE 'n%'
RETURNING * ;


DELETE FROM employee
WHERE id < 10
RETURNING *;

DELETE FROM employee
WHERE email = 'pvaheya@woothemes.com' AND birtday = '2002-07-07'
RETURNING * ;

*/






