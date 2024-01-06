/*
	ALIAS(AS) = AS anahtar kelimesi sayesinde sorgular sonucu oluşturduğumuz sanal tablo ve sütunlara 
			geçici isimler verebiliriz. 
			
			- SELECT first_name AS isim, last_name AS soyisim FROM actor;
			
			** AS anahtar kelimesini kullanmak zorunda değiliz aşağıda ki gibi 
			   yazdıgımız da da aynı sonucu alırız.
			   
			   - SELECT first_name isim, last_name soyisim FROM actor;
			   
		    ** bir den daha fazla kelime grubu kullanmak istersen çift tırnak içeresine alarak kullanmalıyız.
			
			   - SELECT first_name AS "isim test", last_name AS "soyisim test" FROM actor;
*/

-- SELECT COUNT(*) AS "aktor sayısı" FROM actor;

-- CONCAT ile birleştirme işlemi yaptık.

SELECT CONCAT(first_name, ' ', last_name) AS "İsim ve Soy İsim" FROM actor;