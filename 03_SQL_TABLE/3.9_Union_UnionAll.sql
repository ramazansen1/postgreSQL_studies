/*
	--? UNION => birden daha fazla select sorguları sonuclarını tek bir
				sonuc kumesınden gormemızı saglar.
				
				** UNION operatörü kullanırken her iki tablodan da aynı sayıda sütün seçilmeli
				** UNION operatörü kullanırken sütünların veri tiplerinide birbiriyle uyumlu olmalıdır.
				** UNION da sonuçları tek bir kere görebiliriz.
				** UNION ALL eklersek tüm sonuçları görürüz.

	(SELECT * FROM author
	ORDER BY birtday
	LIMIT 5)
	UNION -- BU ŞEKİLDE YAZARSAK KESİŞİM OLURSA ONU GÖSTERMEZ
	(SELECT * FROM author
	ORDER BY last_name 
	LIMIT 5
	);
	
	(SELECT * FROM author
	ORDER BY birtday
	LIMIT 5)
	UNION ALL -- KESİSİMLERİDE GÖRMEK İSTERSEK
	(SELECT * FROM author
	ORDER BY last_name 
	LIMIT 5);
*/

-- farklı tablolar ile de birleştirme yapabiliriz.



(SELECT id, first_name FROM author)
UNION
(SELECT id, title FROM car);

