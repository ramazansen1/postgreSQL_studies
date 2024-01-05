/*
	LIMIT and OFFSET
	
	LIMIT => Görmek istediğimiz ve sınırlamak istediğimiz verilere sınırlama getiriyoruz.
	
	SELECT * FROM film
	WHERE rental_rate = 4.99
	ORDER BY length
	LIMIT 10;
	
	OFFSET => Belirli miktarda ki verileri geçmek istediğimizde kullanırız.
	
	-- İlk 6 veriyi geçti ve geri kalan 4 veriyi göstermek istersek. 
		SELECT * FROM country
		OFFSET 6
		LIMIT 4;
*/

/*
-- En uzun 5 filmi listeleme
SELECT * FROM film
WHERE replacement_cost = 14.99 AND rental_rate = 0.99
ORDER BY length DESC
LIMIT 5;
*/

/*
-- Last_name göre sıralayıp ilk 2 veriyi geç ardından ilk veriyi listeledik.
SELECT * FROM actor
WHERE first_name = 'Penelope'
ORDER BY last_name
OFFSET 2
LIMIT 1;
*/





