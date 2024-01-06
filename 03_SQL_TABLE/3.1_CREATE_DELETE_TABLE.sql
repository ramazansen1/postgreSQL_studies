/*
	--? TABLO OLUŞTURMAK
	
	1- önce CREATE TABLE ve tablo ismi
	2- parantez içinde kullanacagımız isimleri yazarız.
		- Sütün ismi
		- Data type ilgili sutuna koymak istediğimiz veri tipini belirtir.
		- constraint yerleştireceğimiz verinin özelliklerini belirtizi (kısıtlama)
	
	CREATE TABLE <table_name>(
	<column_name> <data_type> <constraint>,
	...
	<column_name> <data_type> <constraint>;
	)
	
	--? TABLOYA VERİ EKLEME
	
	INSERT INTO author(id, first_name, last_name, email,birtday) 
	-- NOT=> id'yi SERIAL olarak belirlediğimiz için yazmak zorunda değiliz.
			 parantez içersine karmaşık olarak da yazabilirdik.
	VALUES
		('ahmet', 'deneme', 'ahmet@gmail.com', '1994-07-05') 
		....
		-- NOT=> birtday'i date objesi olarak verdiğimiz için yukarıda ki sıralamaya göre yazarız.
		
	--? ŞABLON OLARAK AUTHOR TABLOSUNU KULLANMAK İSTERSEK
	
	CREATE TABLE author2 (LIKE author);
	
	--? TABLO İÇERİSİNDEN TABLO KOPYALAMAK
	
	INSERT TO author2
	SELECT * FROM author
	WHERE first_name = 'Orhan';
	
	--? AUTHOR TABLOSUNU TAMAMEN KOPYALAMAK İSTERSEK
		- Genelde tablonun yedeğini oluştururken yaparız.
		
	CREATE TABLE author3 AS
	SELECT * FROM author;
	
	--? TABLO SİLME
	
	- silmek istediğimiz tablonun olmadıgını düşünelim.
	
	DROP TABLE author4; -- bu şekilde yazarsak hata mesajı alırız.
	
	DROP TABLE IF EXISTS author4; -- bu şekilde yazarsak hata mesajı almayız.
*/

-- ÖRNEKLER

/*
	--? TABLO OLUŞTURMA
	
CREATE TABLE author (
	id SERIAL PRIMARY KEY, -- SERIAL KULLANMAMIZIN SEBEBİ OTO OLARAK ARTAN BİR ID. BİZE SAĞLAYACAK
	first_name VARCHAR(50) NOT NULL, -- VARCHAR(50) 50 SATIRA KADAR YAZILABİLİR.
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birtday DATE
);

*/

/*
	--? TABLOYA VERİ EKLEME
INSERT INTO author (first_name, last_name, email, birtday)
VALUES
	('Hariki','Murakami','hariki@gmail.com', '1976-11-04'),
	('Orhan','Pamuk','orhan@gmail.com', '1946-10-05'),
	('Halide Edip','Adıvar','hea@gmail.com', '1976-09-01'),
	('Test','Deneme','testdeneme@gmail.com', '2024-01-06'),
	('Merhaba','SQL','sql@gmail.com', '1946-01-07');
*/	

----? Yeni tablo oluşturma

-- CREATE TABLE author2 (LIKE author);

/*
----? Tablodan belirli bir veriyi kopyalama

INSERT INTO author2
SELECT * FROM author
WHERE first_name = 'Orhan';

*/

/*
----? Oluşturmuş tablonun aynısını kopyalama

CREATE TABLE author3 AS 
SELECT * FROM author;

*/

/*
----? Tablodan veri silme

DROP TABLE author4; ERROR: table "author4" does not exists
DROP TABLE IF EXISTS author4; NOTICE: table "author4" does not exists, skipping DROP TABLE

--? oluşturulmuş tabloyu silme

DROP TABLE author3;
DROP TABLE IF EXISTS author2;
*/

/*
	--? TABLODAKİ VERİLERİ GÜNCELLEMEK VE SİLMEK

*/


