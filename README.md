create database HASTANE

CREATE TABLE Hasta(
HastaId int not null Primary Key,
Soyad nvarchar(20) not null,
Ad nvarchar(20) not null,
Cinsiyet nchar(1) not null,
Boy float not null,
Kilo float not null
)

use HASTANE
insert into Hasta(HastaId,Soyad,Ad,Cinsiyet,Boy,Kilo) 
values(15223,'Smith','Deniz','F',158,47)

use HASTANE
insert into Hasta(HastaId,Soyad,Ad,Cinsiyet,Boy,Kilo)
values
(15224,'Agarwal','Arjun','M',192,89),
(15225,'Adams','Poopy','F',185,92)

use HASTANE
select Ad,Soyad,Boy,Kilo
from Hasta where Boy>160 or Kilo<85

use HASTANE
select Ad,Soyad,Boy,Kilo
from Hasta order by Boy asc

use HASTANE
select avg(Boy) from Hasta

use HASTANE
select Count(*) from Hasta where Boy>160

use HASTANE
update Hasta set Kilo=55 where HastaId=15223

use HASTANE
delete from Hasta where HastaId=15223
