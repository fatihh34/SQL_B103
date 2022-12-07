--group by
-- GROUP BY
CREATE TABLE personel
(
id int,
isim varchar(50),  sehir varchar(50),  maas int,  
sirket varchar(20)
);
INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel VALUES(456789012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');
select* from personel
--isme göre toplam maaşları bul
select isim, sum(maas) as toplam_maas from personel group by isim;
--personel tablosundaki isimleri grupla
select isim from personel group by isim;
--sehre göre personel sayısı
select sehir, count(isim) as calisan_sayisi 
from personel group by sehir;
--sirketlere göre maası 5000 den fazla olan personel sayıs
select sirket,count(*) as calisan_sayisi from personel
where maas>5000 group by sirket; 

--HAVİNG KULLANIMI
--her şirketin min maaslarını eger 4000 den buyukse göster
select sirket, min(maas) as en_dusuk_maas 
from personel group by sirket
having min(maas)>4000; 

--aynı isimdeki kişilerin aldıgı toplam gelir 10000
--liradan fazla ise ismi ve toplam maası gösteren sorgu yaz
select isim, (sum)

--maasi 4000 den çok olan isci isimlerini ve
--5000 liradan fazla maas alınan sehirleri gösteren sorgu

select sehir,maas from personel where maas>5000 union
select isim,maas from personel where maas>4000

--mehmet ozturkun aldıgı maaşlar ve istanbuldaki personelin
--maaslarını bir tabloda gösteren sorgu
select isim,maas from personel where isim='Mehmet Ozturk'
union
select sehir,maas from personel where sehir='Istanbul'
order by maas; --order i ben ekledim sonradan. sıralama yapsın diye

drop table if exists personel

CREATE TABLE personel
(
id int,
isim varchar(50),  
sehir varchar(50), 
maas int,  
sirket varchar(20)
);
INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda');  
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota');  
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');  
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford');  
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');  
INSERT INTO personel VALUES(456715012, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

select * from personel

CREATE TABLE personel_bilgi  (
id int,
tel char(10) UNIQUE ,  
cocuk_sayisi int
);
INSERT INTO personel_bilgi VALUES(123456789, '5302345678', 5);  
INSERT INTO personel_bilgi VALUES(234567890, '5422345678', 4);
INSERT INTO personel_bilgi VALUES(345678901, '5354561245', 3);
INSERT INTO personel_bilgi VALUES(456789012, '5411452659', 3);
INSERT INTO personel_bilgi VALUES(567890123, '5551253698', 2);
INSERT INTO personel_bilgi VALUES(456789012, '5524578574', 2);
INSERT INTO personel_bilgi VALUES(123456710, '5537488585', 1);

select * from personel_bilgi

--id si 123456789 olan personelin personel tablosundan
--sehir ve maasını. /personel bilgi tablosundan
-- tel ve cocuk sayısını yaz
select sehir as sehir_ve_tel,maas from personel where id=123456789
union
select tel,cocuk_sayisi  from personel_bilgi where id=123456789

--personel tablosundan maasi 5000'den az olan tüm isim ve maasları
select isim,maas from personel where maas<5000
union all
select isim,maas from personel where maas<5000;

--personel tablosundan istanbul veya ankarada çalışanların
--idlerini yazdır
select id from personel where sehir in('Istanbul','Ankara')
intersect
select id from personel_bilgi where cocuk_sayisi in (2,3);

--honda,ford ve tofaşta çalışan ortak isimde personel
select isim from personel where sirket='Honda'
intersect
select isim from personel where sirket='Ford'
intersect
select isim from personel where sirket='Tofas';

--5000den az maas alıp honda da çalışmayanları yaz
select isim,sirket from personel where maas<5000
except
select isim,sirket from personel where sirket='Honda'