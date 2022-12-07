# C:\Users\Adam\Desktop\Repositories\Warehouse-SmallProject-PHP-SQL-DBEAVER\warehouse.sql

drop database if exists edunovapp26;
create database edunovapp26 default charset utf8;
use edunovapp26;

# TABLICE

create table osoba (
    sifra int not null primary key auto_increment,
    ime varchar(30) not null,
    prezime varchar(50) not null,
    telefon varchar (50),
    datum_rodenja date,
    adresa text(50),
    oib char(11)
);

create table zaposlenik(
    sifra int not null primary key auto_increment,
    osoba int,
    skladiste int,
    direktor int
);

#Pacijent osoba kojoj je izdano pomagalo
create table pacijent(
    sifra int not null primary key auto_increment,
    osoba int
);  


#Lokacije skladistenja robe
create table skladiste(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    adresa varchar(100) not null,
    postanski_broj int not null
);

create table proizvod(
    sifra int not null primary key auto_increment,
    serijski_kod varchar(50),
    radni_sat decimal(18,2),
    naziv varchar(50) not null,
    proizvodac varchar(50),
    model varchar(50),
    komentar varchar(100),
    datum_kupovine date
);

create table isporuka(
    sifra int not null primary key auto_increment,
    datum_isporuke date not null,
    pacijent int,
    proizvod int
);

create table prikup(
    sifra int not null primary key auto_increment,
    datum_prikupa date not null,
    pacijent int,
    proizvod int
);

create table stanje(
    sifra int not null primary key auto_increment,
    kolicina_kom int,
    proizvod int,
    skladiste int
);

#OSOBA
alter table zaposlenik add foreign key (osoba) references osoba(sifra);
alter table pacijent add foreign key (osoba) references osoba (sifra);
alter table zaposlenik add foreign key (direktor) references zaposlenik (sifra);
alter table zaposlenik add foreign key (skladiste) references skladiste(sifra);


#PROIZVOD
alter table stanje add foreign key (proizvod) references proizvod (sifra);
alter table stanje add foreign key (skladiste) references skladiste (sifra);
alter table isporuka add foreign key (proizvod) references proizvod (sifra);
alter table isporuka add foreign key (pacijent) references pacijent (sifra);
alter table prikup add foreign key (pacijent) references pacijent (sifra);
alter table prikup add foreign key (proizvod) references proizvod (sifra);




#--------------INSERT



insert into osoba (sifra,ime,prezime,telefon,datum_rodenja,adresa,oib)
values
(null,'Ivo','Andrić','097 6444789','1985.03.26','Ivana Gundulica 658','59452136897'),
(null,'Bubo','Basić','097 6444789','1965.03.26','Ivaundulica 588','59452136197'),
(null,'Ivan','And','097 6444789','1955.03.26','IvGundulica 598','59452136847'),
(null,'Ivana','Andrić','097 6444789','1995.03.26','Ivana 588','59452136894'),
(null,'Mario','rić','097 6444789','1988.03.26','Ivana dulica 582','59452636897'),
(null,'Muhammed','ić','097 6444789','1981.03.26','Iva Gunica 583','59452936897'),
(null,'Nahid','Kulenovic','097 6444789','1975.03.26','ana dulica 2538','51452136897'),
(null,'Nijaz','Batlak','097 6444789','1973.03.26','Ia ndulica 583','59454136897'),
(null,'Semso','Poplava','097 6444789','1989.03.26','vana Guca 558','59457136897'),
(null,'Ivo','Mali','097 6444789','1990.03.26','Iva Guica 8','59452136896');

insert into skladiste (sifra,naziv,adresa,postanski_broj)
values 
(null,'Klisa','Vukovarska55, Klisa','21570'),
(null,'Radnja','Franje Krezme 22, Osijek','31000');


insert into zaposlenik (sifra,osoba,skladiste,direktor)
values
(null,1,1,null),
(null,2,2,null),
(null,3,1,null),
(null,4,2,4),
(null,5,1,null),
(null,6,2,null),
(null,7,1,null),
(null,8,2,null),
(null,9,1,null),
(null,10,2,null);

insert into proizvod(sifra,serijski_kod,radni_sat,naziv,proizvodac,
                    model,datum_kupovine)    
values
(null,'BK533456343','124,5','Koncentrator_Kisika','Devilbiss','5L','2022.03.14'),
(null,'BK345674343','14,5','Koncentrator_Kisika','Devilbiss','5L','2022.02.19'),
(null,'BK345746343','12','Koncentrator_Kisika','Devilbiss','5L','2022.01.29'),
(null,'BK3464566343','925','Koncentrator_Kisika','Devilbiss','5L','2022.07.21'),
(null,'BK3456343','5874','Koncentrator_Kisika','Devilbiss','5L','2022.04.10'),
(null,'BK5353456343','0','Koncentrator_Kisika','Devilbiss','5L','2022.11.02'),
(null,'BK30673456343','3655','Koncentrator_Kisika','Devilbiss','5L','2022.01.10'),
(null,'BK3456304003','14526','Koncentrator_Kisika','Devilbiss','5L','2022.04.13'),
(null,'BK34563943','124','Koncentrator_Kisika','Devilbiss','5L','2022.2.22'),
(null,'BK53456343','124,5','Koncentrator_Kisika','Devilbiss','5L','2022.03.14'),
(null,'BK674343','14,5','Koncentrator_Kisika','Devilbiss','5L','2022.02.19'),
(null,'GK746343','12','Koncentrator_Kisika','Devilbiss','5L','2022.01.29'),
(null,'GK64566343','925','Koncentrator_Kisika','Devilbiss','5L','2022.07.21'),
(null,'GK3456343','5874','Koncentrator_Kisika','Devilbiss','5L','2022.04.10'),
(null,'GK6343','0','Koncentrator_Kisika','Devilbiss','5L','2022.11.02'),
(null,'GK3056343','3655','Koncentrator_Kisika','Devilbiss','5L','2022.01.10'),
(null,'UZ56304003','14526','Koncentrator_Kisika','Devilbiss','5L','2022.04.13'),
(null,'UZ363943','124','Koncentrator_Kisika','Devilbiss','5L','2022.2.22')
;


insert into stanje (sifra,proizvod,skladiste)
values
(null,1,1),
(null,2,1),
(null,3,1),
(null,4,1),
(null,5,1),
(null,6,1),
(null,7,1),
(null,8,1),
(null,9,1),
(null,10,1),
(null,11,2),
(null,12,2),
(null,13,2),
(null,14,2),
(null,15,2),
(null,16,2),
(null,17,2),
(null,18,2)
;





