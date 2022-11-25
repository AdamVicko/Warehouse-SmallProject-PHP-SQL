

drop database if exists edunovapp26;
create database edunovapp26 default charset utf8;
use edunovapp26;

#Lokacije skladistenja robe
create table skladiste(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    adresa varchar(100),
    telefon int(50),
    voditelj int,
    roba int
);

#Roba po namjeni
create table roba(
    sifra int not null primary key auto_increment,
    pomagalo_za_disanje int,
    inkontinencija int,
    ortopedska_cipela int,
    pojas int,
    rukav_nogavica int
);

#Raspored po namjeni naziv robe
create table pomagalo_za_disanje(
    sifra int not null primary key auto_increment,
    koncentrator_kisika int,
    pulsni_oksimetar int,
    aspirator int,
    inhalator int,
    potrosni_materijal int
);

create table inkontinencija(
    sifra int not null primary key auto_increment,
    pelena_ulozak int,
    princeza int
);

   
create table ortopedska_cipela(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    marka varchar(50),
    velicina decimal(18,2),
    cijena decimal(18,2),
    skladiste int    
);


#Roba 
create table pelena_ulozak(
    sifra int not null primary key auto_increment,
    pacijent int,
    naziv varchar(100),
    kolicina int,
    datum_izdavanja date
);

create table koncentrator_kisika(
    sifra int not null primary key auto_increment,
    serijski_kod varchar(50) not null,
    proizvodac varchar(50),
    radni_sati decimal(18,2) not null,
    pacijent int,
    datum_izdavanja_servisa date,
    pokvaren boolean,
    na_zamjeni varchar(150)
);

create table pojas(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    velicina varchar(30),
    cijena decimal (18,2),
    pacijent int
);

#Pacijent osoba kojoj je izdano pomagalo
create table pacijent(
    sifra int not null primary key auto_increment,
    ime varchar(30) not null,
    prezime varchar(30) not null,
    datumrodenja date,
    adresa text(50),
    oib char(11),
    broj_telefona varchar(50)
);


#SKLADISTE-ROBA
alter table skladiste add foreign key (roba) references roba(sifra);

#ROBA-PO NAMJENI
alter table roba add foreign key (pomagalo_za_disanje) references pomagalo_za_disanje(sifra);
alter table roba add foreign key (inkontinencija) references inkontinencija(sifra);
alter table roba add foreign key (ortopedska_cipela) references ortopedska_cipela(sifra);
alter table roba add foreign key (pojas) references pojas(sifra);


#PO NAMJENI-PROIZVOD
alter table pomagalo_za_disanje add foreign key (koncentrator_kisika) references koncentrator_kisika(sifra);
alter table inkontinencija add foreign key (pelena_ulozak) references pelena_ulozak(sifra);


#PROIZVOD-PACIJENT
alter table koncentrator_kisika add foreign key (pacijent) references pacijent(sifra);
alter table pelena_ulozak add foreign key (pacijent) references pacijent(sifra);




#POPUNJAVANJE

insert into koncentrator_kisika (sifra,pacijent,radni_sati,serijski_kod,
datum_izdavanja_servisa,pokvaren,na_zamjeni)
values
(null,null,'2568.5','BK5554465KS','2022.05.15',false,null),
(null,null,'258.5','BK4645455KS','2022.11.05',false,null);


insert into pacijent (sifra,ime,prezime,adresa,oib,broj_telefona)
values
(null,'Ivo','Andrić','Ivana Gundulica 658','59452136897','097 6444789'),
(null,'Bubo','Basic','Ivaundulica 588','59452136197','097 1544789'),
(null,'Ivan','And','IvGundulica 598','59452136847','097 5513789'),
(null,'Ivana','Andrić','Ivana 588','59452136894','097 5544129'),
(null,'Mario','rić','Ivana dulica 582','59452636897','097 5541189'),
(null,'Muhammed','ić','Iva Gunica 583','59452936897','097 5544669'),
(null,'Nahid','Kulenovic','ana dulica 2538','51452136897','097 7744789'),
(null,'Nijaz','Batlak','Ia ndulica 583','59454136897','097 5544989'),
(null,'Semso','Poplava','vana Guca 558','59457136897','097 5544679'),
(null,'Ivo','Mali','Iva Guica 8','59452136896','097 5387869')
;


update koncentrator_kisika set pacijent = '1'
where sifra=1;

update pomagalo_za_disanje set koncentrator_kisika = '1'
where sifra=1;