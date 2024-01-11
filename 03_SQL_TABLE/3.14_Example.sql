/*

	-- film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

	SELECT COUNT(*) FROM film
	WHERE length > (
	SELECT AVG(length) FROM film
	);


	
	-- film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
	
	SELECT COUNT(*) FROM film
	WHERE rental_rate  = (
		SELECT MAX(rental_rate) FROM film
	);
	
	-- film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
	
		
	SELECT title FROM film
	WHERE rental_rate = (
		SELECT MIN(rental_rate) FROM film
	) AND 
	replacement = (
		SELECt MIN(replacement_cost) FROM fim
	);
	
	
	-- payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

	SELECT SUM(amount), first_name, last_name FROM payment
	JOIN customer ON customer.customer_id = payment.customer_id
	GROUP BY payment.customer_id, first_name, last_name
	ORDER BY SUM(amount) DESC;
	
	SELECT
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    COUNT(payment.payment_id) AS total_purchases
	FROM
		customer
	INNER JOIN
		payment ON customer.customer_id = payment.customer_id
	GROUP BY
		customer.customer_id, customer.first_name, customer.last_name
	ORDER BY
		total_purchases DESC;
	

*/






