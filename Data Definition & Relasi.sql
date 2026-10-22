CREATE DATABASE IF NOT EXISTS smart_farming_db;

USE smart_farming_db;

-- Tabel induk 1: lahan
CREATE TABLE lahan (
    id_lahan INT UNSIGNED AUTO_INCREMENT,
    nama_lahan VARCHAR(100) NOT NULL,
    lokasi VARCHAR(150) NOT NULL,
    luas_m2 DECIMAL(10,2) NOT NULL,
    jenis_tanaman VARCHAR(50) NOT NULL,

    PRIMARY KEY (id_lahan)
) ENGINE=InnoDB;

-- Tabel induk 2: sensor
CREATE TABLE sensor (
    id_sensor INT UNSIGNED AUTO_INCREMENT,
    kode_sensor VARCHAR(20) NOT NULL UNIQUE,
    nama_sensor VARCHAR(80) NOT NULL,
    status_sensor VARCHAR(20) NOT NULL,

    PRIMARY KEY (id_sensor)
) ENGINE=InnoDB;

-- Tabel transaksi/anak: data_sensor
CREATE TABLE data_sensor (
    id_data BIGINT UNSIGNED AUTO_INCREMENT,
    id_lahan INT UNSIGNED NOT NULL,
    id_sensor INT UNSIGNED NOT NULL,
    waktu_pengukuran DATETIME NOT NULL,
    kelembapan_tanah DECIMAL(5,2) NOT NULL,
    suhu_udara DECIMAL(4,1) NOT NULL,
    status_kondisi VARCHAR(30) NOT NULL,

    PRIMARY KEY (id_data),

    CONSTRAINT fk_data_lahan
        FOREIGN KEY (id_lahan)
        REFERENCES lahan(id_lahan),

    CONSTRAINT fk_data_sensor
        FOREIGN KEY (id_sensor)
        REFERENCES sensor(id_sensor)
) ENGINE=InnoDB;
