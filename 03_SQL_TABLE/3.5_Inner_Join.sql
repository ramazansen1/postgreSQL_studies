/*
	--? INNER JOIN(Birleştirme ve bağlama)
		- birden fazla tabloları birleştirmemizi sağlar.
		- simetrik bir yapıya sahiptir.
		- kesişim kümesi alır.
		
		SELECT title, first_name, last_name FROM car // tüm stunları görmek isteseydik * kullanırdık.
		INNER JOIN author ON car.author_id = author.id;
		
		** Foreign key yardımıyla id leri eşit olanları eşleştiriyoruz. 
		
		** JOIN anahtar kelimesi yalnız yazıldıgında default olarak bize INNER gösterir. 
		
		*** istediğimiz verileri ayrı olarak belirtmek istersek.
		
		SELECT car.title, author.first_name, author.last_name FROM car 
		INNER JOIN author ON car.author_id = author.id;

*/

