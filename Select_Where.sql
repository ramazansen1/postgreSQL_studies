/* SELECT column1 FROM table1 => select sorgusu temel yapısı */


-- SELECT * FROM film;
/*  - select istediğimiz verileri görmemizi sağlar
	- sql komutları büyük ve küçük harflede çalışabilir.
	- ama büyük harflerle yazmak okunabilirliği arttırır.
	- * kullanarak tüm verileri çağırmamızı sağlar.
	- DISTINCT aynı verileri çıkarıp farklı verileri göstermemizi sağlar.
.*/

-- SELECT first_name ,last_name FROM actor;

-- WHERE ve Karşılaştırma Operatörleri

-- tüm filmleri değil sadece replacement_cost = 14.99 eşit olanları getir.
 -- SELECT title, length FROM film 
 
-- sql boşlukları yok sayar ve select ile tabloyu seçtikten sonra
-- koşullar gibi sql cümleleri yazılır..

 -- WHERE replacement_cost = 14.99;
 
 /* SELECT * FROM actor
 WHERE first_name = 'Penelope'; */
 
 -- string bir ifadeyi almak için tek tırnak kullanılır.


/* SELECT * FROM film
-- WHERE length > 90;
-- WHERE rental_rate <= 1;
WHERE rental_rate <> 0.99;
*/

/* 
-- Karşılaştırma Operatörleri
<
>
<=
>=
=
<> = not equal
!= = not equal

*/

-- MANTIKSAL OPERATORLER

/*
 -- AND => kendinden önce ve sonra da TRUE ister.
 -- OR => 
 -- NOT => olmayanları döndür
*/

-- iki verinin doğru olması
/* SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroe' */

-- bir verinin yanlış olması
/* SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' AND last_name = 'Monroxe' */

-- OR

/* SELECT first_name, last_name FROM actor
WHERE first_name = 'Penelope' OR first_name = 'bob' */

-- tırnak içine yazdıgımız veriler özel veriler olduğu için 
-- büyük harf ve küçük harf dikkat edilmeli.

-- bana rental_rate 4.99 olan ve uzunluğu 90 üzerinde olanları getir.

/* 
SELECT * FROM film
WHERE rental_rate = 4.99 AND length >90;
*/

/*
SELECT * FROM film
WHERE rental_rate = 4.99 AND rental_duration = 3 AND replacement_cost > 20;
*/

/* 
SELECT * FROM film
WHERE replacement_cost < 12 OR replacement_cost > 25;
*/

/*
kiralama ücreti 4.99 olmayanları bana döndür.
SELECT * FROM film
WHERE NOT rental_rate = 4.99;
*/

-- bu iki koşulu sağlayan filmleri alma
/* 
SELECT * FROM film
WHERE NOT (rental_rate = 4.99 AND replacement_cost = 20.99);
*/

-- iki not yazdığımızda birbirini tümleme yaptırma
/* SELECT * FROM film
WHERE NOT (NOT (rental_rate = 4.99 AND replacement_cost = 20.99)); */


-- rental_rate 4.99 olanları getirme repl_cost 20.99 getir.
/* 
SELECT * FROM film
WHERE NOT (rental_rate = 4.99) AND replacement_cost = 20.99;
*/

SELECT * FROM actor
/* 
-- bu ifade false tamamen false döner. çünkü AND öncesini ve sonrasını TRUE ister.
WHERE first_name = 'Penelope' AND last_name = 'Monroe' AND last_name = 'Swanx' 
*/

/*
-- bu ifade de ise OR kısmına kadar false döner ama OR kısmına geldikten sonra yeni bir query başlıyormuş 
-- gibi düşünülebilir ve böylelikle cevap alınır.
WHERE first_name = 'Penelope' AND last_name = 'Monroe' AND last_name = 'Swanx' OR first_name = 'Joe';
*/


