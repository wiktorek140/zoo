<?php

namespace Zoo\Model\Animals\Species;

use Zoo\Model\Animals\Animal;
use Zoo\Model\Animals\FurTrait;
use Zoo\Model\Kind;

class Elephant extends Animal
{

    protected string $species = 'Słoń';
    protected Kind $kind = Kind::HERBIVOROUS;

}