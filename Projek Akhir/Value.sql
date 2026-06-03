
INSERT INTO pelanggan (nama_pelanggan, no_telepon, alamat) VALUES
('Andi Saputra','081234567801','Jl. Pemuda No.1'),
('Budi Santoso','081234567802','Jl. Veteran No.2'),
('Citra Dewi','081234567803','Jl. Melati No.3'),
('Dedi Kurniawan','081234567804','Jl. Mawar No.4'),
('Eko Prasetyo','081234567805','Jl. Anggrek No.5'),
('Fitri Handayani','081234567806','Jl. Kenanga No.6'),
('Galih Nugroho','081234567807','Jl. Sudirman No.7'),
('Hendra Wijaya','081234567808','Jl. Diponegoro No.8'),
('Indah Lestari','081234567809','Jl. Kartini No.9'),
('Joko Susilo','081234567810','Jl. Merdeka No.10'),
('Kiki Amelia','081234567811','Jl. Flamboyan No.11'),
('Lukman Hakim','081234567812','Jl. Dahlia No.12'),
('Maya Sari','081234567813','Jl. Cemara No.13'),
('Nanda Putra','081234567814','Jl. Mangga No.14'),
('Oki Setiawan','081234567815','Jl. Rambutan No.15');


INSERT INTO mekanik (nama_mekanik, spesialisasi, no_telepon) VALUES
('Agus Setiawan','Mesin','082111111111'),
('Bambang Riyadi','Kelistrikan','082111111112'),
('Cahyo Nugroho','Injeksi','082111111113'),
('Dimas Prakoso','Transmisi','082111111114'),
('Edi Santoso','Mesin','082111111115'),
('Fajar Hidayat','Kelistrikan','082111111116'),
('Gunawan','Injeksi','082111111117'),
('Hariyanto','Body Repair','082111111118'),
('Irfan Maulana','Transmisi','082111111119'),
('Jamaludin','Mesin','082111111120');


INSERT INTO motor (id_pelanggan,no_plat,merek,model,tahun) VALUES
(1,'S1234AA','Honda','Beat',2020),
(2,'S1235AB','Yamaha','NMAX',2021),
(3,'S1236AC','Honda','Vario 160',2023),
(4,'S1237AD','Suzuki','Satria FU',2019),
(5,'S1238AE','Yamaha','Mio M3',2020),
(6,'S1239AF','Honda','Scoopy',2022),
(7,'S1240AG','Kawasaki','KLX 150',2021),
(8,'S1241AH','Honda','PCX 160',2023),
(9,'S1242AI','Yamaha','Aerox',2022),
(10,'S1243AJ','Suzuki','Nex II',2021),
(11,'S1244AK','Honda','CB150R',2020),
(12,'S1245AL','Yamaha','XSR 155',2023),
(13,'S1246AM','Honda','Genio',2021),
(14,'S1247AN','Yamaha','Fazzio',2022),
(15,'S1248AO','Honda','Supra X 125',2019);


INSERT INTO layanan (nama_layanan,deskripsi,biaya_layanan) VALUES
('Servis Ringan','Pemeriksaan umum',50000),
('Servis Lengkap','Servis keseluruhan motor',150000),
('Ganti Oli Mesin','Penggantian oli mesin',30000),
('Ganti Oli Gardan','Penggantian oli gardan',20000),
('Tune Up','Penyetelan mesin',100000),
('Cuci Motor','Pencucian motor',25000),
('Servis Rem','Perawatan rem',50000),
('Servis CVT','Pembersihan CVT',120000),
('Spooring Motor','Penyetelan roda',80000),
('Servis Injeksi','Pembersihan injektor',130000);


INSERT INTO sukucadang (nama_sparepart,harga_satuan,stok) VALUES
('Oli Mesin',60000,100),
('Oli Gardan',25000,80),
('Kampas Rem Depan',45000,50),
('Kampas Rem Belakang',40000,50),
('Busi NGK',25000,100),
('Filter Udara',35000,60),
('Aki Motor',250000,20),
('V-Belt',120000,30),
('Roller CVT',80000,40),
('Lampu LED',50000,50),
('Ban Depan',200000,25),
('Ban Belakang',250000,25),
('Rantai Motor',150000,20),
('Gear Set',180000,15),
('Kabel Gas',30000,40);


INSERT INTO perbaikan
(id_motor,id_mekanik,tanggal_masuk,tanggal_selesai,status_pengerjaan)
VALUES
(1,1,'2026-05-01','2026-05-01','Selesai'),
(2,2,'2026-05-02','2026-05-03','Selesai'),
(3,3,'2026-05-03','2026-05-04','Selesai'),
(4,4,'2026-05-04','2026-05-05','Selesai'),
(5,5,'2026-05-05','2026-05-06','Selesai'),
(6,6,'2026-05-06','2026-05-07','Selesai'),
(7,7,'2026-05-07','2026-05-08','Selesai'),
(8,8,'2026-05-08','2026-05-09','Selesai'),
(9,9,'2026-05-09','2026-05-10','Selesai'),
(10,10,'2026-05-10','2026-05-11','Selesai'),
(11,1,'2026-05-11',NULL,'Proses'),
(12,2,'2026-05-12',NULL,'Proses'),
(13,3,'2026-05-13',NULL,'Dalam Antrian'),
(14,4,'2026-05-14',NULL,'Dalam Antrian'),
(15,5,'2026-05-15',NULL,'Dalam Antrian');


INSERT INTO detail_layanan
(id_layanan,id_perbaikan,harga_layanan,subtotal_layanan)
VALUES
(1,1,50000,50000),
(3,1,30000,30000),
(2,2,150000,150000),
(4,2,20000,20000),
(5,3,100000,100000),
(7,3,50000,50000),
(8,4,120000,120000),
(3,5,30000,30000),
(6,5,25000,25000),
(10,6,130000,130000),
(2,7,150000,150000),
(5,8,100000,100000),
(1,9,50000,50000),
(7,10,50000,50000),
(3,11,30000,30000),
(8,12,120000,120000),
(9,13,80000,80000),
(10,14,130000,130000),
(2,15,150000,150000),
(6,15,25000,25000);


INSERT INTO detail_perbaikan
(id_perbaikan,id_sparepart,jumlah_dipakai,harga_satuan,subtotal_sparepart)
VALUES
(1,1,1,60000,60000),
(1,5,1,25000,25000),
(2,2,1,25000,25000),
(2,3,1,45000,45000),
(3,4,1,40000,40000),
(3,5,1,25000,25000),
(4,8,1,120000,120000),
(5,1,1,60000,60000),
(6,6,1,35000,35000),
(7,7,1,250000,250000),
(8,9,1,80000,80000),
(9,10,2,50000,100000),
(10,11,1,200000,200000),
(11,12,1,250000,250000),
(12,13,1,150000,150000),
(13,14,1,180000,180000),
(14,15,1,30000,30000),
(15,1,1,60000,60000),
(15,3,1,45000,45000),
(15,5,1,25000,25000);


INSERT INTO pembayaran
(id_perbaikan,total_pembayaran,metode_pembayaran,status_pembayaran)
VALUES
(1,165000,'Tunai','Lunas'),
(2,240000,'Transfer','Lunas'),
(3,215000,'QRIS','Lunas'),
(4,240000,'Tunai','Lunas'),
(5,115000,'Transfer','Lunas'),
(6,165000,'QRIS','Lunas'),
(7,400000,'Tunai','Lunas'),
(8,180000,'Transfer','Lunas'),
(9,150000,'QRIS','Lunas'),
(10,250000,'Tunai','Lunas'),
(11,280000,'Transfer','Belum Bayar'),
(12,270000,'QRIS','Belum Bayar'),
(13,260000,'Tunai','Belum Bayar'),
(14,160000,'Transfer','Belum Bayar'),
(15,305000,'QRIS','Belum Bayar');