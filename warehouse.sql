

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

create table proizvod(
    sifra int not null primary key auto_increment,
    serijski_kod varchar(50),
    naziv varchar(50),
    proizvodac varchar(50),
    model varchar(50),
    dostupan boolean,
    datum_kupovine date,
    datum_isporuke date,
    skladiste int
);

create table isporuka(
    sifra int not null primary key auto_increment,
    pacijent int,
    proizvod int
);

create table stanje(
    sifra int not null primary key auto_increment,
    kolicina_kom int,
    proizvod int
);

#OSOBA
alter table zaposlenik add foreign key (osoba) references osoba(sifra);
alter table pacijent add foreign key (osoba) references osoba (sifra);
alter table zaposlenik add foreign key (direktor) references zaposlenik (sifra);
alter table zaposlenik add foreign key (skladiste) references skladiste(sifra);
alter table isporuka add foreign key (pacijent) references pacijent (sifra);


alter table stanje add foreign key (proizvod) references proizvod (sifra);
alter table proizvod add foreign key (skladiste) references skladiste (sifra);
alter table isporuka add foreign key (proizvod) references proizvod (sifra);




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
