<?php
/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/11/2016
 * Time: 3:44 PM
 */

namespace Erp\Forms;

//use Erp\Models\Student\Section;

class StudentIdCardForm implements FormInterface
{
    use FormControll, DataHelper;

    public function formInputFields($id = null, $mode = null)
    {
        return[
            [
                'type'=>'select',
                'name'=>'student_class_id',
                'label' => 'Class',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-6 punch-user',
                'options'=>$this->classList(),
                'value'=>0,
                'validation'=>"required|in:".$this->classKeys()
            ],
            [
                'type'=>'select',
                'name'=>'section_id',
                'label' => 'Section',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-6 punch-user',
                'options'=>$this->sectionList(),
                'value'=>0,
                'validation'=>"required|in:".$this->sectionKeys()
            ],
            [
                'type'=>'select',
                'name'=>'student_id',
                'label' => 'Student',
                'others'=>['class'=>'form-control'],
                'labclass'=>'col-sm-12',
                'wrapclass'=>'col-sm-6 punch-user',
                'options'=>$this->studentList(),
                'value'=>0,
                'validation'=>"required|in:".$this->studentKeys()
            ]
        ];
    }
}