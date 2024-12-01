<?php

declare(strict_types=1);

namespace Zoo\Model\Animals;

use Zoo\Model\Food;
use Zoo\Model\Kind;

class Animal implements AnimalInterface
{
    protected Kind $kind;
    protected string $species;

    protected bool $hasFur = false;

    public function __construct(protected string $name)
    {
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function __toString(): string
    {
        return $this->species . ' ' . $this->name;
    }

    public function getAvailableFood(): array
    {
        return match ($this->kind) {
            Kind::CARNIVOROUS => [Food::MEAT],
            Kind::HERBIVOROUS => [Food::VEGETABLES],
            Kind::OMNIVOROUS => [Food::MEAT, Food::VEGETABLES],
        };
    }

    public function hasFur(): bool
    {
        return $this->hasFur;
    }
}