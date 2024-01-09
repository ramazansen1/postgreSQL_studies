/*
	--? NOT NULL & ALTER & UNIQUE & CHECK
	


*/

/*
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(50),
	email VARCHAR(100),
	age INTEGER
)
*/

/*
INSERT INTO users (email, age)
	VALUES 
		('tester2@gmail.com', 32);
*/

-- ŞİMDİ USERNAME SUTUMUZU NOT NULL YAPILAMAZ OLARAK İŞARETLEMEK İSTEYELİM
-- BUNUN İÇİN GÜNCELLEME YAPALIM
-- EĞER TABLOMUZUN İÇERİSİNDE NULL BİR VERİ VARSA GÜNCELLEMEDEN ÖNCE BUNU KALDIRMAMIZ GEREKİR.

/*
DELETE FROM users
WHERE username IS NULL
RETURNING *;
*/

-- ŞİMDI GÜNCELLEMEYE DEVAM EDEBİLİRİZ

/*
ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;
*/

-- YENIDEN NULL VERİ EKLEMEYE CALISALIM
-- USERNAME SUTUNUNU NOT NULL İLE GÜNCELLEDİĞİMİZ İÇİN AŞAĞIDA Kİ HATAYI ALIRIZ.
/*
INSERT INTO users (email, age)
	VALUES 
		('tester2@gmail.com', 32);
		
	-- ERROR:  null value in column "username" of relation "users" violates not-null constraint
*/

-- VERI EKLEYELIM
/*
INSERT INTO users (username, email, age)
	VALUES 
		('test2','tester2@gmail.com', 32);
*/ 

-- Eger UNIQUE veriler olmasını istersek
/*
ALTER TABLE users
ADD UNIQUE(email)
*/
-- ARTIK EMAIK SÜTUNU UNIQUE OLACAK VE YENİ VERİLER EKLENİRKEN AYNI VERİLER EKLENMEYECEK.


		
-- CHECK => kısıtlamalar eklemizi sağlar

/*
INSERT INTO users(username,email,age)
VALUES
	('gamer3', 'gamer3@gmail.com', -22)
*/

/*
ALTER TABLE users
ADD CHECK (age > 18); -- 18 yaşundan küçükler kayıt olamamz.
*/

/*
INSERT INTO users (username, email,age)
VALUES
	('gamer3', 'gamer3@gmail.com', 3); -- burada 18 yaşından küçük yaş girdiğimiz için kabul edilmez.
	
*/

/*
INSERT INTO users(username, email, age)
VALUES
	('gamer3', 'gamer3@gmail.com', 19);
	
SELECT * FROM users;
*/

-- BURAYA KADAR VAR OLAN TABLO ÜZERİNDEN YAPTIK PEKİ YENİ BİR TABLO OLUŞTURURKEN?

/*
CREATE TABLE products(
	product_no INTEGER,
	name TEXT,
	price NUMERIC CHECK (price > 0),
	discounted_price NUMERIC CHECK (discounted_price > 0),
	CHECK (price > discounted_price) -- fiyat indirilim yapılmış fiyattan büyük olmalıdır.
)
*/

/*
INSERT INTO products(product_no, name, price,discounted_price)
VALUES
	(1, 'test',12,10);
*/