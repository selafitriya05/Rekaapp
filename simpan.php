<?php
include 'koneksi.php';

$data = json_decode(file_get_contents("php://input"), true);

if (!$data) {
    echo json_encode(["status" => "error", "message" => "Data kosong!"]);
    exit;
}

$stmt = $conn->prepare("INSERT INTO data_rkap (puskesmas, bulan, tahun, saldo_awal, jasa_layanan, klaim_dinas, kapitasi, non_kapitasi, jagir, parkir, sewa, lain2, pegawai, barang_jasa, modal, total_pendapatan, total_pengeluaran, saldo_akhir, created_at)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("sii" + "d"*16 + "s",
    $data["puskesmas"], $data["bulan"], $data["tahun"], $data["saldo_awal"],
    $data["jasa_layanan"], $data["klaim_dinas"], $data["kapitasi"], $data["non_kapitasi"],
    $data["jagir"], $data["parkir"], $data["sewa"], $data["lain2"],
    $data["pegawai"], $data["barang_jasa"], $data["modal"],
    $data["total_pendapatan"], $data["total_pengeluaran"], $data["saldo_akhir"],
    $data["created_at"]
);

if ($stmt->execute()) {
    echo json_encode(["status" => "success"]);
} else {
    echo json_encode(["status" => "error", "message" => $stmt->error]);
}
$stmt->close();
$conn->close();
?>
