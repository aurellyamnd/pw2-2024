<?php
class Lingkaran{
    /**
     * Access Modifier
     * 1. public atribut/method dapat diakses walaupun di luar class
     * 2. privates atribut/method hanya dapat diakses didalam class
     * 3. protected mirip seperti private, tetapi dapat juga diakses oleh public
     */

     // atribut / properti
     private $jari;
     const PHI = 3.14;
    
     //method function yang ada didalam class
     public function __construct($r)
     {
        $this->jari = $r;
     }

     public function getLuas ()
     {
        return 0.5 * self::PHI * $this->jari * $this->jari;
     }

     public function getKeliling ()
     {
        return 2 * self::PHI * $this->jari;
     }
}
    