-- Nama : Tasya dwi raham dani 
-- Nim : 23241028
-- Kelas : Pendidikan Teknologi Informasi / A
-- Mata kuliah : Administrasi Data

-- Soal 1 
/*Munculkan nama produk,tgl transaksi ,bulan , tahun , dan selisih hari dari transaksi dengan tanggal 30 juni 2023
 atas semua produk ditransaksikan*/
 
SELECT p.nama_produk, t.tgl_transaksi, MONTHNAME(t.tgl_transaksi) AS bulan, YEAR(t.tgl_transaksi) AS tahun,
DATEDIFF(t.tgl_transaksi, '2023-06-30') AS selisih_hari
FROM transaksi t
JOIN produk p ON t.id_produk = p.id_produk;


-- soal 2
 /*Tampilkan nama pelanggan dan nilai transaksinya dengan nilai transaksi terkecil*/
 
SELECT nama_pelanggan_dqlab,nilai_transaksi FROM transaksi WHERE nilai_transaksi = (
SELECT MIN(nilai_transaksi) FROM transaksi);
    
 -- soal 3
 /*Tampilkan bulan , nama produk ,kategori ,dan harga dari produk yang tidak pernah terjual pada bulan mei*/
 SELECT 
    'Mei' AS bulan,
    p.nama_produk,
    p.kategori,
    p.harga
FROM 
    produk p
WHERE 
    p.id_produk NOT IN (
        SELECT t.id_produk
        FROM transaksi t
        WHERE MONTH(t.tgl_transaksi) = 5
    );

 
 
 
 