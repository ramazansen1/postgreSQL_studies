/*
	--? PRIMARY KEY
	
	- PRIMARY KEY bir tabloda bulunan veri sıralarını birbirinden ayırmamızı sağlayan bir kısıtlama (constraint) yapısıdır.
	  O tabloda bulunan veri sıralarına ait bir "benzersiz tanımlayıcıdır".
	  
	  - Benzersiz (Unique) olmalıdır.
	  - NULL değerine sahip olamaz.
	  - Bir tabloda en fazla 1 tane bulunur.
	
	--? FOREIGN KEY
	
	- FOREIGN KEY bir tabloda bulunan herhangi bir sütundaki verilerin genelde başka bir tablo sütununa referans vermesi durumudur, 
	  tablolar arası ilişki kurulmasını sağlar.
	  
	  - Bir tabloda birden fazla sütun FK olarak tanımlanabilir.
	  - Aynı sütunun içerisinde aynı değerler bulunabilir.
*/

/*
CREATE TABLE car (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	color VARCHAR(50) NOT NULL,
	author_id INTEGER REFERENCES author(id) -- AUTOHOR TABLOSUNUN DAKİ İD (PRIMARY KEY) İLE İLİİŞKİ KURMAK
)
*/

/*
	-- CAR tablosuna veri ekleme

insert into car (title, color, author_id) values ('Volkswagen', 'Yellow', 1);
insert into car (title, color, author_id) values ('Mitsubishi', 'Puce', 2);
insert into car (title, color, author_id) values ('Volvo', 'Purple', 3);
insert into car (title, color, author_id) values ('Chevrolet', 'Violet', 4);
insert into car (title, color, author_id) values ('Eagle', 'Red', 6);
insert into car (title, color, author_id) values ('MG', 'Orange', 6);
insert into car (title, color, author_id) values ('Ford', 'Fuscia', 7);
insert into car (title, color, author_id) values ('Dodge', 'Green', 8);
insert into car (title, color, author_id) values ('Subaru', 'Blue', 9);
insert into car (title, color, author_id) values ('GMC', 'Red', 10);
insert into car (title, color, author_id) values ('Hyundai', 'Fuscia', 11);
insert into car (title, color, author_id) values ('Ford', 'Goldenrod', 12);
insert into car (title, color, author_id) values ('Acura', 'Khaki', 13);
insert into car (title, color, author_id) values ('Subaru', 'Aquamarine', 14);
insert into car (title, color, author_id) values ('Isuzu', 'Aquamarine', 15);
*/

-- Car tablosunda yazar id'si 1 e eşit olan veriler.
/*
SELECT * FROM car
WHERE author_id = 1;
*/

-- hem yazar tablosundan hem araba tablosundan verileri görmek istersek.
-- JOIN <birleştirilecek_tablo_adi> ON condition
/*
SELECT * FROM car
JOIN author ON author.id = car.author_id;
*/













