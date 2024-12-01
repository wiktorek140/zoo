<?php

declare(strict_types=1);

namespace Zoo\Model\Animals;

use Zoo\Model\Food;

interface AnimalInterface
{
    public function getName(): string;

    public function __toString(): string;

    /**
     * @return array<Food>
     */
    public function getAvailableFood(): array;

    public function hasFur(): bool;
}