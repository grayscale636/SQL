CREATE DATABASE db_kursus

--@block
USE db_kursus

--@block
CREATE TABLE peserta (
    ID INT(11) NOT NULL PRIMARY KEY,
    nama VARCHAR(20),
    jk VARCHAR(2),
    tanggal_lahir DATE,
    kota VARCHAR(15),
    jenis_kursus VARCHAR(30),
    biaya INT(11)
)

--@block
INSERT INTO peserta(ID, nama, jk, tanggal_lahir, kota, jenis_kursus, biaya)
VALUES  ('1', 'Andika', 'L', '1997-12-10', 'Balikpapan', 'Administrasi Perkantoran', '800000'),
        ('2', 'Bahtiar', 'L', '1998-11-06', 'Cimahi', 'Jaringan Komputer', '1000000'),
        ('3', 'Cecilia', 'P', '1999-04-04', 'Mojokerto', 'Jaringan Komputer', '1000000'),
        ('4', 'Diandra', 'P', '1996-01-06', 'Denpasar', 'Design Grafis', '750000'),
        ('5', 'Erlangga', 'L', '1998-10-24', 'Medan', 'Website', '1200000'),
        ('6', 'Fauzia', 'P', '1997-04-28', 'Jakarta Utara', 'Website', '1200000'),
        ('7', 'Gerrard', 'L', '1999-07-01', 'Jepara', 'Design Grafis', '750000'),
        ('8', 'Hindia', 'L', '1998-12-12', 'Jakarta', 'Timur Jaringan Komputer', '1000000'),
        ('9', 'Indayana', 'P', '1997-05-28', 'Aceh', 'Administrasi Perkantoran', '800000'),
        ('10', 'Jonas', 'L', '1996-03-24', 'Probolinggo', 'Website', '1200000');

--@block
SELECT * FROM peserta

--@block
SELECT * FROM peserta WHERE tanggal_lahir <= '1998-01-01'
ORDER BY nama ASC;

--@block
SELECT * FROM peserta WHERE jenis_kursus = 'Jaringan Komputer'

--@block
SELECT COUNT(jenis_kursus) AS Jumlah_Kursus_Website
FROM peserta WHERE jenis_kursus = 'Website';

