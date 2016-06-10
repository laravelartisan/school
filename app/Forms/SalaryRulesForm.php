<?php

namespace Erp\Forms;

use Erp\Models\Salary\SalaryRule;

class SalaryRulesForm extends SalaryRule implements FormInterface
{
    use DataHelper, FormControll;

    public function formInputFields($id = null, $mode = null)
    {

        return [
            [
                'type'=>'label',
                'value'=>'Set Rules Name',
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
                'label' => 'Allowance Rules Name',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control'
                ],
                'validation'=>'required'

            ],
            [
                'type'=>'label',
                'value' => 'Set Allowances',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#0073b7; color:white'
                ],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
            ],

            //-------------------------------Different Allownace Details------------------------
           /* [
                'type'=>'label',
                'value'=>'Home Rent Details',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#aaa; color:white'
                ],
            ],
            [
                'type'=>'text',
                'name'=>'home_rent_amount',
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
            'name'=>'',
            'label' => 'Amount Type',
            'others'=>['class'=>'form-control'],
            'labclass'=>'col-sm-12',
            'wrapclass'=>'col-sm-12',
            'trans'=>false,
            'options'=>$this->salaryAmountTypeList(),
            'value'=>0,
            'validation'=>"required|in:".$this->salaryAmountTypeKeys()
            ],*/
            [
                'type'=>'salaryfield',
                'value'=>$this->salaryType(),
            ],

            //----------------------Overtime Details-----------------
           /* [
                'type'=>'label',
                'name'=>'overtime_details',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#aaa; color:white'
                ],
            ],
            [
                'type'=>'checkbox',
                'label'=>'',
                'check'=>$this->salaryTypeListForOvertime(),
            ],*/
            //---------------------Salary Deduction-------------------------
           /* [
                'type'=>'label',
                'name'=>'salary_deduction',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control',
                    'style'=>'background-color:#aaa; color:white'
                ],
            ],
            [
                'type'=>'checkbox',
                'label'=>'',
                'check'=>$this->salaryTypeListForSalaryCut(),
            ],*/
            //------------------------Bonus Details---------------------
            /*[
                'type'=>'label',
                'name'=>'bonus_details',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'others'=>[
                    'class'=>'form-control bonus',
                    'style'=>'background-color:#aaa; color:white'
                ],
            ],

            [
                'type'=>'select',
                'name'=>'',
                'label' => 'Months',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->monthList(),
                'value'=>0,
                'validation'=>"required|in:".$this->monthKeys()
            ],
            [
                'type'=>'checkbox',
                'label'=>'',
                'check'=>$this->salaryTypeListForBonus(),
            ],
            [
                'type'=>'text',
                'name'=>'home_rent_amount',
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
                'name'=>'',
                'label' => 'Amount Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'trans'=>false,
                'options'=>$this->salaryAmountTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->salaryAmountTypeKeys()
            ],*/
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