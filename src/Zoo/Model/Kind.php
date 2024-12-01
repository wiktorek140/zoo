<?php

declare(strict_types=1);

namespace Zoo\Model;

enum Kind: string
{
    case CARNIVOROUS = 'mięsożerne';
    case HERBIVOROUS = 'roślinożerne';
    case OMNIVOROUS = 'wszystkożerne';
}