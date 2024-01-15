CREATE DATABASE trigger_db

--@block
USE trigger_db

--@block
CREATE TABLE barang(id_brg VARCHAR(5) NOT NULL,
    nama_brg VARCHAR(10) NOT NULL, 
    stok INT(5) NOT NULL,
    PRIMARY KEY (id_brg)
)ENGINE = MyISAM;

--@block
CREATE TABLE pembelian ( id_pem int (5) NOT NULL, 
    id_brg varchar (5)NOT NULL, 
    jml_beli int (5) NOT NULL, 
    PRIMARY KEY (id_pem)
) ENGINE = MyISAM;

--@block
CREATE TRIGGER InStok
BEFORE INSERT ON barang
FOR EACH ROW
BEGIN
    SET NEW.stok = NEW.stok + 1;
END;

--@block
INSERT INTO barang
VALUES ('1', 'Flashdisk', 4)

--@block
SELECT * FROM barang

--@block
CREATE TRIGGER deleteChild
AFTER DELETE ON barang
FOR EACH ROW
BEGIN
    DELETE FROM pembelian
    WHERE id_brg = OLD.id_brg;
END;

--@block
SHOW TRIGGERS

--@block
DROP TRIGGER InStok


--@block
SHOW TRIGGERS

--@block
CREATE TRIGGER updateStok
AFTER INSERT ON pembelian
FOR EACH ROW
BEGIN
    UPDATE barang
    SET stok = stok + NEW.jml_beli
    WHERE id_brg = NEW.id_brg;
END;


--@block
SELECT * FROM pembelian