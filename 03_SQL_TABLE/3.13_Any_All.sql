/*

	--? ANY VE ALL
	
	*** ANY => HERHANGİ BİR KOŞUL DOĞRU OLDUGUNDA BİZE DEĞERİ DÖNDÜRÜR.
	
	SELECT first_name, last_name FROM actor
	WHERE actor_id > ANY -- burada ise aşağıda ki film isimlerinin idlerini kontrol edip büyük olan dahil sıralıyor.
	(
		SELECT film_id
		FROM film
		WHERE title = 'African Egg' OR title = 'Affair Prejudice'
	);
	
 	*** ALL =>
	
	SELECT first_name, last_name FROM actor
	WHERE actor_id > ALL -- burada aşağıda ki film isimlerinin idlerini kontrol ederek. En büyük id'den sonrasını gösteriyor.
	(
		SELECT film_id
		FROM film
		WHERE title = 'African Egg' OR title = 'Affair Prejudice'
	);
*/

