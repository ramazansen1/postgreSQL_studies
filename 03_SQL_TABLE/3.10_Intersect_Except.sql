/*
	SEÇİLEN VERİLERİN HER İKİ SORGUDA DA AYNI OLMASI LAZIM. VERİ TİPLERİNİN EŞLEŞMESİ İÇİN.
	
	--? Intersect => iki farklı sorgunun kesişimlerini buluruz.
	
	
		(SELECT * FROM author
		ORDER BY birtday
		LIMIT 10)
		
		INTERSECT
		
		(SELECT * FROM author
		ORDER BY last_name 
		LIMIT 10
		);
	
	--? Except => birinci sorguda olan ancak ikinci sorguda olmayan verileri sorgularız.
	
		(SELECT * FROM author
		ORDER BY birtday
		LIMIT 10)
		
		EXCEPT
		
		(SELECT * FROM author
		ORDER BY last_name 
		LIMIT 10
);

*/

