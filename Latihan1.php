<?php

$mahasiswa = [
    [
        "nim" => "2352004",
        "nama" => "Fangki Zulkarnain",
        "jurusan" => "Teknologi Informasi",
        "email" => "bayu_23520004@stimata.ac.id",
        "img" =>  "img/2.png"
    ],
    [
        "nim" => "23520001",
        "nama" => "Suci Wulandari",
        "jurusan" => "Teknologi Informasi",
        "email" => "Suciwulan@stimata.ac.id",
        "img" =>  "img/suci.jpg"
    ],
    [
        "nim" => "23520005",
        "nama" => "dwi",
        "jurusan" => "Teknologi Informasi",
        "email" => "dwi@stimata.ac.id",
        "img" =>  "img/dwi.png"
    ],

];

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Latihan GET</title>
    </head>
    <body>
        <h1>Daftar Mahasiswa</h1>
        <ul>    
            <?php foreach ($mahasiswa as $mhs) : ?>
                <li>
                <a href="latihan2.php?nama=<?php echo $mhs['nama']; ?>
                &nim=<?php echo $mhs['nim']; ?>
                &jurusan=<?php echo $mhs['jurusan']; ?>
                &email=<?php echo $mhs['email']; ?>
                &img=<?php echo $mhs['img']; ?>"> 
                <?php echo $mhs['nama']; ?></a>  
                </li>
            <?php endforeach; ?>
        </ul>    
    </body>
</html>