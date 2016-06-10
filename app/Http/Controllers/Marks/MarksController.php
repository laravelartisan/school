<?php

namespace Erp\Http\Controllers\Marks;

use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Examinations\Examination;
use Erp\Models\Marks\Marks;
use Erp\Models\Marks\MarksType;
use Erp\Models\Result\ResultSetting;
use Erp\Models\Role\Role;
use Erp\Models\Student\Section;
use Erp\Models\Student\StudentClass;
use Erp\Models\Subject\Subject;
use Erp\Models\User\User;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class MarksController extends Controller
{

    use Lang,FormControll, DataHelper;

    private $marksType;


    public function __construct(MarksType $marksType)
    {
        $this->marksType = $marksType;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function creteMarksTypeForm()
    {
    	$viewType = 'Create Marks Type';

    	return view('default.admin.marks.create',compact('viewType'));	
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return $this
     */
    public function creteMarksType(Requests\Validator $validatedRequest)
    {

        $this->marksType->marks_type = $validatedRequest->marks_type;
        $this->marksType->status = $validatedRequest->status;

        if($this->marksType->save()){

            return back()->withSuccess('Successfully Created');
        }
        return back()->withErrors('Successfully Created');
    }

    public function editMarksTypeForm($id)
    {
        $viewType = 'Edit Marks Type';

        $marksTypeToEdit =$this->editFormModel($this->marksType->findOrFail($id)) ;

        return view('default.admin.marks.edit',compact('marksTypeToEdit','viewType'));

    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return $this
     */
    public function editMarksType($id, Requests\Validator $validatedRequest)
    {
        $marksTypeToEdit = $this->marksType->findOrFail($id);

        $isEdited =  $marksTypeToEdit->update([
            'marks_type'=>$validatedRequest->get('marks_type'),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):back()->withErrors('Not Updated');
    }

    public function index()
    {
        $markTypes = $this->marksType->whereStatus('Active')->get();

        $viewType = 'Role List';

        return view('default.admin.marks.index',compact('viewType','markTypes'));
    }

    public function deleteMarksType($id)
    {
        $marksTypeToDelete = $this->marksType->findOrFail($id);

        if ($marksTypeToDelete->delete()) {

            return back()->withSuccess('Successfully Deleted');
        }
    }

    public function createMarksForm()
    {
        $viewType = 'Add Marks';

        return view('default.admin.marks.marks_create',compact('viewType'));
    }


    public function getStListForAddingMarks(Request $request, Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $infos = $request->params;
        $marksType = [];
        $markstypeobj = new MarksType();
        $exam = (new Examination())->findOrFail($infos['examination_id']);
        $studentClass = (new StudentClass())->findOrFail($infos['student_class_id']);
        $studentSection = (new Section())->findOrFail($infos['section_id']);
        $studentSubject = (new Subject())->findOrFail($infos['subject_id']);
        if(isset($studentSubject->subject_marks_type) && !empty($studentSubject->subject_marks_type)){
            $subject_marks_type = explode(",",$studentSubject->subject_marks_type);
            foreach($subject_marks_type as $sbjct_mrks_tpe){
                $marksType[] = $markstypeobj->findOrFail($sbjct_mrks_tpe);
            }
        }
        $roleId = $this->role('Student');
        $roleOfStudent = $role->with('users')->findOrFail($roleId);
        $studentList = $roleOfStudent->users()->whereStudentClassId($studentClass->id)->get();

        return view('default.admin.marks.add_st_marks',compact('studentList','studentClass','studentSection','studentSubject','exam','marksType','locale','defaultLocale'));
    }

    /**
     * @param Request $request
     * @param Marks $marks
     * @return string
     */
    public function saveStudentMarks(Request $request,Marks $marks)
    {
        $marks_types = [];

        $marks->user_id = $request->params['student_id'];
        $marks->roll_no = $request->params['roll_number'];
        $marks->examination_id = $request->params['exam_id'];
        $marks->student_class_id = $request->params['class_id'];
        $marks->section_id = $request->params['section_id'];
        $marks->subject_id = $request->params['subject_id'];

        $marksType = (new MarksType())->all();
        if(isset($marksType) && !empty($marksType)){
            foreach($marksType as $marktp){
                if(isset($request->params[$marktp->marks_type]) && !empty($request->params[$marktp->marks_type])){
                    $marks_types[$marktp->marks_type] = $request->params[$marktp->marks_type];
                }
            }
        }

        if(isset($request->params['total']) && !empty($request->params['total'])){
            $marks->total = $request->params['total'];
        }

        $marks->mark_types = json_encode($marks_types);
        $marks->status = 'Active';

        $marksIfExists = $marks->whereUserId($marks->user_id)
                                ->whereRollNo($marks->roll_no)
                                ->whereExaminationId($marks->examination_id)
                                ->whereStudentClassId($marks->student_class_id)
                                ->whereSectionId($marks->section_id)
                                ->whereSubjectId($marks->subject_id)
                                ->get();

        if(!$marksIfExists->isEmpty()){

            foreach($marksIfExists as $markToEdi){
                $markToEdi->update([
                    'mark_types'=> json_encode($marks_types),
                    'total'=> $marks->total
                ]);
            }


            return 'sucessfully updated';
        }else{
            if($marks->save())
                return 'Saved';
            else
                die(0);
        }

    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getClassChoosingOption()
    {

        $viewType = 'Get Student List to View Their Marks';
        return view('default.admin.marks.choose_class',compact('viewType'));

    }

    /**
     * @param $classId
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getStudentListForViewingMarks( Request $request, Role $role)
    {

        $result = null;
        $examId = $request->examId;
        $classId = $request->classId;
        $sectionId = $request->sectionId;

        $subjectObject = new Subject();
        $studentClass = (new StudentClass())->with('subjects')->findOrFail($classId);
        $subjectsOfTheClass = $studentClass->subjects;
        $numberOfSubjects = $subjectsOfTheClass->count();
        $resultSystem = $studentClass->resultSystem;
        $resultRule = $resultSystem->result_rule;
        $resultSystemForTheClass = explode(',',json_decode($resultSystem->setting_ids));

        $resultSettings = new ResultSetting();
        $studentSection = (new Section())->findOrFail($sectionId);
        $exam = (new Examination())->findOrFail($examId);
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $roleId = $this->role('Student');
        $roleOfStudent = $role->with('users')->findOrFail($roleId);
        $studentList = $roleOfStudent->users()->with('marks')->whereStudentClassId($classId)->whereSectionId($sectionId)->get();

        $isFail = false;
        $failingStudents = [];

        foreach($studentList as $student){

            $studentMarks = $student->marks()->whereExaminationId($examId)->get();
            $totalResult = 0;
            if($resultRule == 'division'){
                foreach($studentMarks as $studentMark){
                    $subjectTotal = $studentMark->total;
                    $totalResult += $subjectTotal;
                    foreach($resultSystemForTheClass as $resultSystem){

                        $resultSetting = $resultSettings->findOrFail($resultSystem);
                        $setting = json_decode($resultSetting->settings);

                        if($subjectTotal >= $setting->sub_min
                            && $subjectTotal<= $setting->sub_max && $setting->gpa == 0){
                            $isFail = true;
                            $failingStudents [$student->id] = $isFail;
                        }
                    }
                }

                $student->totalResult = $totalResult;

                foreach($resultSystemForTheClass as $resultSystem){

                    $resultSetting = $resultSettings->findOrFail($resultSystem);
                    $setting = json_decode($resultSetting->settings);


                    if($student->totalResult >= $setting->total_min
                        && $student->totalResult<= $setting->total_max){

                        $result = $setting->grade_class;
                    }

                }
            }elseif($resultRule == 'grade'){

                if(isset($studentMarks) && !$studentMarks->isEmpty()){
                    $gradeTotal = 0;
                    foreach($studentMarks as $studentMark){
                        $subjectTotal = $studentMark->total;

                        foreach($resultSystemForTheClass as $resultSystem){

                            $resultSetting = $resultSettings->findOrFail($resultSystem);
                            $setting = json_decode($resultSetting->settings);

                            if($subjectTotal >= $setting->sub_min
                                && $subjectTotal<= $setting->sub_max && $setting->gpa == 0){
                                    $isFail = true;
                                $failingStudents [$student->id] = $isFail;
                            }
                            if($subjectTotal >= $setting->sub_min
                                && $subjectTotal<= $setting->sub_max){

                                $gradeTotal += $setting->gpa;
                            }
                        }
                    }
                    $gradeAvg = $gradeTotal/$numberOfSubjects;


                    foreach($resultSystemForTheClass as $resultSystem){

                        $resultSetting = $resultSettings->findOrFail($resultSystem);
                        $setting = json_decode($resultSetting->settings);

                        if($gradeAvg >= $setting->total_min
                            && $gradeAvg<= $setting->total_max){

                            $result = $setting->grade_class;
                        }
                    }
                }
                $student->grade = $gradeAvg;
            }

                $student->result = $result;


        }

//dd($failingStudents);
//        $marks = (new Marks())->with('user')->whereExaminationId($examId)->whereStudentClassId($classId)->whereSectionId($sectionId)->get();



       /* foreach($marks as $mark){

            dd($mark);
        }*/

        if (request()->ajax())
        {
            return view('default.admin.marks.student-list-for-view-marks',
                compact('studentList','studentClass','failingStudents','studentSection','resultRule','exam','locale','defaultLocale'));
        }
    }

    public function viewStudentMarks($stId,$examId, Marks $marks)
    {
//        dd(new User());
        $student = (new User())->findOrFail($stId);
        $exam = (new Examination())->findOrFail($examId);
        $studentClass = $student->stClass;
        $marksTypes = (new MarksType())->all();
        $studentMarks = $student->marks()->whereExaminationId($examId)->get();

        $subjectObject = new Subject();
        $subjectsOfTheClass = $studentClass->subjects;

        $numberOfSubjects = $subjectsOfTheClass->count();
        $resultSystem = $studentClass->resultSystem;
        $resultRule = $resultSystem->result_rule;
        $resultSystemForTheClass = explode(',',json_decode($resultSystem->setting_ids));
        $resultSettings = new ResultSetting();

//    dd($studentMarks);
        $isFail = false;
        
        $totalResult = 0;
        $subjectMarks = [];
        if($resultRule == 'division'){

            if(isset($studentMarks) && !$studentMarks->isEmpty()) {
                foreach ($studentMarks as $studentMark) {

                    foreach ($subjectsOfTheClass as $subjects) {

                        if ($studentMark->subject_id == $subjects->id
                            && $studentMark->examination_id == $examId
                        ) {

                            $subjectMarks[$studentMark->subject_id] = $studentMark->mark_types;
                        }
                    }
                }
                $student->subjectMarks = $subjectMarks;

                foreach ($studentMarks as $studentMark) {
                    $subjectTotal = $studentMark->total;
                    $totalResult += $subjectTotal;
                    foreach($resultSystemForTheClass as $resultSystem){

                        $resultSetting = $resultSettings->findOrFail($resultSystem);
                        $setting = json_decode($resultSetting->settings);

                        if($subjectTotal >= $setting->sub_min
                            && $subjectTotal<= $setting->sub_max && $setting->gpa == 0){
                            $isFail = true;
                        }
                    }
                }

                $student->totalResult = $totalResult;

                foreach ($resultSystemForTheClass as $resultSystem) {

                    $resultSetting = $resultSettings->findOrFail($resultSystem);
                    $setting = json_decode($resultSetting->settings);

                    if ($student->totalResult >= $setting->total_min
                        && $student->totalResult <= $setting->total_max
                    ) {

                        $result = $setting->grade_class;
                    }

                }
            }
        }elseif($resultRule == 'grade'){

            $subjectGrade = [];
            if(isset($studentMarks) && !$studentMarks->isEmpty()){
                $gradeTotal = 0;
                foreach ($studentMarks as $studentMark) {

                    foreach ($subjectsOfTheClass as $subjects) {

                        if ($studentMark->subject_id == $subjects->id
                            && $studentMark->examination_id == $examId
                        ) {

                            $subjectMarks[$studentMark->subject_id] = $studentMark->mark_types;
                        }
                    }
                }
                $student->subjectMarks = $subjectMarks;
                foreach($studentMarks as $studentMark){
                    $subjectTotal = $studentMark->total;

                    foreach($resultSystemForTheClass as $resultSystem){

                        $resultSetting = $resultSettings->findOrFail($resultSystem);
                        $setting = json_decode($resultSetting->settings);

                        if($subjectTotal >= $setting->sub_min
                            && $subjectTotal<= $setting->sub_max && $setting->gpa == 0){
                            $isFail = true;

                        }
                        if($subjectTotal >= $setting->sub_min
                            && $subjectTotal<= $setting->sub_max){
                            $subjectGrade[$studentMark->subject_id]=[$setting->gpa,$setting->grade_class];
                            $gradeTotal += $setting->gpa;
                        }
                    }
                }
//                dd($subjectGrade);
                $gradeAvg = $gradeTotal/$numberOfSubjects;


                foreach($resultSystemForTheClass as $resultSystem){

                    $resultSetting = $resultSettings->findOrFail($resultSystem);
                    $setting = json_decode($resultSetting->settings);

                    if($gradeAvg >= $setting->total_min
                        && $gradeAvg<= $setting->total_max){

                        $result = $setting->grade_class;
                    }
                }
            }
            $student->grade = $gradeAvg;
        }

        $student->result = $result;
//        dd($student);
        return view('default.admin.marks.marks-info',compact('student','isFail','resultRule','subjectGrade','exam','studentMarks','studentClass','locale','defaultLocale','subjectsOfTheClass','marksTypes'));
    }
}
