

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
    voditelj int,
    naziv varchar(50) not null,
    adresa varchar(100) not null,
    poštanski_broj int not null
);



#Stanje
create table stanje(
    sifra int not null primary key auto_increment,
    skladiste int
);

create table pomagalo_za_disanje(
    sifra int not null primary key auto_increment,
    stanje int,
    koncentrator_kisika int,
    pulsni_oksimetar int,
    aspirator int,
    inhalator int,
    potrosni_materijal int
);

create table inkontinencija(
    sifra int not null primary key auto_increment,
    stanje int,
    pelena_ulozak int,
    princeza int
);

create table ortopedska_cipela(
    sifra int not null primary key auto_increment,
    stanje int,
    naziv varchar(50),
    marka varchar(50),
    velicina decimal(18,2),
    cijena decimal(18,2) 
);

create table ostala_roba(
    sifra int not null primary key auto_increment,
    stanje int,
    potporno_rasteretna_ortoza int,
    kompresija int
);


#OSOBA
alter table zaposlenik add foreign key (osoba) references osoba(sifra);
alter table pacijent add foreign key (osoba) references osoba (sifra);

alter table zaposlenik add foreign key (skladiste) references skladiste(sifra);
alter table voditelj add foreign key (zaposlenik) references zaposlenik (sifra);
alter table voditelj add foreign key (skladiste) references skladiste (sifra);

alter table zaposlenik add foreign key (direktor) references zaposlenik (sifra);





