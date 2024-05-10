<?php
include_once('top.php');
include_once('menu.php');
include_once('koneksi.php');

$query = "SELECT * FROM paramedik";
$paramediks = $dbh->query($query)
?>

<head>

<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="Template/css/styles.css" rel="stylesheet" />

</head>
<style>
    h1{
        font-family: poppins, sans-serif;
        font-weight: 500;
        text-decoration: underline;
    }
</style>

<main>
    <div class="container-fluid px-4">

        <div class= "d-flex mt-4">
        <h3>Data Paramedik</h3>
        <a href="create._paramedik.php" class="btn btn-primary ms-auto"><strong>+Tambah</strong></a>
        </div>

<table class="table mt-5">
    <tr>

        <th>No</th>
        <th>Nama</th>
        <th>Gender</th>
        <th>Tempat Lahir</th>
        <th>Tanggal Lahir</th>
        <th>Kategori</th>
        <th>Telepon</th>
        <th>alamat</th>
        
    </tr>

    <?php 
    $no = 0;
    foreach ($paramediks as $paramedik): 
    ?>


    <tr>

        <td><?php echo $no = $no + 1; ?></td>
        <td><?= $paramedik['nama']?></td>
        <td><?= $paramedik['gender']?></td>
        <td><?= $paramedik['tmp_lahir']?></td>
        <td><?= $paramedik['tgl_lahir']?></td>
        <td><?= $paramedik['kategori']?></td>
        <td><?= $paramedik['telpon']?></td>
        <td><?= $paramedik['alamat']?></td>
        
      
        <td>
            <a href="paramedik_edit.php?id=<?= $paramedik['id']?>" class="btn btn-primary">
            <i  class="fas fa-edit"></i>
            </a>
            <a href="paramedik_delete.php?id=<?= $paramedik['id']?>" class="btn btn-danger">
            <i  class="fas fa-trash"></i>
            </a>
        </td>
       

    </tr>



    <?php endforeach; ?>
</table>




    </div>
</main> 



<?php
include_once('bottom.php');
?>