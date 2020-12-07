CREATE TABLE magaza (
    id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    magaza_ad varchar(255) NOT NULL,
    magaza_sehir varchar(100) NOT NULL,
    magaza_telefon varchar(255) NOT NULL,
   
);

INSERT INTO dbo.magaza (magaza_ad, magaza_sehir, magaza_telefon)
VALUES
('X Firması','İstanbul','02822523534');


CREATE TABLE subeler (
    id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    sube_ad varchar(100) NOT NULL,
    sube_sehir varchar(100) NOT NULL,
    sube_telefon varchar(20) NOT NULL,

);

INSERT INTO dbo.subeler (sube_ad, sube_sehir, sube_telefon)
VALUES
('A Şubesi','İstanbul','02821239234'),
('B Şubesi','İzmir','02321679234'),
('C Şubesi','Antayla','02421267434');


CREATE TABLE mudurler (
    id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    mudur_ad varchar(100) NOT NULL,
    mudur_soyad varchar(100) NOT NULL,
    mudur_cinsiyet varchar(20) NOT NULL,
    mudur_yas int NOT NULL,
    subesi int NOT NULL,
    FOREIGN KEY(subesi) REFERENCES subeler(id)

   
);


INSERT INTO dbo.mudurler (mudur_ad, mudur_soyad, mudur_cinsiyet, mudur_yas, subesi)
VALUES
('Ahmet','Sönmez','Erkek','42','2'),
('Mehmet','Cemil','Erkek','38','1'),
('Özlem','Gündüz','Kadın','37','3');


CREATE TABLE calisanlar (
    id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    calisan_ad varchar(100) NOT NULL,
    calisan_soyad varchar(100) NOT NULL,
    calisan_cinsiyet varchar(20) NOT NULL,
    calisan_yas int NOT NULL,
    subesi int NOT NULL,
    FOREIGN KEY(subesi) REFERENCES subeler(id)
   
);

INSERT INTO dbo.calisanlar (calisan_ad, calisan_soyad, calisan_cinsiyet, calisan_yas, subesi)
VALUES
('Kaan','Kurt','Erkek','24','3'),
('Firat','Dün','Erkek','31','1'),
('Esra','Ay','Kadın','29','2'),
('Elif','Erol','Kadın','19','3'),
('Nisa','Kaçak','Kadın','32','1');

SELECT *
FROM subeler JOIN calisanlar
ON calisanlar.subesi=subeler.id