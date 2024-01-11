/*
	--? Subquery and Join
	
	
	Film uzunluğu en fazla olan filmlerin isimlerini, uzunluğunu, actor isim ve soy isimleri
	ile birlikte sorgulayınız

*/

SELECT actor.first_name, actor.last_name, film.title, film.length 
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id -- actor tablosu ile film_actor tablosunu birbirine bağladık
JOIN film ON film.film_id = film_actor.film_id -- yukarıda yapmış olduğumuz birleiştirme sayesinde film_actor ilede film tablosunu bağladık
WHERE film.length = 
(
	SELECT MAX(length) FROM film
);