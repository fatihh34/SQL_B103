create database evren;
CREATE TABLE ogrenciler5
(
ogrenci_no char(7),-- Uzunluğunu bildiğimiz stringler için CHAR kullanılır
isim varchar(20), -- Uzunluğunu bilmediğimiz stringler için VARCHAR kullanırız
soyisim varchar(25),
not_ort real,-- Ondalıklı sayılar için kullanılır(Double gibi)
kayit_tarih date);
-- VAROLAN BİR TABLODAN YENİ BİR TABLO OLUŞTURMA
CREATE TABLE NOTLAR
AS
SELECT isim,not_ort FROM ogrenciler5;
select * from notlar;
--INSERT- TABLO İÇİNE VERİ EKLEME
INSERT INTO notlar VALUES ('Osman',95.5);
INSERT INTO notlar VALUES ('Sumeyye',95.5);
INSERT INTO notlar VALUES ('Salih',95.5);
INSERT INTO notlar VALUES ('Hakan',95.5);
INSERT INTO notlar VALUES ('Adem',95.5);
select * from notlar;
select isim from notlar;
-- CONSTRAINT
--UNIQEU
--NOT NULL
CREATE TABLE ogrenciler7
(
ogrenci_no char(7) unique,
isim varchar(20) not null, 
soyisim varchar(25),
not_ort real,
kayit_tarih date
);
select * from ogrenciler7;

insert into ogrenciler7 values ('1234567','alim','velim',75.4,now());
insert into ogrenciler7(ogrenci_no,isim,soyisim,not_ort) values('1236547','selo','venom',45.4);

CREATE TABLE ogrenciler10
(
ogrenci_no char(7),
isim varchar(20), 
soyisim varchar(25),
not_ort real,
kayit_tarih date,
	constraint ogr primary key(ogrenci_no)
);

create table tedarikciler3
(tedarikci_id char primary key,
tedarikci_ismi varchar,
iletisim_ismi varchar);

create table urunler
(tedarikci_id char,
urun_id char,
foreign key (tedarikci_id) references 
tedarikciler3(tedarikci_id));

select * from tedarikciler3;
select * from urunler;

CREATE table calisanlar1
(id char primary key,
isim varchar unique,
maas real not null,
ise_baslama date);

create table adresler
(adres_id char,
sokak varchar,
cadde varchar,
sehir varchar,
foreign key (adres_id) references calisanlar(id));

