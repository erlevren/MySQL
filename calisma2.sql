use batch59;

create table ogrnclr(
id int,
isim varchar(40),
adres varchar(100),
sinav_notu int
);

insert into ogrnclr values(120, 'Erol Evren', 'Ankara', 75);
insert into ogrnclr values(121, 'Veli Mert', 'Trabzon', 85);
insert into ogrnclr values(122, 'Ayşe Tan', 'Bursa', 65);
insert into ogrnclr values(123, 'Derya Soylu', 'Istanbul',95);
insert into ogrnclr values(124, 'Yavuz Bal', 'Ankara', 80);
select * from ogrnclr;
-- SORU01: Sınav notu 80'den büyük olan öğrencilerin bilgileri listele
select * from ogrnclr where sinav_notu>80;
-- SORU02: Adresi Ankara olan öğrencilerin isim ve adres bilgilerini listele
select isim, adres from ogrnclr where adres='Ankara';
-- SORU03: id'si 124 olan öğrencilerin tüm bilgilerini listele
select * from ogrnclr where id=124;
-- SORU04: id'si 121 olan öğrencilerin adres ve sinav notunu bilgilerini listele
select adres, sinav_notu from ogrnclr where id=121;


create table eleman(
id char(4),
isim varchar(40),
maas int
);

insert into eleman values(10, 'Erol Evren', 70000);
insert into eleman values(11, 'Veli Mert', 85000);
insert into eleman values(12, 'Ayşe Tan', 65000);
insert into eleman values(13, 'Derya Soylu', 95000);
insert into eleman values(14, 'Yavuz Bal', 80000);
insert into eleman values(15, 'Sena Balik', 80000);
insert into eleman values(15, 'Canan Akin', 100000);

select * from eleman;

-- SORU05: id'si 1002 ile 1005 arasında olan personel bilgilerini listele
select * from eleman where id between 12 and 15;
select * from eleman where id>=12 and id<=15;
-- SORU07: id'si 1001,1002 ve 1004 olan prsonel bilgilerini listele
select * from eleman where id in (11,12,14);
select * from eleman where id=11 or id=12 or id=14;
-- SORU08: Maaşı sadece 70000 95000 olan personeli listele
select * from eleman where maas in (70000,95000);
-- SORU09: İsmi A harfi ile başlayan personeli listele
select * from eleman where isim like 'A%';
-- SORU10: İsmi N harfi ile biten personeli listele
select * from eleman where isim like '%N';
-- SORU11: İsminin 2. harfi E olan personeli listeleyin
select * from eleman where isim like '_E%';
-- SORU12: İsminin 2. harfi E olup diğer harflerinde Y olan personel
select * from eleman where isim like '_E%Y%';
-- SORU13: İsminde A harfi olmayan personeli listeleyin
select * from eleman where isim not like '%a%';
-- SORU14: Maaşı 6 haneli olan personeli listeleyin
select * from eleman where maas like '______';
-- SORU15: 1. harfi A ve 7. harfi A olan personeli listeleyin
select * from eleman where isim like 'A_____A%';

select * from kelimeler;
-- SORU16: İçerisinde 'ot' veya 'at' bulunan kelimeleri küçük harfe dikkat ederek listeleyiniz
select * from kelimeler where regexp_like (kelime,'ot|at','c');
-- SORU17: İçerisinde 'ot' veya 'at' bulunan kelimeleri büyük-küçük harfe dikkat etmeksizin listeleyeniz
select * from kelimeler where regexp_like (kelime, 'ot|at');
-- SORU18: 'ho' veya 'hi' ile başlayan kelimeleri büyük-küçük harfe dikkat etmeksizin listeleyeniz
select * from kelimeler where regexp_like (kelime, '^ho|^hi');
-- SORU19: Sonu 't' veya 'm' ile bitenleri büyük-küçük harfe dikkat etmeksizin listeleyeniz.
select * from kelimeler where regexp_like (kelime, 't$|m$');
-- SORU20: h ile başlayıp t ile biten 3 harfli kelimeleri (h ile t küçük harfli olanlari) listeleyeniz
select * from kelimeler where regexp_like (kelime, 'h[a-z]t');



