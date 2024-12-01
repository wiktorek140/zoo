<?php

namespace Zoo\Repository\Source;

use RuntimeException;

class InMemory implements SourceInterface
{
    private array $data = [];

    public function get(int $id): object
    {
        if (!isset($this->data[$id])) {
            throw new RuntimeException("Brak zwierzęcia");
        }

        return $this->data[$id];
    }

    public function find(int $id): ?object
    {
        return $this->data[$id] ?? null;
    }

    public function add(int $id, object $object): void
    {
        $this->data[$id] = $object;
    }

    public function getAll(): array
    {
       return $this->data;
    }

    public function getMaxId(): int|string|null
    {
        return array_key_last($this->data);
    }
}