/*
	--? LEFT JOIN
		** Tablo birleştirme yaparken solda kalanı yani tablo 1 deki tüm verileri alıcaz
		   sonra car tablosu ile de yazar tablosu birleşicez eger arabası olmayan yazarlar varsa
		   onlarda null olarak verilecek.
		   
		   SELECT author.first_name, author.last_name, car.title FROM author
		   LEFT JOIN car ON car.author_id = author.id
		   WHERE car.id IS NOT  NULL -- eğer null değerleri görmek istemezsek.
		   ORDER BY car.title;

		*** Eğer constraints yapılarını kaldırmak istersek gerkeli sql sorgusu
		
		ALTER TABLE car
		DROP CONSTRAINTS car_author_id_fkey
		
		gibi sorgular yazarak silebiliriz.

		---? RIGHT JOIN 
			*** LEFT JOIN tersine tablo 2 de ki verilerin tamamına önceliği verir.
				sonrasında ise tablo2 deki veriler ile eşleşen tablo1 deki verileri alıyor.
				Eşleşmeyen veriler içinde Null ifadesi kullanıyor.
				
				*** RIGT JOIN İÇİN RIGHT OUTER JOIN DE KULLANILIR İKİSİDE AYNIDIR.
				
				SELECT first_name, last_name, title FROM car
				RIGHT JOIN author ON car.author_id = author.id
				--- WHERE car.id IS NOT  NULL -- eğer null değerleri görmek istemezsek.
				ORDER BY car.title;
		
		---? FULL JOIN
			*** TABLO1 ve TABLO2 deki tüm değerler alınır. INNER JOIN gibi simetrik bir yapıya sahiptir.
			
		
*/


--SELECT first_name, last_name, title FROM car
--FULL JOIN author ON car.author_id = author.id;


-- tablolarda ortak olmayan verileri görüntüleme
SELECT * FROM author
FULL JOIN car ON car.author_id = author.id
WHERE (car.id IS NULL OR author.id IS NULL)
