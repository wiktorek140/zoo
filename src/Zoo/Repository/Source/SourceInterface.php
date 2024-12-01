<?php

namespace Zoo\Repository\Source;

interface SourceInterface
{
    public function get(int $id): object;
    public function find(int $id): ?object;
    public function add(int $id, object $object): void;
    public function getAll(): array;

    public function getMaxId(): int|string|null;
}