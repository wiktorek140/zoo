<?php

declare(strict_types=1);

namespace Zoo\Repository;

use Zoo\Model\Animals\AnimalInterface;
use Zoo\Repository\Source\InMemory;
use Zoo\Repository\Source\SourceInterface;

class Zoo implements RepositoryInterface
{
    public function __construct(
        private readonly string $name = 'Zoo',
        private ?SourceInterface $source = null,
    )
    {
        $this->source = $this->source ?? new InMemory();
    }

    public function get(): array
    {
        return $this->source->getAll();
    }

    public function add(AnimalInterface $animal): void
    {
        $this->source->add($this->source->getMaxId() + 1, $animal);
    }

    public function getName(): string
    {
        return $this->name;
    }
}