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