<?php

abstract class Employe {
    abstract public function calculerSalaire();
}

class EmployeFixe extends Employe {
    public $salaire = 2000;

    public function calculerSalaire() {
        return $this->salaire;
    }
}

class EmployeCommission extends Employe {
    public $ventes = 5000;
    public $pourcentage = 10;

    public function calculerSalaire() {
        return $this->ventes * ($this->pourcentage / 100);
    }
}
