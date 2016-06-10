<?php

namespace Erp\Http\Controllers\Attendance;

use Erp\Models\Attendance\StudentAttendance;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class StudentAttendanceController extends Controller
{

    private $studentAttendances;

    public function __construct(StudentAttendance $studentAttendance)
    {
        $this->studentAttendances = $studentAttendance;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getStudentAttendanceList()
    {
        return view('default.admin.attendance.view-student-attendance');
    }

    public function getStudentAttendanceForm()
    {
        $viewType = 'Add Student Attendane';
        return view('default.admin.attendance.add-student-attendance',compact('viewType'));
    }


    public function addStudentAttendance(Request $request,StudentAttendance $studentAttendance)
    {
        $presentType = null;
        $presentTypeId = null;


         $userId = $request->stInfo['userId'];
         $userRoll = $request->stInfo['userRoll'];
         $stClass = $request->stInfo['stClass'];
         $stClassId = $request->stInfo['stClassId'];
         $section = $request->stInfo['section'];
         $sectionId = $request->stInfo['sectionId'];
         $stSection = $request->stInfo['stSection'];
         $stSectionId = $request->stInfo['stSectionId'];
         $subject = $request->stInfo['subject'];
         $subjectId = $request->stInfo['subjectId'];
         $presentDate = $request->stInfo['attDate'];

        if(isset($request->inTime)){
            $inTime = $request->inTime;
        }else{
            $inTime = date('H:i:s', time());
        }
        if(isset($request->outTime)){
            $outTime = $request->outTime;
        }else{
            $outTime = date('H:i:s', time());
        }


        if($request->stInfo['stSection'] == '' &&  $request->stInfo['subject'] == ''){
            $presentType = $stClass;
//            $presentType = 'Class';
            $presentTypeId = $stClassId;
        }

        if($request->stInfo['stSection'] != '' &&  $request->stInfo['subject'] == ''){
            $presentType = $stSection;
//            $presentType = 'Section';
            $presentTypeId = $stSectionId;
        }

        if ( $request->stInfo['subject'] != '') {
            $presentType = $subject;
//            $presentType = 'Subject';
            $presentTypeId = $subjectId;
        }

        if(isset($request->outTime)){


            $attRowToUpdate = $studentAttendance
                ->whereUserId($userId)
                ->wherePresentDate($presentDate)
                ->wherePresentType($presentType)
                ->wherePresentTypeId($presentTypeId)
                ->first();

//dd($attRowToUpdate);
//            return $attRowToUpdate;
            $isUpdated = $attRowToUpdate->update([
                'out_time'=>$request->outTime
            ]);
            if($isUpdated){

                return 'successfully updated';
            }
        }

        $this->studentAttendances->user_id = $request->stInfo['userId'];
        $this->studentAttendances->roll_no = $request->stInfo['userRoll'];
        $this->studentAttendances->present_type = $presentType;
        $this->studentAttendances->present_type_id = $presentTypeId;
        $this->studentAttendances->in_time = $inTime;
        $this->studentAttendances->out_time = $outTime;
        $this->studentAttendances->present_date = $request->stInfo['attDate'];
        $this->studentAttendances->present_date_time = date('Y-m-d H:i:s',time());
        $this->studentAttendances->present_year = date('Y',time());
        $this->studentAttendances->present_month = date('m',time());
        $this->studentAttendances->present_day = date('d',time());

        if($this->studentAttendances->save()){

            return 'i am print';
        }
    }

}
