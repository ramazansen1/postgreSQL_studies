-- 90 dakika ve 120 dakika arasında ki filmleri sıralama
-- MIT WHERE
/*
SELECT  title,length FROM film
WHERE length >= 90 AND length <= 120;
*/

-- BETWEEN ile kullanınımı
/*
SELECT title, length FROM film
WHERE length BETWEEN  90 AND 120;
*/

-- length < 90 OR length > 120
/*
SELECT title, length FROM film
WHERE length NOT BETWEEN 90 AND 120;
*/

/*
SELECT rental_rate, replacement_cost FROM film
WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20);
*/

-- IN belirli aralıkları istediğimizde kullanırız
/* yalnızca uzunlugu 40, 50, 60 dakıkaları görmek istersek

SELECT * FROM film
WHERE length IN (40, 50, 60)
*/

SELECT * FROM film
WHERE NOT (length IN (40,50,60))  AND (rental_rate IN(2.99, 4.99));