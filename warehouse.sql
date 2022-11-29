

drop database if exists edunovapp26;
create database edunovapp26 default charset utf8;
use edunovapp26;

# TABLICE

create table osoba (
    sifra int not null primary key auto_increment,
    ime varchar(30) not null,
    prezime varchar(50) not null,
    telefon int (50),
    datumrodenja date,
    adresa text(50),
    oib char(11)
);

create table zaposlenik(
    sifra int not null primary key auto_increment,
    osoba int,
    skladiste int,
    direktor int
);
#Voditelj lokacije skladista
create table voditelj (
    sifra int not null primary key auto_increment,
    zaposlenik int,
    skladiste int
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
    poštanski_broj int not null
);

#Stanje
create table stanje(
    sifra int not null primary key auto_increment,
    zadnja_inventura date,
    skladiste int
);

#pomagalo za disanje-Stanje
create table pomagalo_za_disanje(
    sifra int not null primary key auto_increment,
    stanje int,
    pulsni_oksimetar int,
    aspirator int,
    inhalator int,
    potrosni_materijal int
);

create table koncentrator_kisika(
    sifra int not null primary key auto_increment,
    serijski_kod varchar(50) not null,
    proizvodac varchar(50),
    datum_kupovine_uredaja date,
    radni_sati decimal(18,2) not null,
    novi boolean,
    pomagalo_za_disanje int
);

create table izdavanje_koncentrator_kisika(
    sifra int not null primary key auto_increment,
    datum_izdavanja_servisa date,
    pokvaren boolean,
    na_zamjeni_opis varchar(150),
    pacijent int,
    koncentrator_kisika int
);


#inkontinencija-Stanje
create table inkontinencija(
    sifra int not null primary key auto_increment,
    stanje int,
    princeza int
);

create table pelena_ulozak(
    sifra int not null primary key auto_increment,
    naziv varchar(100),
    kolicina_na_stanju int,
    inkontinencija int
);

create table izdavanje_pelena_ulozak(
    sifra int not null primary key auto_increment,
    kolicina int,
    datum_izdavanja_pelene date,
    komentar varchar(150),
    pelena_ulozak int,
    pacijent int
);

#ortopedska cipela-Stanje
create table ortopedska_cipela(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    marka varchar(50),
    velicina decimal(18,2),
    kolicina_na_stanju int,
    cijena decimal(18,2),
    stanje int
);

#ostala roba-Stanje
create table ostala_roba(
    sifra int not null primary key auto_increment,
    stanje int,
    kompresija int
);

#potporno rasteretna ortoza-Ostala roba
create table potporno_rasteretna_ortoza(
    sifra int not null primary key auto_increment,
    ostala_roba int
);

create table lso(
    sifra int not null primary key auto_increment,
    proizvodac varchar(50),
    velicina varchar(50),
    cijena decimal (18,2),
    kolicina_na_stanju int,
    potporno_rasteretna_ortoza int
);

create table tlso(
    sifra int not null primary key auto_increment,
    proizvodac varchar(50),
    velicina varchar(50),
    cijena decimal (18,2),
    kolicina_na_stanju int,
    potporno_rasteretna_ortoza int
);

create table izdavanje_lso(
    sifra int not null primary key auto_increment,
    datum_izdavanja date,
    komentar varchar(100),
    pacijent int,
    lso int
);

create table izdavanje_tlso(
    sifra int not null primary key auto_increment,
    datum_izdavanja date,
    komentar varchar(100),
    pacijent int,
    tlso int
);

#kompresija-Ostala roba
create table kompresija(
    sifra int not null primary key auto_increment,
    rukav int,
    nogavica int,
    ostala_kompresija int,
    ostala_roba int
);



#OSOBA
alter table zaposlenik add foreign key (osoba) references osoba(sifra);
alter table pacijent add foreign key (osoba) references osoba (sifra);

alter table zaposlenik add foreign key (skladiste) references skladiste(sifra);
alter table voditelj add foreign key (zaposlenik) references zaposlenik (sifra);
alter table voditelj add foreign key (skladiste) references skladiste (sifra);

alter table zaposlenik add foreign key (direktor) references zaposlenik (sifra);


#STANJE-SKLADISTE
alter table stanje add foreign key (skladiste) references skladiste (sifra);

#---------------STANJE-POMAGALO ZA DISANJE
alter table pomagalo_za_disanje add foreign key (stanje) references stanje (sifra);

#koncentrator_kisika-pomagalo_za_disanje
alter table koncentrator_kisika add foreign key (pomagalo_za_disanje) references pomagalo_za_disanje(sifra);
#izdavanje_koncentrator_kisika-koncentrator_kisika
alter table izdavanje_koncentrator_kisika add foreign key (koncentrator_kisika) references koncentrator_kisika(sifra);
alter table izdavanje_koncentrator_kisika add foreign key (pacijent) references pacijent(sifra);
#---------------STANJE-INKONTINENCIJA
alter table inkontinencija add foreign key (stanje) references stanje (sifra);

#INKONTINENCIJA-PELENA ULOZAK
alter table pelena_ulozak add foreign key (inkontinencija) references inkontinencija(sifra);

#PELENA ULZAK-IZDAVANJE PELENA ULOZAK
alter table izdavanje_pelena_ulozak add foreign key (pelena_ulozak) references pelena_ulozak (sifra);

#IZDAVANJE PELENA ULOZAK- PACIJENT
alter table izdavanje_pelena_ulozak add foreign key (pacijent) references pacijent (sifra);


#----------------STANJE-ORTOPEDSKA CIPELA
alter table ortopedska_cipela add foreign key (stanje) references stanje (sifra);

#----------------STANJE-OSTALA ROBA
alter table ostala_roba add foreign key (stanje) references stanje (sifra);

#POTPORNO RASTERETNA ORTOZA-OSTALA ROBA
alter table potporno_rasteretna_ortoza add foreign key (ostala_roba) references ostala_roba (sifra);

#LSO-POTPORNO RASTERETNA ORTOZA
alter table lso add foreign key (potporno_rasteretna_ortoza) references potporno_rasteretna_ortoza (sifra);

#TLSO-POTPORNO RASTERETNA ORTOZA
alter table tlso add foreign key (potporno_rasteretna_ortoza) references potporno_rasteretna_ortoza (sifra);

#IZDAVANJE LSO-LSO
alter table izdavanje_lso add foreign key (lso) references lso (sifra);
alter table izdavanje_lso add foreign key (pacijent) references pacijent (sifra);
#IZDAVANJE TLSO-TLSO
alter table izdavanje_tlso add foreign key (tlso) references tlso (sifra);
alter table izdavanje_tlso add foreign key (pacijent) references pacijent (sifra);

#KOMPRESIJA-OSTALA ROBA
alter table kompresija add foreign key (ostala_roba) references ostala_roba (sifra); 




#--------------INSERT


insert into osoba (sifra,ime,prezime,telefon,datumrodenja,adresa,oib)
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


insert into koncentrator_kisika(sifra,serijski_kod,proizvodac,datum_kupovine_uredaja,
radni_sati,novi,pomagalo_za_disanje)
values
(null,'B2875647','Devilbiss','2022.05.09','123.5',false,null),
(null,'B2665647','Devilbiss','2022.04.19','00',true,null),
(null,'B2885647','Devilbiss','2022.05.29','1253.9',false,null),
(null,'B2905647','Devilbiss','2022.05.05','12341.8',false,null),
(null,'B255655647','Devilbiss','2021.11.28','15223.4',false,null),
(null,'B28678847','Devilbiss','2020.01.13','12325',false,null),
(null,'B2876455547','Devilbiss','2020.02.15','12325',false,null);
