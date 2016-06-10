<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 2/23/16
 * Time: 11:11 AM
 */

namespace Erp\Forms;


use Erp\Models\Salary\OvertimeRule;

class OvertimeForm extends OvertimeRule implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [
            [
                'type'=>'label',
                'value'=>'Set Overtime Rules Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#0073b7; color:white'
                ],
            ],
            [
                'type'=>'text',
                'name'=>self::NAME,
                'label' => '',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'label',
                'value' => 'Set Salary Type',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#0073b7; color:white'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],
            [
                'type'=>'checkboxsalary',
                'label'=>'',
                'check'=>['total'=>'total','basic'=>'basic'],
            ],
            [
                'type'=>'checkboxsalary',
                'label'=>'',
                'check'=>$this->salaryTypeList(),
            ],
            [
                'type'=>'label',
                'value'=>'Set Ammount',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#0073b7; color:white'
                ],
            ],

            [
                'type'=>'text',
                'name'=>self::AMOUNT,
                'label'=>'Amount',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'select',
                'name'=>self::AMOUNT_TYPE,
                'label' => 'Amount Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->salaryAmountTypeListForOthers(),
                'value'=>0,
                'validation'=>"required|in:".$this->salaryAmountTypeKeysForOthers()
            ],
            [
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'radval'=> [1=>'Active',5=>'Inactive'],
                'validation'=>"required|in:".$this->statusKeys()
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