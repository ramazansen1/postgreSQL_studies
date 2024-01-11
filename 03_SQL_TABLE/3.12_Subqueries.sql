/*
	--? Alt Sorgular (Subqueries)

		- statik veriler olamadan spesifik olarak bir veriye göre sıralama yapabiliriz.
		- bir sorguda birden fazla alt sorgular yazabiliriz.
*/

--SELECT * FROM film
--WHERE rental_rate > 2.99; ** burada statik olarak yazdıgımız 2.99 verisi aşağıdaki sorguya
							--   karşılık gelmekte


--SELECT rental_rate FROM film
--WHERE title = 'Alabama Devil'

-- Alt Sorgu ile ilk yazdıgımız sorguyu statik veri kullanmadan gerçekleştirebilriiz.

/*

SELECT * FROM film
WHERE rental_rate > 
(
SELECT rental_rate FROM film
WHERE title = 'Alabama Devil'
);

*/

SELECT title, length, (SELECT MAX(length) FROM film), ((SELECT MAX(length) FROM film) - length) AS differ
FROM film
WHERE length > 
(
	SELECT length FROM film
	WHERE title = 'Alabama Devil'
);