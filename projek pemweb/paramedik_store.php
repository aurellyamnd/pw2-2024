<?php
include_once('koneksi.php');

//tangkap data

$nama = $_POST['nama'];
$gender = $_POST['gender'];
$tmp_lahir = $_POST['tmp_lahir'];
$tgl_lahir = $_POST['tgl_lahir'];
$kategori= $_POST['kategori'];
$telpon = $_POST['telpon'];
$alamat = $_POST['alamat'];


//queryinsert
$query = "INSERT INTO paramedik (nama, gender, tmp_lahir, tgl_lahir, kategori, telpon, alamat) VALUES 
('$nama', '$gender' , '$tmp_lahir', '$tgl_lahir', '$kategori', '$telpon' , '$alamat') ";


//eksekusi query
if ($dbh->query($query)){
    header('location: paramedik.php');
} else {
    echo "Gagal menyimpan data";
}











?>