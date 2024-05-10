<?php
include_once('koneksi.php');

//tangkap data

$unit_ruangan['unit_ruangan'];
$jam_operasional = $_POST['jam_operasional'];



//queryinsert
$query = "INSERT INTO unit_kerja (unit_ruangan, jam_operasional) VALUES 
('$unit_ruangan', '$jam_operasional') ";


//eksekusi query
if ($dbh->query($query)){
    header('location: unit_kerja.php');
} else {
    echo "Gagal menyimpan data";
}









?>