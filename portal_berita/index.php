<?php 

$conn = mysqli_connect("localhost", "root", "", "db_portal_berita");

$result = mysqli_query($conn, "SELECT b.*, k.nama_kategori FROM tb_berita AS b JOIN tb_kategori AS k ON b.id_kategori = k.id_kategori" );

// while( $materi = mysqli_fetch_assoc($result) ) {
//     var_dump($materi["judul"]);
// }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Berita</title>
</head>
<body>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Judul </th>
            <th>isi</th>
            <th>tanggal</th>
            <th>gambar</th>
            <th>Penulis</th>
            <th>kategori</th>
        </tr>
        <?php while( $row = mysqli_fetch_assoc($result ) ) : ?>
        <tr>
            <td><?php echo $row["judul"];?></td>
            <td><?= $row["isi"];?></td>
            <td><?= $row["tanggal"];?></td>
            <td><img src="img/<?php echo $row["gambar"]; ?>" alt="<?php echo $row["gambar"];?>"></td>
            <td><?= $row["penulis"];?>  </td>
            <td><?= $row["nama_kategori"];?> </td>
        </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>