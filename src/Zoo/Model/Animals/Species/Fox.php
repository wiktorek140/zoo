<?php

namespace Zoo\Model\Animals\Species;

use Zoo\Model\Animals\Animal;
use Zoo\Model\Animals\FurTrait;
use Zoo\Model\Kind;

class Fox extends Animal
{
    use FurTrait;

    protected string $species = 'Lis';
    protected Kind $kind = Kind::OMNIVOROUS;
}