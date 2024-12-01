<?php

declare(strict_types=1);

namespace Zoo\Model\Animals;

trait FurTrait
{
    private bool $hasFur = true;

    protected bool $combed = false {
        get {
            return $this->combed;
        }
    }

    public function comb(): void
    {
        $this->combed = true;
        echo 'Animal was combed';
    }
}