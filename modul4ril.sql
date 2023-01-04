USE db_akademik

--@block
SHOW TABLES;

--@block
CREATE TABLE dosen (
    id_dosen VARCHAR(6) NOT NULL PRIMARY KEY,
    nama_dosen VARCHAR(20),
    jk CHAR(1),
    NoHp VARCHAR(20),
    gaji INT(11),
    TunjanganJabatan INT(11),
    id_prodi VARCHAR(4)
)

--@block
INSERT INTO dosen(id_dosen, nama_dosen, jk, NoHp, gaji, TunjanganJabatan, id_prodi)
VALUES  ('D101', 'Kuncoro', 'L', '08123', '5000000', '500000', 'P021'),
        ('D102', 'Mustika', 'P', '08593', '3750000', '0', 'P022'),
        ('D103', 'Safitri', 'P', '08856', '4550000', '530000', 'P024'),
        ('D104', 'Prasetiadi', 'L', '08196', '5500000', '750000', 'P021'),
        ('D105', 'Setiawan', 'L', '08452', '3750000', '0', 'P023'),
        ('D106', 'Panut', 'L', '08548', '4550000', '400000', 'P022'),
        ('D107', 'Sari', 'P', '08745', '5000000', '600000', 'P024');

--@block
SELECT * FROM dosen;

--@block
SELECT id_dosen, nama_dosen, gaji FROM dosen;

--@block
SELECT id_dosen, nama_dosen, gaji, TunjanganJabatan FROM dosen;

--@block
SELECT id_dosen, nama_dosen, gaji, TunjanganJabatan, CONCAT(TunjanganJabatan+gaji) as agregat FROM dosen;

--@block
DESCRIBE dosen;

--@block
UPDATE dosen
SET TunjanganJabatan = NULL
WHERE id_dosen = 'D106';

SELECT id_dosen, nama_dosen, gaji, TunjanganJabatan, CONCAT(TunjanganJabatan+gaji) as agregat FROM dosen;

--@block
SELECT * FROM dosen

--@block
SELECT DISTINCT id_prodi FROM dosen;

--@block
select id_prodi, SUM(gaji) as total_gaji FROM dosen GROUP BY id_prodi

--@block
select id_prodi, count(id_dosen) as total_dosen FROM dosen GROUP BY id_prodi;

--@block
select nama_dosen, id_prodi from dosen
WHERE nama_dosen like '%i'

--@block
select nama_dosen, id_prodi FROM dosen
WHERE nama_dosen not like '%i'

--@block
SELECT * FROM dosen
WHERE gaji BETWEEN 4000000 and 5000000

--@block
SELECT * FROM dosen
WHERE gaji NOT BETWEEN 4000000 and 5000000

--@block
SELECT * FROM dosen
WHERE JK LIKE 'L' AND id_prodi = 'P021'

--@block
SELECT * FROM dosen
WHERE gaji = (SELECT MAX(gaji) FROM dosen);

--@block
SELECT * FROM dosen
WHERE gaji = (SELECT MIN(gaji) FROM dosen);