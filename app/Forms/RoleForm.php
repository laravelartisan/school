<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 12/27/15
 * Time: 10:59 AM
 */

namespace Erp\Forms;


use Erp\Models\Role\Role;

class RoleForm extends Role implements FormInterface
{
    use FormControll;

    protected $nonEditableFields = [];

    public function formInputFields($id = null,$mode=null)
    {
        return
        [
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => 'Role',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required|unique:roles,name,'.$id
            ],
            [
                'type'=>'text',
                'name'=>self::LABEL,
                'label' => 'Role Description',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>'usrextranm',
                'label' => 'User Extra Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
            ],
            [
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'readonly'=>'readonly'
                ],
            ]
        ];

    }

}