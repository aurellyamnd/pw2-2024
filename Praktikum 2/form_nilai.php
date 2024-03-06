<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Nilai</title>
</head>
<body>
    <h2 class="text-center">FORM NILAI</h2>
    <hr>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<form class="ml-5 ml-5" action="proses_nilai.php" method="GET">
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Nama</label> 
    <div class="col-8">
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <i class="fa fa-user"></i>
          </div>
        </div> 
        <input id="nama" name="nama" placeholder="Nama kamu" type="text" class="form-control">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label class="col-4 col-form-label" for="matkul">Mata Kuliah</label> 
    <div class="col-8">
      <select id="matkul" name="matkul" aria-describedby="matkulHelpBlock" class="custom-select">
        <option value="Pemrograman Website 2">Pemrograman Website 2</option>
        <option value="B. Inggris">B. Inggris</option>
        <option value="Statistika & Probabilitas">Statistika & Probabilitas</option>
        <option value="Jaringan Komputer">Jaringan Komputer</option>
        <option value="Komunikasi Efektif">Komunikasi Efektif</option>
        <option value="UI/UX">UI/UX</option>
      </select> 
      <span id="matkulHelpBlock" class="form-text text-muted">pilih mata kuliah umum*</span>
    </div>
  </div>
  <div class="form-group row">
    <label for="uts" class="col-4 col-form-label">Nilai UTS</label> 
    <div class="col-8">
      <input id="uts" name="uts" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="UAS" class="col-4 col-form-label">Nilai UAS</label> 
    <div class="col-8">
      <input id="UAS" name="uas" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="Tugas/Praktikum" class="col-4 col-form-label">Nilai Tugas/Praktikum</label> 
    <div class="col-8">
      <input id="Tugas/Praktikum" name="tugas" type="text" class="form-control">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</body>
</html>