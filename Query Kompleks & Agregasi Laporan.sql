SELECT
    l.nama_lahan,
    AVG(d.kelembapan_tanah) AS rata_rata_kelembapan,
    COUNT(d.id_data) AS jumlah_pengukuran
FROM data_sensor d
JOIN lahan l
    ON d.id_lahan = l.id_lahan
JOIN sensor s
    ON d.id_sensor = s.id_sensor
WHERE d.status_kondisi = 'Normal'
GROUP BY l.id_lahan, l.nama_lahan;
