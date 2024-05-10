<?php
include_once('koneksi.php');
$unit_kerja = $dbh->query('SELECT * FROM unit_kerja');

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
        <h1 class="mt-4">Tambah Jadwal Layanan</h1>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<form action="kerja_store.php" method="post">
  <input type="hidden" name="id">
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Unit Ruangan</label> 
    <div class="col-8">
      <input id="unit_ruangan" name="unit_ruangan" type="text" class="form-control" required="required">
    </div>
  </div>

  <div class="form-group row">
    <label for="kode" class="col-4 col-form-label">Jam Operasional</label> 
    <div class="col-8">
      <input id="jam_operasional" name="jam_operasional" type="text" class="form-control" required="required">
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