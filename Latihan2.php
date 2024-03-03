
<?php

    $nama = $_GET['nama'];
    $nim = $_GET['nim'];
    $jurusan = $_GET['jurusan'];    
    $email = $_GET['email'];
    $img = $_GET['img'];
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detail Mahasiswa</title>
    </head>
    <body>

        <h1>Daftar Mahasiswa</h1>
        <ul>
            <img src=""><?= $img; ?> 
            <li><h4><?= $nama; ?></h4></li>
            <li><h4><?= $nim; ?></h4></li>
            <li><h4><?= $jurusan; ?></h4></li>
            <li><h4><?= $email; ?></h4></li>
        </ul>
    </body>
</html>