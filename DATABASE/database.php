<?php
//koneksi ke database
$koneksi = mysqli_connect("localhost", "root", "", "ujianmhs");

// ambil data dari tabel 
$result = mysqli_query($koneksi, "SELECT * from dosen");

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Halaman Admin</title>
</head>
<body>
  <h1>Daftar dosen</h1>
    <table border="1" cellpadding="10" cellspacing="0">
      <tr>
        <th>kode_dosen</th>
        <th>nama_dosen</th>
        <th>jekel</th>
        <th>tmp_lahir</th>
        <th>tgl_lahir</th>
        <th>alamat</th>
      </tr>

      <?php $i=1; ?>
        <?php while ($row = mysqli_fetch_assoc($result)) : ?>
        <tr>
            <td><?= $row['kode_dosen'] ?></td>
            <td><?= $row['nama_dosen'] ?></td>
            <td><?= $row['jekel'] ?></td>
            <td><?= $row['tmp_lahir'] ?></td>
			<td><?= $row['tgl_lahir'] ?></td>
			<td><?= $row['alamat'] ?></td>
        </tr>
        <?php $i++ ?>
        <?php endwhile ?>      
    </table>
</body>
</html>