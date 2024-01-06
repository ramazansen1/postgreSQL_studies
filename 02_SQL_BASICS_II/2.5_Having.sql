/*
	- HAVING => gruplanmış verilere koşul ekleyebilmemizi sağlar.
	
	SELECT rental_rate, COUNT(*) FROM film
	GROUP BY rental_rate
	HAVING COUNT(*) > 325; -- film sayısının 325 den yüksek olanları listeledik.

*/

/*
SELECT rental_rate, COUNT(*) FROM film
WHERE rental_rate != 2.99
GROUP BY rental_rate;
*/

/* 
SELECT staff_id, COUNT(*) FROM payment
GROUP BY staff_id
HAVING COUNT(*) > 7300;
*/

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC
OFFSET 5
LIMIT 5;
