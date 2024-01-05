/* 
	- country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri 
	  ile başlayıp 'a' karakteri ile sonlananları sıralayınız.

	  SELECT * from country
	  WHERE country ~~* 'A%a' 
*/

/*
	- country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve 
	  sonu 'n' karakteri ile sonlananları sıralayınız.
	  
	  SELECT * from country
	  WHERE country ILIKE '_____%n';	  
*/

/*
	- film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da 
	  küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.

	  SELECT * from film
	  WHERE title ~~* '%t%t%t%t';
*/

/* 
	- film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve 
	  uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.


	 SELECT * from film
	 WHERE title ~~ 'C%' AND length > 90 AND rental_rate = 2.99;
*/



