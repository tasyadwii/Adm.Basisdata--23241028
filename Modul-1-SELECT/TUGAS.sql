USE Bioskop;

-- SELECT 1 Kolom
-- 1. Flim
SELECT f.flim AS flim_judul FROM movie AS f; 

-- 2. bioskop
SELECT b.bioskop AS bioskop_nama FROM bioskop AS b;

-- 3. jadwal tayang
SELECT j.jadwal_tayang AS jadwal_tayang FROM jadwal AS j;

-- 4. nomor kursi
SELECT n.nomor_kursi AS nomor_kursi FROM nomor AS n;

-- 5. tiket
SELECT t.tiket_harga AS tiket_harga FROM tiket AS t;

-- 6. pelanggan
SELECT p.pelanggan_nama AS pelanggan_nama FROM pelanggan AS p;

-- 7. Karyawan
SELECT k.karyawan_nama AS karyawan_nama FROM karyawan AS k;

-- 8. genre
SELECT g.genre_nama AS genre FROM genre AS g;

-- 9. konsesi 
SELECT k.konsesi.item_nama AS item FROM konsesi AS k;

-- 10. pembayaran
SELECT p.pembayaran_metode AS pembayaran_metode FROM pembayaran AS p;

-- SELECT 2 Kolom 

-- 1. flim
SELECT f.flim_id AS flim_id, f.durasi AS flim_durasi FROM flim AS f;

-- 2. bioskop
SELECT b.bioskop_id AS bioskop_id, b.lokasi AS bioskop_lokasi FROM bioskop AS b;

-- 3. jadwal tayang
SELECT j.jadwal_tayang_id AS menunjukkan_id, j.waktu_mulai AS waktu_mulai FROM jadwal_tayang AS j;

-- 4. nomor kursi
SELECT n.nomor_kursi_id AS kursi_id, n.status AS kursi_status FROM jadwal_tayang AS n;

-- 5. tiket
SELECT t.tiket_id AS tiket_id, t.tanggal_pembelian AS tanggal_pembelian FROM tiket AS t;

-- 6. pelanggan 
SELECT p.pelanggan_id AS pelanggan_id, pelanggan.email AS pelanggan_email FROM pelaanggan AS p;

-- 7. karyawan 
SELECT k.karyawan_id AS karyawan_id, k.posisi AS posisi_karyawan FROM karyawan AS k;
 
 -- 8.  genre
 SELECT g.genre_id AS genre_id, g.keterangan AS keterangan_genre FROM genre AS g;
 
 -- 9. konsesi 
 SELECT k.konsesi_id AS konsesi_id ,konsesisi_harga FROM genre AS g;
 
 -- 10. pembayaran 
 SELECT p.pembayaran_id AS pembayaran_id, p.pembayaran_tanggal FROM pembayaran AS p;

