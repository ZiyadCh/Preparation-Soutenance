<?php

class Vehicule
{
    protected string $marque;

    public function __construct(string $marque)
    {
        $this->marque = $marque;
    }

    public function demarrer(): void
    {
        echo "Le véhicule démarre";
    }
}

class Voiture extends Vehicule
{
    protected int $nombreDePortes;

    public function __construct(string $marque, int $nombreDePortes)
    {
        parent::__construct($marque);
        $this->nombreDePortes = $nombreDePortes;
    }

    public function demarrer(): void
    {
        echo "La voiture démarre";
    }
}

class Moto extends Vehicule
{
    public function __construct(string $marque)
    {
        parent::__construct($marque);
    }
}

$voiture = new Voiture("Toyota", 4);
$voiture->demarrer(); 


$moto = new Moto("Yamaha");
$moto->demarrer(); 

