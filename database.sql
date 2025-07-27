-- DROP & CREATE TABEL
DROP TABLE IF EXISTS data_rkap;

CREATE TABLE data_rkap (
    id INT AUTO_INCREMENT PRIMARY KEY,
    puskesmas VARCHAR(100) NOT NULL,
    bulan INT NOT NULL,
    tahun INT NOT NULL,
    saldo_awal DOUBLE DEFAULT 0,
    jasa_layanan DOUBLE DEFAULT 0,
    klaim_dinas DOUBLE DEFAULT 0,
    kapitasi DOUBLE DEFAULT 0,
    non_kapitasi DOUBLE DEFAULT 0,
    jagir DOUBLE DEFAULT 0,
    parkir DOUBLE DEFAULT 0,
    sewa DOUBLE DEFAULT 0,
    lain2 DOUBLE DEFAULT 0,
    pegawai DOUBLE DEFAULT 0,
    barang_jasa DOUBLE DEFAULT 0,
    modal DOUBLE DEFAULT 0,
    total_pendapatan DOUBLE DEFAULT 0,
    total_pengeluaran DOUBLE DEFAULT 0,
    saldo_akhir DOUBLE DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- INSERT DATA DARI EXCEL MASTER_SP3BP
INSERT INTO data_rkap (puskesmas, bulan, tahun, saldo_awal, jasa_layanan, klaim_dinas, kapitasi, non_kapitasi, jagir, parkir, sewa, lain2, pegawai, barang_jasa, modal, total_pendapatan, total_pengeluaran, saldo_akhir, created_at) VALUES 
('KELING 1', 7, 2025, 193133082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 193133082, '2025-07-27 00:00:00'),
('KELING 2', 7, 2025, 23668904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23668904, '2025-07-27 00:00:00'),
('BANGSRI 1', 7, 2025, 96986311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96986311, '2025-07-27 00:00:00'),
('BANGSRI 2', 7, 2025, 8319919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8319919, '2025-07-27 00:00:00'),
('KEMBANG', 7, 2025, 52389422, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52389422, '2025-07-27 00:00:00'),
('MLONGGO', 7, 2025, 14168110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14168110, '2025-07-27 00:00:00'),
('PAKIS AJI', 7, 2025, 22437998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22437998, '2025-07-27 00:00:00'),
('JEPARA', 7, 2025, 115260229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115260229, '2025-07-27 00:00:00'),
('TAHUNAN', 7, 2025, 21339584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21339584, '2025-07-27 00:00:00'),
('BATEALIT', 7, 2025, 14336059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14336059, '2025-07-27 00:00:00'),
('KEDUNG 1', 7, 2025, 43656371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43656371, '2025-07-27 00:00:00'),
('KEDUNG 2', 7, 2025, 14167693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14167693, '2025-07-27 00:00:00'),
('PECANGAAN', 7, 2025, 14402163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14402163, '2025-07-27 00:00:00'),
('KALINYAMATAN', 7, 2025, 13145356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13145356, '2025-07-27 00:00:00'),
('WELAHAN 1', 7, 2025, 12734697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12734697, '2025-07-27 00:00:00'),
('WELAHAN 2', 7, 2025, 10839301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10839301, '2025-07-27 00:00:00'),
('MAYONG 1', 7, 2025, 36529376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36529376, '2025-07-27 00:00:00'),
('MAYONG 2', 7, 2025, 17286055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17286055, '2025-07-27 00:00:00'),
('NALUMSARI 1', 7, 2025, 13917647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13917647, '2025-07-27 00:00:00'),
('RSUD Kartini', 7, 2025, 78040965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78040965, '2025-07-27 00:00:00'),
('KARIMUN', 7, 2025, 14830790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14830790, '2025-07-27 00:00:00'),
('DONOROJO', 7, 2025, 19539488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19539488, '2025-07-27 00:00:00');
