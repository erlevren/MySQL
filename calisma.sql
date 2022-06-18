-- Calisma
use batch59;

CREATE TABLE personel 
(
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO personel VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO personel VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO personel VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO personel VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO personel VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO personel VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO personel VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

CREATE TABLE product
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);
INSERT INTO product VALUES(100, 'Vakko', 12000);
INSERT INTO product VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO product VALUES(102, 'Adidas', 10000);
INSERT INTO product VALUES(103, 'LCWaikiki', 21000);

select * from personel;
select * from product;
-- SORU1: calisan sayisi 15.000’den cok olan product isimlerini ve bu markada calisanlarin isimlerini ve maaşlarini listeleyin.
select maas from personel where maas>2500;
select calisan_sayisi from product where calisan_sayisi>15000;

-- SORU2: marka_id’si 101’den büyük olan marka çalişanlarinin isim, maaş ve şehirlerini listeleyiniz.
select marka_id from product where marka_id>101;
select isim, maas, sehir from personel 
where isyeri in (select marka_isim from markalar where marka_id > 101 );



