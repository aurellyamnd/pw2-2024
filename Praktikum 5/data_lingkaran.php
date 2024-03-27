<?php
require_once('class_lingkaran.php');
echo "Nilai PHI: " . Lingkaran::PHI;

//instansiasi object lingkaran 
$lingkar1 = new Lingkaran(20);
$lingkar2 = new Lingkaran(8);

echo '<br>';

echo "<br> Luas Lingkaran 1: " . $lingkar1->getluas();
echo "<br> Luas Lingkaran 2: " . $lingkar2->getluas();

echo '<br>';

echo "<br> Keliling Lingkaran 1: " . $lingkar1->getKeliling();
echo "<br> Keliling Lingkaran 2: " . $lingkar2->getKeliling();