<?php

declare(strict_types=1);

namespace Zoo\Repository;

use Zoo\Model\Animals\AnimalInterface;

interface RepositoryInterface
{
    /**
     * @return array<AnimalInterface>
     */
    public function get(): array;
    public function add(AnimalInterface $animal): void;


}