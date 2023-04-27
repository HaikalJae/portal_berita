<?php
$conn = mysqli_connect("localhost", "root", "", "db_portal_berita");


if (isset($_POST["submit"])) {
    $judul = $_POST["judul"];
    $isi = $_POST["kategori"];
    $tanggal = $_POST["tanggal"];
    $gambar = $_POST["gambar"];
    $penulis = $_POST["penulis"];
    $kategori = $_POST["kategori"];
    

    $query = "INSERT INTO tb_berita 
            VALUES
            ('','$judul','$isi','$tanggal','$gambar','$penulis','$kategori')
        ";

    mysqli_query($conn, $query);
};

?>

<html>

<head>
    <title>Tambah berita</title>
</head>

<body>
    <form action="" method="post">
        <ul>
            <li>
                <label for="judul">judul</label>
                <input type="text" name="judul" id="judul">
            </li>
            
            <li>
                <label for="isi">isi</label>
                <textarea name="isi" id="isi" cols="30" rows="10"></textarea>
            </li>
        
            <li>
                <label for="tanggal">tanggal</label>
                <input type="text" name="tanggal" id="tanggal">
            </li>
            
            <li>
                <label for="gambar">Gambar</label>
                <input type="text" name="gambar" id="gambar">
            </li>
            
            <li>
                <label for="penulis">penulis</label>
                <input type="text" name="penulis" id="penulis">
            </li>
            
            <li>
                <label for="kategori">kategori</label>
                
			<?php
			// $nama = "SELECT * FROM tb_siswa";
			$data = mysqli_query($conn, "SELECT * FROM tb_kategori ORDER BY nama_kategori ASC");
			while ($d = mysqli_fetch_array($data)) {

                echo "<input type='radio' . name= 'kategori' . value='" . $d["id_kategori"] . '<br>'."'>" . $d["nama_kategori"] . "</option>";
			}
			?>
		</select>
            </li>
        </ul>
        <button type="submit" name="submit">Tambah</button>
    </form>
</body>

</html>