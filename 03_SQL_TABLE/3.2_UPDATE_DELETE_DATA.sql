/*
	--? TABLODAKİ VERİLERİ GÜNCELLEMEK VE SİLMEK
	
	- Google üzerinde generate dummy data sql yazarsak 'Mockaroo' gibi servislerden yararlanarak
	  data oluşturabiliriz.
	  
	  UPDATE <table_name>
	  
	  SET column1 = value1,
	      column2 = value2,
		  ....
	  WHERE condition;
	  RETURNING *; -- sorgumuzun sonuna 'returning *' anahtar kelimesini yazarsak yaptıgımız değişikliği görürüz.
	
	--? TABLODAKİ VERİLERİ SİLMEK
	
	DELETE FROM <table_name>
	WHERE condition;
	RETURNING * ; -- BURADA DA KULLANABİLİRİZ.
*/

--? EXAMPLES

---? Update

/*

UPDATE author
SET first_name = 'Oğuz',
	last_name = 'Atay',
	email = 'oguz@atay.com'
WHERE id = 4
RETURNING *;

*/

/*

UPDATE author
SET first_name = 'ZZZZ',
	last_Name = 'XXXX'
WHERE first_name ILIKE 'a%'
RETURNING *;

*/

---? Delete

/*

DELETE FROM author
WHERE id = 5;

*/

/*

DELETE FROM author
WHERE id > 51
RETURNING *;    

*/