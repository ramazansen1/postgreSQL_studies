/*
	- LIKE ve ILIKE
	
	- LIKE için '~~' işareti kullanabiliriz.
	- ILIKE için '~~*' işareti kullanabiliriz.
	- NOT ILIKE '!~~*' işareti kullanabiliriz.
% -  ya herhangi bir karakter gelmeyecek yada yada yanına gelecek karakterleri de kapsayacak.
*/

/* SELECT * from customer
   WHERE first_name LIKE 'M%;' -- baş harfi M ile başlayanlar.
*/   
  
/*
SELECT * from customer
WHERE first_name LIKE 'M%y'; -- baş harfi M ile başlayacak ve son harfi y ile bitecekler olan listelenir.
*/

/*
SELECT * from customer
WHERE first_name LIKE '%y'; -- son harfi y ile biten kullanıcılar listelenir.
*/

/*
SELECT * from customer
WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';
*/

/*
 LIKE case sensitive olarak çalışır. Bunu manupule etmek için ILIKE kelimesini kullanırız.
 NOT anahtar kelimesi ile de kullanabiliriz.
*/

/*
SELECT * from customer
WHERE first_name ILIKE 'a%' AND last_name NOT ILIKE '%S'
*/

/*
	- bir karakter için yer tutucu.
	- aşağıdaki örnekteki gibi kullanabilriiz.
	- underscore tek bir karakteri bize verir. aşagıda ki örnekte 'J_' yapmış olsaydık 'J'nin yanına sadece bir harf getirecekti.
*/

/*
SELECT * from customer
WHERE first_name LIKE 'J_an';

SELECT * from customer
WHERE first_name ILIKE 'J_an';

SELECT * from customer
WHERE first_name ILIKE 'J_'; -- Ja, Jo, Jx vs.
*/

/*
SELECT * from actor
WHERE first_name ~~ 'P%';

SELECT * from actor
WHERE first_name ~~* 'a%' AND last_name !~~* '%m'
*/