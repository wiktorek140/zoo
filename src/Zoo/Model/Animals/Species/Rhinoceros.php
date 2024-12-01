<?php

namespace Zoo\Model\Animals\Species;

use Zoo\Model\Animals\Animal;
use Zoo\Model\Animals\FurTrait;
use Zoo\Model\Kind;

class Rhinoceros extends Animal
{
    protected string $species = 'Nosorożec';
    protected Kind $kind = Kind::HERBIVOROUS;
}