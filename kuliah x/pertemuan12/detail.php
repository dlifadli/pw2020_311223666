<?php
session_start();

if (!isset($_SESSION['login'])) {
  header("Location: login.php");
  exit;
}
require "functions.php";

// jika tidak ada id di url
if (!isset($_GET['id'])) {
  header("Location: index.php");
  exit;
}

// ambil id dari URL
$id = $_GET["id"];

// query mahasiswa berdasarkan id
$m = query("SELECT * FROM mahasiswa WHERE id = $id");
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detail Mahasiswa</title>
</head>

<body>
  <h3>Detail Mahasiswa</h3>
  <ul>
    <li><img src="img/<?= $m['gambar']; ?>" width="100"></li>
    <li>NRP : <?= $m['nrp']; ?></li>
    <li>Nama : <?= $m['nama']; ?></li>
    <li>Email : <?= $m['email']; ?></li>
    <li>Jurusan : <?= $m['jurusan']; ?></li>
    <li><a href="ubah.php?id=<?= $m['id']; ?>">Ubah</a> | <a href="hapus.php?id=<?= $m['id']; ?>" onclick="return confirm('Apakah Anda Yakin Ingin Menghapus?');">Hapus</a></li>
    <li><a href="index.php">Kembali ke Daftar Mahasiswa</a></li>
  </ul>

</body>

</html>