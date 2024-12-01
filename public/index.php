<?php

use Zoo\Model\Animals\Species\Tiger;
use Zoo\Repository\Zoo;

include '../vendor/autoload.php';

$zoo = new Zoo('UNITY-T');

$tiger = new Tiger('Jacek');

$zoo->add($tiger);







