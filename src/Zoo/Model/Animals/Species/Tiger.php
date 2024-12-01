<?php

namespace Zoo\Model\Animals\Species;

use Zoo\Model\Animals\Animal;
use Zoo\Model\Animals\FurTrait;
use Zoo\Model\Kind;

class Tiger extends Animal
{
    use FurTrait;

    protected string $species = 'Tygrys';
    protected Kind $kind = Kind::CARNIVOROUS;

}