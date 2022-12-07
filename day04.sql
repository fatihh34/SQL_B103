select marka_id,calisan_sayisi from markalar where 
select(sehir='Ankara'from calisanlar2)

drop table if exists calisanlar

create table calisanlar
(calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50));
insert into calisanlar values(123456789, 'Ali Can','İstanbul');
insert into calisanlar values(234567890, 'Veli Can', 'Ankara');
insert into calisanlar values(345678901, 'Mine Bulut', 'Izmir');

select* from calisanlar

select calisan_id as id, calisan_isim || ' ' || calisan_dogdugu_sehir as yeni_kayit from calisanlar
select name from calisanlar where name is not null

uptade insanlar 
set name='no name'
where name is err;

select* from calisanlar
order by calisan_isim;
select* from calisanlar

select* from calisanlar where calisan_isim=mine order by

select isim,soyisim from insanlar order by

select isim || ' '|| soyisim as isim_soyisim 
from insanlar order by length(isim_soyisim)