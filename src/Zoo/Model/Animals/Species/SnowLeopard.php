<?php

namespace Zoo\Model\Animals\Species;

use Zoo\Model\Animals\Animal;
use Zoo\Model\Animals\FurTrait;
use Zoo\Model\Kind;

class SnowLeopard extends Animal
{
    use FurTrait;

    protected string $species = 'Irbis śnieżny';
    protected Kind $kind = Kind::CARNIVOROUS;

}