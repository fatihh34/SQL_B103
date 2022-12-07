
create table ogrenciler5
(ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,
 kayit_tarih date);
 
 create table notlar as 
 select isim,not_ort from ogrenciler5;

select * from notlar;
insert into notlar values ('ırmak',79.2)

create table talebeler
(isim varchar(10),
notlar real);

select isim,not_ort from ogrenciler2;

--CONTRAINT
create table ogrenciler8
(ogrenci_no char(7) UNIQUE,
isim varchar(20) NOT NULL,
soyisim varchar(25),
not_ort real,
 kayit_tarih date);
 
 SELECT * FROM ogrenciler8;
 