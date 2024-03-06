<?php
//tangkap input form
$customer = $_POST['customer'];
$produk = $_POST['produk'];
$jumlah = $_POST['jumlah'];

//array harga produk
$harga =[
    'TV' => 4200000,
    'Kulkas' => 3100000,
    'Mesin Cuci' => 3800000
];

//hitung total harga (jumlah * harga produk)
$total = $jumlah * $harga[$produk];

//format rupiah
$total = number_format($total);

echo "Nama customer: $customer";
echo "<br> Poduk: $produk";
echo "<br> Jumlah Beli: $jumlah";
echo "<br> Total Belanja: $total";