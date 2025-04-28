CREATE DATABASE bioskop;
USE bioskop;

CREATE TABLE film (
    id_film INT PRIMARY KEY,
    judul_film VARCHAR(255),
    di_putar TEXT,
    tanggal_rilis INT
);

CREATE TABLE rumah_produksi (
    no_hp INT PRIMARY KEY,
    alamat VARCHAR(255),
    umur INT,
    nama VARCHAR(255),
    id_film INT,
    FOREIGN KEY (id_film) REFERENCES film(id_film)
);

CREATE TABLE Studio (
    nama VARCHAR(255) PRIMARY KEY,
    kapasitas INT,
    tanggal_rilis INT
);

CREATE TABLE jadwal_tayang (
    id_jadwal INT PRIMARY KEY,
    tanggal_tayang_waktu DATETIME
);

CREATE TABLE pengunjung (
    no_hp INT PRIMARY KEY,
    nama VARCHAR(255),
    alamat VARCHAR(255),
    umur INT,
    id_jadwal INT,
    FOREIGN KEY (id_jadwal) REFERENCES jadwal_tayang(id_jadwal)
);
INSERT INTO film (id_film, judul_film, di_putar, tanggal_rilis) VALUES
(1, 'Avengers: Endgame', 'Studio 1', 2019),
(2, 'Inception', 'Studio 2', 2010),
(3, 'The Batman', 'Studio 3', 2022);

-- tablel: kategori _rumah produksi
INSERT INTO rumah_produksi (no_hp, alamat, umur, nama, id_film) VALUES
(812345678, 'Jakarta', 20, 'Marvel Studios', 1),
(812345679, 'Bandung', 25, 'Warner Bros', 2),
(812345680, 'Surabaya', 30, 'DC Films', 3);

-- tabel : kategori studio
INSERT INTO Studio (nama, kapasitas, tanggal_rilis) VALUES
('Studio 1', 150, 2019),
('Studio 2', 200, 2010),
('Studio 3', 180, 2022);
 
 -- tabel : kategori jadwal_tayang
 INSERT INTO jadwal_tayang (id_jadwal, tanggal_tayang_waktu) VALUES
(1, '2025-05-01 14:00:00'),
(2, '2025-05-01 17:00:00'),
(3, '2025-05-02 20:00:00');

-- tabel : kategori pengunjung
INSERT INTO pengunjung (no_hp, nama, alamat, umur, id_jadwal) VALUES
(812345681, 'Budi', 'Depok', 22, 1),
(812345682, 'Ani', 'Bogor', 24, 2),
(812345683, 'Siti', 'Bekasi', 26, 3);

