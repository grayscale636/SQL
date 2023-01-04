USE rentalfilm;

--@block
CREATE TABLE film (
    id_film VARCHAR(6) NOT NULL PRIMARY KEY,
    judul_film VARCHAR(30),
    tahun VARCHAR(10),
    harga INT
)

--@block
INSERT INTO film(id_film, judul_film, tahun, harga)
VALUES  ('F001', 'Gone Girl', '2012', '30000'),
        ('F002', 'Along With The God', '2017', '35000'),
        ('F003', 'The Sound of Music', '1965', '40000'),
        ('F004', 'Titanic', '1999', '25000')

--@block
CREATE TABLE konsumen (
    kode_konsumen VARCHAR(6) NOT NULL PRIMARY KEY,
    nama_konsumen VARCHAR(20),
    no_hp INT(11),
    alamat VARCHAR(30),
    kode_pos VARCHAR(10)
)

--@block
INSERT INTO konsumen(kode_konsumen, nama_konsumen, no_hp, alamat, kode_pos)
VALUES  ('K001', 'Alfi', '081234', 'Purwokerto', '34346'),
        ('K002', 'Minar', '084567', 'Medan', '45783'),
        ('K003', 'Septina', '087894', 'Jakarta', '73527'),
        ('K004', 'Dinda', '082467', 'Bandung', '64673')

--@block
CREATE TABLE sewa (
    kode_sewa VARCHAR(6) PRIMARY KEY NOT NULL,
    kode_konsumen VARCHAR(6),
    tgl_sewa DATE,
    id_film VARCHAR(30),
    lama_sewa VARCHAR(6),
    FOREIGN KEY (kode_konsumen) REFERENCES konsumen(kode_konsumen),
    FOREIGN KEY (id_film) REFERENCES film(id_film)
)

--@block
DROP TABLE sewa

--@block
INSERT INTO sewa(kode_sewa, kode_konsumen, tgl_sewa, id_film, lama_sewa)
VALUES  ('S101', 'K002', '2018-02-02', 'F001', '3'),
        ('S102', 'K003', '2017-07-09', 'F002', '5'),
        ('S103', 'K002', '2016-09-03', 'F002', '3'),
        ('S104', 'K001', '2018-10-20', 'F004', '2')

--@block
SELECT * FROM film
--@block
SELECT * FROM konsumen
--@block
SELECT * FROM sewa

--@block
SELECT f.*, s.*
FROM film as f 
INNER JOIN sewa as s
on f.id_film = s.id_film;

--@block
SELECT k.nama_konsumen, k.alamat, s.kode_sewa, s.tgl_sewa, f.id_film, s.lama_sewa, f.harga
FROM konsumen as k 
INNER JOIN sewa as s
on k.kode_konsumen = s.kode_konsumen
INNER JOIN film as f
on s.id_film = f.id_film
ORDER BY k.nama_konsumen ASC;