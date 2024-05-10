<?php
include_once('koneksi.php');
$kelurahan = $dbh->query('SELECT * FROM periksa');
$id = $_GET['id'];
$periksa = $dbh->query("SELECT * FROM periksa WHERE id_data = $id")->fetch();

include_once('top.php');
include_once('menu.php');
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
<body>
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Edit Check-up</h1>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<form action="periksa_update.php" method="post">
  <input type="hidden" name="id" value="<?= $periksa['id_data']?>">
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Tanggal</label> 
    <div class="col-8">
      <input id="tanggal" name="tanggal" type="date" class="form-control" required="required" value="<?= $periksa['tanggal']?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="kode" class="col-4 col-form-label">berat</label> 
    <div class="col-8">
      <input id="berat" name="berat" type="text" class="form-control" required="required" value="<?= $periksa['berat']?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="email" class="col-4 col-form-label">Tinggi</label> 
    <div class="col-8">
      <input id="tinggi" name="tinggi" type="text" class="form-control" required="required" value="<?= $periksa['tinggi'] ?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="tmp_lahir" class="col-4 col-form-label">Tensi</label> 
    <div class="col-8">
      <input id="tensi" name="tensi" type="text"  class="form-control" required="required" value="<?= $periksa['tensi'] ?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="tgl_lahir" class="col-4 col-form-label">Keterangan</label> 
    <div class="col-8">
      <input id="keterangan" name="keterangan" type="text" class="form-control" required="required" value="<?= $periksa['keterangan'] ?>">
    </div>
  </div>
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form> 
       
    </div>
</main>
</body>


<?php
include_once('bottom.php');
?>