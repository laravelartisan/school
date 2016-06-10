<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 6/6/16
 * Time: 4:15 PM
 */

namespace Erp\Forms;


use Erp\Models\Site\SiteInfo;


class SiteInfoForm extends SiteInfo implements FormInterface
{
    use FormControll,DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return [

            [
                'type'=>'select',
                'name'=>self::SITE_TYPE_ID,
                'label' => 'Site Type',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->siteTypeList(),
                'value'=>0,
                'validation'=>"required|in:".$this->siteTypeKeys()
            ],

            [
                'type'=>'select',
                'name'=>self::SITE_GROUP_ID,
                'label' => 'Site Group',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12',
                'options'=>$this->siteGroupList(),
                'value'=>0,
                'validation'=>"required|in:".$this->siteGroupKeys()
            ],
            [
                'type'=>'text',
                'name'=>self::SITE_NAME,
                'label' => 'Site Name',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::SITE_ADDRESS,
                'label' => 'Site Address',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>true,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'text',
                'name'=>self::SITE_ALIAS,
                'label' => 'Site Alias',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:site_infos,".self::SITE_ALIAS.",".$id

            ],
            [
                'type'=>'file',
                'name'=>self::SITE_LOGO,
                'label' => 'Site  Logo',
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                    'id'=>'file'
                ],
                'validation'=>"image"
            ],
            [
                'type'=>'email',
                'name'=>self::SITE_EMAIL,
                'label' => 'Site Email',
                'value'=>null,
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'trans'=>false,
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>"required|unique:site_infos,site_email,".$id

            ],
            [
                'type'=>'number',
                'name'=>self::SITE_PHONE,
                'label' => 'Site Phone No',
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
                'type'=>'radio',
                'name'=>self::STATUS,
                'label' => 'Status',
                'radval'=> [true=>'Active',false=>'Inactive'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-12 ',
                'others'=>[
                    'class'=>'form-control',
                ],
                'validation'=>'required',

            ],
            [
                'type'=>'submit',
                'label' => 'Submit',
                'others'=>[
                    'class'=>'btn btn-success',
                    'style'=>'background-color:#0073b7',
                    'readonly'=>'readonly'
                ],
            ]

        ];
    }

}