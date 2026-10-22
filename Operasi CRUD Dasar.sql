[CREATE]
INSERT INTO lahan
(nama_lahan, lokasi, luas_m2, jenis_tanaman)
VALUES
('Lahan Padi Utara', 'Desa Sukamaju', 1500.00, 'Padi'),
('Lahan Padi Barat', 'Desa Sumberagung', 800.00, 'Padi'),
('Lahan Padi Selatan', 'Desa Kedungrejo', 2000.00, 'Padi');

INSERT INTO sensor
(kode_sensor, nama_sensor, status_sensor)
VALUES
('IOT-001', 'Paket Sensor Lahan 1', 'Aktif'),
('IOT-002', 'Paket Sensor Lahan 2', 'Aktif'),
('IOT-003', 'Paket Sensor Lahan 3', 'Aktif');

INSERT INTO data_sensor
(id_lahan, id_sensor, waktu_pengukuran,
 kelembapan_tanah, suhu_udara, status_kondisi)
VALUES
(1, 1, '2026-10-20 08:00:00', 65.00, 29.5, 'Normal'),
(2, 2, '2026-10-20 08:15:00', 60.00, 30.0, 'Normal'),
(3, 3, '2026-10-20 08:30:00', 25.00, 33.0, 'Perlu Penyiraman');

[READ]
SELECT * FROM lahan;

[UPDATE]
UPDATE data_sensor
SET kelembapan_tanah = 63.50
WHERE id_data = 2;

[DELETE]
DELETE FROM data_sensor
WHERE id_data = 3;
