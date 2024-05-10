<?php
include_once('koneksi.php');

// tangkap data dari form

$nama = $POST['nama'];
$kode = $POST['kode'];
$email = $POST['email'];
$tgl_lahir = $POST['tgl_lahir'];
$tmp_lahir = $POST['tmp_lahir'];
$gender = $POST['gender'];
$alamat = $POST['alamat'];
$kelurahan_id = $POST['kelurahan_id'];


//buat query insert
$query = "INSERT INTO pasien (nama, kode, email, tgl_lahir, tmp_lahir, gender, alamat, kelurahan_id VALUES ('$nama', '$kode', '$email', '$tgl_lahir', '$tmp_lahir', '$gender', '$alamat', '$kelurahan_id')";

//eksekusi query
if ($dbh->query($query))  {
} else {
    echo "Gagal menyimpan data";
}
