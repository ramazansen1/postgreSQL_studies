/*
	- ORDERBY = sıralama yapmamızı sağlar.
	ASC => artan bir sıralamayı ifade eder.
	Herhangi bir şey yazmazsak default olarak ASC olarak sıralanır.
	
	SELECT * FROM film
	ORDER BY title ASC;
	
	DESC => azalan bir sıralamayı ifade eder.
	
	SELECT * FROM film
	ORDER BY title DESC;

*/

/*
SELECT title, rental_rate, length FROM film
ORDER BY rental_rate ASC, length DESC; 

rental_rate artan bir şekilde, length azalan bir şekilde sıralama yapma

*/


/*
SELECT title, rental_rate, length FROM film
WHERE title LIKE 'A%'
ORDER BY rental_rate ASC, length DESC; 

	- önce koşulları yazmamız lazım sonra ona göre sıralama yapmalıyız.
*/

SELECT * FROM film
WHERE rating = 'G'
ORDER BY length DESC;
