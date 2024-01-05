/*
	- SELECT DISTINCT = bir sütünde benzersiz farklı ifadeleri görmek için kullanırız.
	yani aşağıda ki örnekte birbirinden farklı kaç adet veri bulundurduğunu görürüz. Yani birbirini tekrar eden
	verileri görmek istemediğimizde kullanırız.
	
	SELECT DISTINCT rental_rate FROM film;
	
	SELECT DISTINCT replacement_cost FROM film;
	
	SELECT DISTINCT rental_rate,replacement_cost FROM film;
*/

/*
	SELECT COUNT = şartımızı sağlayan veri miktarını döner. coğunlukla sayıyı aldıgımızda COUNT(*) kullanırız.
	
	SELECT COUNT(*) FROM actor;
	
	SELECT COUNT(*) FROM actor
	WHERE first_name = 'Penelope';
	
	SELECT COUNT(*) FROM actor
	WHERE first_name ~~ 'A%';
	
	SELECT COUNT(first_name) FROM actor
	WHERE first_name ~~* 'A%a'

*/

-- SELECT DISTINCT first_name FROM actor; -- bir birbirinden farklı isimleri gösterdik.

-- SELECT COUNT(DISTINCT first_name) FROM actor; -- bir birinden farklı olarak kaç tane ismin kontrolu.

-- SELECT COUNT(DISTINCT length) FROM film; -- bir birinden farklı kaç tane uzunlukta film olduğunu listeleme.
