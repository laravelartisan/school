<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/5/16
 * Time: 1:23 PM
 */

namespace Erp\Scopes;


use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\ScopeInterface;

class ProjectScope implements ScopeInterface
{

    public function apply(Builder $builder, Model $model)
    {
        /*$tableName = $builder->getModel()->getTable();
        $builder->where($tableName.'.site_id',session()->get(SITE_ID));*/
    }

    public function remove(Builder $builder, Model $model)
    {

    }

}