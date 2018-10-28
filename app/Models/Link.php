<?php

namespace App\Models;

use Encore\Admin\Traits\AdminBuilder;
use Encore\Admin\Traits\ModelTree;
use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    use AdminBuilder, ModelTree {
        ModelTree::boot as treeBoot;
    }
}
