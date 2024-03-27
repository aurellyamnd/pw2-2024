<?php
class Hero{
    // atribut
    public $name;
    public $hp;
    public $damage;

    //method
    public function __construct($name, $hp, $damage)
    {
        $this->name = $name;
        $this->hp = $hp;
        $this->damage = $damage;
    }
    public function getDetail(){
        echo "Name: $this->name <br>";
        echo "Health Point: $this->hp <br>";
        echo "Damage: $this->damage <br>";
        echo "<br> ============================ <br>";
    }
}

//buat object
$hero1 = new Hero("Luo Yi", 3800, 500);
$hero1->getDetail();

$hero2 = new Hero("Pharsa", 3500, 350);
$hero2->getDetail();