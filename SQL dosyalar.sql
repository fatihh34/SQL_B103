--DATABASE OLUŞTURMA(VERİTABANI)
Create database fatih;

create database ırmak;

--DDL DATA DEFİNİTİON LANG.
-- CREATE - TABLO OLUŞTURMA
CREATE TABLE ogrenciler2
( 
ogrenci_no char(7),
	isim varchar(20),
	soyisim varchar(25),
	not_ort real,--ondalıklı sayılar icin
	kayit_tarih date
);
--VAROLAN TABLODAN YENİ BİR TABLO OLUŞTURMAK
CREATE TABLE ogrenci_notlari
AS--benzer tablodaki başlık v
SELECT isim,soyisim, not_ort FROM ogrenciler2; 

--DML DATA MANİPULATİON LANG
--INSERT (DATABASE e veri ekleme)
INSERT INTO ogrenciler2 VALUES ('1234567','Said','ILHAN',85.5,now());
INSERT INTO ogrenciler2 VALUES ('1234567','Said','ILHAN',85.5,'2020-12-11');

--bir tabloya parcalı veri ekleme icin
INSERT INTO ogrenciler2 (isim,soyisim) VALUES ('Fatih','Irmak');

--DQL- DATA QUERY LANG.
select * FROM ogrenciler2;
