<?php
include_once('koneksi.php');

//tangkap data

//tangkap data

$id = $_POST['id'];
$unit_ruangan = $_POST['unit_ruangan'];
$jam_operasional = $_POST['jam_operasional'];

//$kelurahan = $_POST['unit_kerja_id'];



//queryinsert
$query = "UPDATE unit_kerja SET unit_ruangan='$unit_ruangan', jam_operasional='$jam_operasional' WHERE id='$id'";


//eksekusi query
if ($dbh->query($query)){
    header('location: unit_kerja.php');
} else {
    echo "Gagal menyimpan data";
}











?>