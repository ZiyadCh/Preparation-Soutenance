<?php
class voiture{
  private $mark;
  private $models;
  private $vitesse = 0;

  public function __construct($mark,$model,$vitesse)
  {
    $this->mark = $mark;
    $this->models = $model;
    $this->vitesse = $vitesse;
  } 

  public function accelerer($x) {
    $this->vitesse += $x;
  }
  public function getVitesse() {
    return $this->vitesse;
  }
  public function setVitesse($v) {
    if ($v < 0) {
      return;
    }
    $this->vitesse = $v;
  }
}

class compteBankaire{
  private $solde = 0;
  public function deposer($m) {
    $this->solde += $m;
  }
  public function retirer($m) {
    if ($this->solde >= $m) {
    $this->solde -= $m;
    }
  }
}




//////////////////////////////////
$ford = new voiture('ford','nouveuq',1000);
print_r($ford->getVitesse());
$ford->accelerer(500);
print_r($ford->getVitesse());
$peugo = new voiture('peugo','nouveuq',2000);
$peugo->accelerer(400);
