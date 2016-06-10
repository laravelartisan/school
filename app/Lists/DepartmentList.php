<?php
/**
 * Created by PhpStorm.
 * User: HP
 * Date: 1/12/2016
 * Time: 4:42 PM
 */

namespace Erp\Lists;


use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Department\Department;

class DepartmentList extends Department
{
    use Lang,ListControll;

    /**
     * for showing user list controlled here
     * $keys(Username,First Name etc) of the parent array are th value of the table
     * $values(username,first_name etc) of the parent array are users table's field names which u want to display
     * $keys(here religion,gender) of the child arrays are relational function names() in the User model
     * $values(here name,gender_name) of the child arrays
     * are the field names of the related tables(here 'name' from religions and 'gender_name' from genders)
     * @var array
     */
    public $dataArr =[

        'Department Name'=>'name',
        'Status'=>'status',

    ];

} 