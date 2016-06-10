<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 4/30/2016
 * Time: 4:10 PM
 */

namespace Erp\Http\Controllers\Subject;

use Erp\Forms\SubjectForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Requests\Validator;
use Erp\Models\Subject\Subject;
use Erp\Models\Student\StudentClass;
use Erp\Models\User\User;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class SubjectController extends Controller
{
    use Lang, FormControll, DataHelper;

    private $subject;

    /**
     * @param Subject $subject
     */
    public function __construct(Subject $subject)
    {
        $this->middleware('prevReq');
        $this->middleware('auth');
        $this->middleware('role:superadmin');
        $this->subject = $subject;
    }

    /**
     * @param Subject $subject
     */
    public function index(Subject $subject)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $subjectList = $subject->with('studentClass', 'classTeacher')->get();
        //dd($subjectList);

        $viewType = 'Subject List';

        return view('default.admin.subject.index',compact('viewType', 'subjectList', 'locale', 'defaultLocale'));

    }


    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createSubjectForm()
    {
        $viewType = 'Create Subject';

        return view('default.admin.subject.create',compact('viewType'));
    }

    /**
     * @param Validator $validatedRequest
     * @return mixed
     */
    public function createSubject(Requests\Validator $validatedRequest)
    {
//        var_dump($_POST['subject_marks_type']);
        $subject_marks_type = '';
        foreach ($_POST['subject_marks_type'] as $sbjct_mrks_tp)
        {
            $subject_marks_type[] = $sbjct_mrks_tp;
        }
        if(isset($subject_marks_type) && !empty($subject_marks_type)){
            $subject_marks_type = implode($subject_marks_type,",");
        }
        $isCreated =  $this->subject->create([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'subject_name'=>ucwords($validatedRequest->get('subject_name')),
            'subject_marks_type'=>$subject_marks_type,
            'subject_author'=>ucwords($validatedRequest->get('subject_author')),
            'subject_code'=>$validatedRequest->get('subject_code'),
            'subject_credit'=>$validatedRequest->get('subject_credit'),
            'status'=>$validatedRequest->get('status')
        ]);
        return back()->withSuccess('Successfully Created');
    }

    /**
     * @param $id
     * @param SubjectForm $subjectForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getSubjectEditForm($id, SubjectForm $subjectForm)
    {
        $viewType = 'Edit Subject';
        $editSubject = $subjectForm;
        $subjectData = $this->editFormModel($this->subject->findOrFail($id));
        //dd($subjectData);

        return view('default.admin.subject.edit', compact('viewType', 'editSubject', 'subjectData'));
    }

    /**
     * @param $id
     * @param Validator $validatedRequest
     * @return null
     */
    public function editSubject($id, Validator $validatedRequest)
    {
        $subjectToEdit = $this->subject->findOrFail($id);
        $subject_marks_type = '';
        foreach ($_POST['subject_marks_type'] as $sbjct_mrks_tp)
        {
            $subject_marks_type[] = $sbjct_mrks_tp;
        }
        if(isset($subject_marks_type) && !empty($subject_marks_type)){
            $subject_marks_type = implode($subject_marks_type,",");
        }

        $isEdited = $subjectToEdit->update([
            'student_class_id'=>$validatedRequest->get('student_class_id'),
            'user_id'=>$validatedRequest->get('user_id'),
            'subject_name'=>ucwords($validatedRequest->get('subject_name')),
            'subject_marks_type'=>$subject_marks_type,
            'subject_total_marks'=>$validatedRequest->get('subject_total_marks'),
            'subject_author'=>ucwords($validatedRequest->get('subject_author')),
            'subject_code'=>$validatedRequest->get('subject_code'),
            'subject_credit'=>$validatedRequest->get('subject_credit'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited ? back()->withSuccess('Successfully updated') : null;
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteSubject($id)
    {
        $subjectToDelete = $this->subject->findOrFail($id);

        if($subjectToDelete->delete()){
            return back()->withSuccess('Successfully deleted');
        }
        return back()->withErrors('Not successfully deleted');
    }
}