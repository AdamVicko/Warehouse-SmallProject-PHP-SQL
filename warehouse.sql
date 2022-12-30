# C:\Users\Adam\Desktop\Repositories\Warehouse-SmallProject-PHP-SQL-DBEAVER\warehouse.sql

drop database if exists edunovapp26;
create database edunovapp26 default charset utf8;
use edunovapp26;

# TABLICE

create table pacijent (
    sifra int not null primary key auto_increment,
    ime varchar(30) not null,
    prezime varchar(50) not null,
    telefon varchar (50),
    datum_rodenja date,
    adresa text(50),
    oib char(11)
);

create table koncentrator_kisika(
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
    koncentrator_kisika int
);

create table prikup(
    sifra int not null primary key auto_increment,
    datum_prikupa date not null,
    pacijent int,
    koncentrator_kisika int
);

create table stanje(
    sifra int not null primary key auto_increment,
    kolicina_kom int,
    koncentrator_kisika int
);

#PROIZVOD
alter table stanje add foreign key (koncentrator_kisika) references koncentrator_kisika (sifra);
alter table isporuka add foreign key (koncentrator_kisika) references koncentrator_kisika (sifra);
alter table isporuka add foreign key (pacijent) references pacijent (sifra);
alter table prikup add foreign key (pacijent) references pacijent (sifra);
alter table prikup add foreign key (koncentrator_kisika) references koncentrator_kisika (sifra);




#--------------INSERT



insert into pacijent (sifra,ime,prezime,telefon,datum_rodenja,adresa,oib)
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


insert into koncentrator_kisika(sifra,serijski_kod,radni_sat,naziv,proizvodac,
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


insert into stanje (sifra,koncentrator_kisika,kolicina_kom)
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
(null,11,1),
(null,12,1),
(null,13,1),
(null,14,1),
(null,15,1),
(null,16,1),
(null,17,1),
(null,18,1)
;





