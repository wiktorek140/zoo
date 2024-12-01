<?php

namespace Zoo\Model\Animals\Species;

use Zoo\Model\Animals\Animal;
use Zoo\Model\Animals\FurTrait;
use Zoo\Model\Kind;

class Rabbit extends Animal
{
    use FurTrait;

    protected string $species = 'Królik';
    protected Kind $kind = Kind::HERBIVOROUS;
}