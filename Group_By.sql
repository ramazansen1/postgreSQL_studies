/*
	- GROUP BY = bazı durumlarda aynı sonuçları veri kümesinin içerisinde bulunan farklı gruplarda da bulmak 
				 bulmak için kullanırız. Grouplamak istediğimiz sütunu yazmamız gerekir, aksi halde hata alırız.
				 
				 SELECT rental_rate, COUNT(*) FROM film
				 GROUP BY rental_rate;
				 
				 -- Her bir ratinge karşılık gelen film sayısını bulma
					SELECT rating,COUNT(*) FROM film
					GROUP BY rating;
					
				-- her replacement_cost' a karşılık gelen en kısa filmleri sıralama 
					SELECT replacement_cost, MIN(length) FROM film
					GROUP BY replacement_cost;


*/

-- bu iki sutuna göre gruplama yaptıgımızda rental_rate 3 değeri ve replacement_cost 21 değeri olduğu 
-- için 63 tane farklı case sıralıyor. 
-- SELECT replacement_cost, rental_rate, MIN(length) FROM film
-- GROUP BY replacement_cost, rental_rate;

-- SELECT COUNT(DISTINCT replacement_cost) FROM film;

SELECT replacement_cost, rental_rate, MIN(length) FROM film
GROUP BY replacement_cost, rental_rate
ORDER BY replacement_cost, rental_rate DESC
LIMIT 10;

