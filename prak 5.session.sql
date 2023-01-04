CREATE DATABASE db_akademik

--@block
USE db_akademik

--@block
CREATE TABLE mahasiswa (
    NIM INT(11) NOT NULL PRIMARY KEY,
    Nama VARCHAR(25),
    JK CHAR(1),
    Tgl_Lahir DATE,
    Prodi VARCHAR(10)
);

--@block
DESCRIBE mahasiswa

--@block
INSERT INTO mahasiswa(NIM, Nama, JK, Tgl_Lahir, Prodi)
VALUES  ("1701001", "Maulana", "L", "1997-02-14", "S1 RPL"),
        ("1701002", "Asyifa", "P", "1998-01-31", "S1 RPL"),
        ("1701003", "Lala", "P", "1999-07-07", "S1 IF"),
        ("1701004", "Hidayat", "L", "1999-06-20", "S1 TI"),
        ("1701005", "Marina", "L", "1996-02-21", "S1 IF"),
        ("1701006", "Zulaikha", "P", "1998-03-20", "S1 IF"),
        ("1701007", "Daniel", "L", "1997-06-05", "S1 SI"),
        ("1701008", "Andini", "L", "1997-12-10", "S1 RPL"),
        ("1701009", "Zetta", "L", "1998-09-27", "S1 SI"),
        ("1701010", "Astunggani", "P", "1997-01-06", "S1 IF");

--@block
SELECT * FROM mahasiswa

--@block
UPDATE mahasiswa 
SET Nama = 'Lala', Nama = 'Dipsy'
WHERE NIM = 1701003;

--@block
SELECT * FROM mahasiswa

--@block
SELECT * FROM mahasiswa WHERE Nim = 1701003;

--@block
DELETE FROM mahasiswa WHERE Nama = 'Daniel';

--@block
SELECT * FROM mahasiswa

--@block
SELECT * FROM mahasiswa WHERE Tgl_Lahir >= 1998-01-01

--@block
CREATE DATABASE db_mhs;

--@block
USE db_mhs;


--@block
CREATE TABLE mahasiswa (
    NIM INT(11) NOT NULL PRIMARY KEY,
    Nama VARCHAR(25),
    JK CHAR(1),
    Tgl_Lahir DATE,
    Prodi VARCHAR(10)
);

--@block
INSERT INTO mahasiswa(NIM, Nama, JK, Tgl_Lahir, Prodi)
VALUES  ("1701001", "Maulana", "L", "1997-02-14", "S1 RPL"),
        ("1701002", "Asyifa", "P", "1998-01-31", "S1 RPL"),
        ("1701003", "Lala", "P", "1999-07-07", "S1 IF"),
        ("1701004", "Hidayat", "L", "1999-06-20", "S1 TI"),
        ("1701005", "Marina", "L", "1996-02-21", "S1 IF"),
        ("1701006", "Zulaikha", "P", "1998-03-20", "S1 IF"),
        ("1701007", "Daniel", "L", "1997-06-05", "S1 SI"),
        ("1701008", "Andini", "L", "1997-12-10", "S1 RPL"),
        ("1701009", "Zetta", "L", "1998-09-27", "S1 SI"),
        ("1701010", "Astunggani", "P", "1997-01-06", "S1 IF");

--@block
SELECT * FROM mahasiswa


--@block
UPDATE mahasiswa 
SET Nama = 'Dipsy', Nama = 'Lala'
WHERE NIM = 1701003;