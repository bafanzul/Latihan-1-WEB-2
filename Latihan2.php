
<?php

    $nama = $_GET['nama'];
    $nim = $_GET['nim'];
    $jurusan = $_GET['jurusan'];    
    $email = $_GET['email'];
    $img = $_GET['img'];

    if (!isset ($_GET["nama"])){
        //redirect
        header("Location: Latihan1.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detail Mahasiswa</title>
    </head>
    <body>

        <h1>Detail Mahasiswa</h1>
        <ul>
            <li><img src="<?= $img; ?>"></li> 
            <li><?= $nama; ?></li>
            <li><?= $nim; ?></li>
            <li><?= $jurusan; ?></li>
            <li><?= $email; ?></li>
        </ul>

    <a href = latihan1.php>Kembali ke halaman Sebelumnya</a>   
    </body>
</html>