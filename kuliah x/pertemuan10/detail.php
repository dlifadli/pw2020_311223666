<?php
require 'functions.php';

// ambil id dari URL
$id = $_GET['id'];

// query mahasiswa berdasarkan id
$mahasiswa = query('SELECT * FROM mahasiswa WHERE id = $id');
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
    <?php foreach ($mahasiswa as $m) : ?>
      <li><img src="img/<? $m['gambar']; ?>"></li>
      <li>NRP : <?= $m['nrp']; ?></li>
      <li>Nama : <?= $m['nama']; ?></li>
      <li>Email : <?= $m['email']; ?></li>
      <li>Jurusan : <?= $m['jurusan']; ?></li>
      <li><a href="">Ubah</a> | <a href="">Hapus</a></li>
      <li><a href="latihan3.php">Kembali ke Daftar Mahasiswa</a></li>
    <?php endforeach; ?>
  </ul>

</body>

</html>