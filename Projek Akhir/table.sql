DROP DATABASE bengkelmotor;

CREATE DATABASE bengkelmotor;
USE bengkelmotor;


CREATE TABLE pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama_pelanggan VARCHAR(100) NOT NULL,
    no_telepon VARCHAR(15),
    alamat TEXT
);

CREATE TABLE mekanik (
    id_mekanik INT AUTO_INCREMENT PRIMARY KEY,
    nama_mekanik VARCHAR(100) NOT NULL,
    spesialisasi VARCHAR(50),
    no_telepon VARCHAR(50)
);

CREATE TABLE motor (
    id_motor INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT NOT NULL,
    no_plat VARCHAR(15) UNIQUE NOT NULL,
    merek VARCHAR(50),
    model VARCHAR(50),
    tahun INT,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE layanan (
    id_layanan INT AUTO_INCREMENT PRIMARY KEY,
    nama_layanan VARCHAR(100) NOT NULL,
    deskripsi TEXT,
    biaya_layanan DECIMAL(10,2) NOT NULL
);

-- Tabel Suku Cadang
CREATE TABLE sukucadang (
    id_sparepart INT AUTO_INCREMENT PRIMARY KEY,
    nama_sparepart VARCHAR(100) NOT NULL,
    harga_satuan DECIMAL(10,2) NOT NULL,
    stok INT NOT NULL
);


CREATE TABLE perbaikan (
    id_perbaikan INT AUTO_INCREMENT PRIMARY KEY,
    id_motor INT NOT NULL,
    id_mekanik INT NOT NULL,
    tanggal_masuk DATE NOT NULL,
    tanggal_selesai DATE,
	status_pengerjaan ENUM('Dalam Antrian','Proses', 'Selesai') DEFAULT 'Dalam Antrian',

    FOREIGN KEY (id_motor) REFERENCES motor(id_motor)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_mekanik) REFERENCES mekanik(id_mekanik)
        ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE detail_layanan (
    id_detaillayanan INT AUTO_INCREMENT PRIMARY KEY,
    id_layanan INT NOT NULL,
    id_perbaikan INT NOT NULL,
    harga_layanan DECIMAL(10,2) NOT NULL,
    subtotal_layanan DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_layanan) REFERENCES layanan(id_layanan)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (id_perbaikan) REFERENCES perbaikan(id_perbaikan)
        ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE detail_perbaikan (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_perbaikan INT NOT NULL,
    id_sparepart INT NOT NULL,
    jumlah_dipakai INT NOT NULL,
    harga_satuan DECIMAL(10,2) NOT NULL,
    subtotal_sparepart DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_perbaikan) REFERENCES perbaikan(id_perbaikan)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_sparepart) REFERENCES sukucadang(id_sparepart)
        ON UPDATE CASCADE ON DELETE RESTRICT
);


CREATE TABLE pembayaran (
    id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,
    id_perbaikan INT NOT NULL,
    total_pembayaran DECIMAL(10,2) NOT NULL,
    metode_pembayaran ENUM('Tunai', 'Transfer', 'QRIS') NOT NULL,
    status_pembayaran ENUM('Belum Bayar','Lunas') DEFAULT 'Belum Bayar',

    FOREIGN KEY (id_perbaikan) REFERENCES perbaikan(id_perbaikan)
        ON UPDATE CASCADE ON DELETE CASCADE
);