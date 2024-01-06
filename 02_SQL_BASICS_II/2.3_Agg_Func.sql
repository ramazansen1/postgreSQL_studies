/*
	-Aggregate Fonksiyonlarlar sonucunda tek bir değer alırız.
	
	AVG => ortalama bulmamızı sağlar.
		- SELECT AVG(length) FROM film;
		- SELECT ROUND(AVG(length),3) FROM film; -- ROUND((veri),yuvarlama)
		
	SUM => toplamını bulmamızı sağlar.
		- SELECT SUM(rental_rate) FROM film;
	
	MAX => max değeri bulmamızı sağlar.
		- SELECT MAX(replacement_cost) FROM film;
		
	MIN => min değeri bulmamızı sağlar.
		- SELECT MIN(replacement_cost) FROM film;

	-- birden fazla sutün üzerine aggregate fonk. uygulanması
		- SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;

*/

/*
-- rental_rate 0.99 olan en uzun film
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

SELECT MAX(length) FROM film
WHERE rental_rate IN (0.99, 2.99);
*/





