<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/26/2016
 * Time: 4:03 PM
 */
namespace Erp\Http\Controllers\GeneralReport;

use Erp\Http\Controllers\Controller;
use Erp\Forms\DataHelper;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Role\Role;
use Erp\Models\Student\Section;
use Erp\Models\Student\StudentClass;
use Erp\Models\User\User;
use Erp\Models\Routine\Routine;
use Illuminate\Http\Request;
use Erp\Http\Requests;

class GeneralReportController extends Controller
{
    use Lang, FormControll, DataHelper;

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function generalReportPage()
    {
        $viewType = 'Get General Report';
        return view('default.admin.reports.general-report',compact('viewType'));
    }

    /**
     * @param null $teacherId
     */
    public function generateTeacherReport(Request $request, User $user, Role $role)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $teacherId = $request->teacherId;
        //dd($teacherId);

        if((int)$teacherId == 0){
            $roleId = $this->role('Teacher');
            $roleOfTeacher = $role->findOrFail($roleId);
            $teacherList = $roleOfTeacher->users;
            $teachersWithPhotos = array();
            foreach($teacherList as $teacher){

                if( count($teacher->photos)>0)

                    $teachersWithPhotos[$teacher->photos->last()->name] = $teacher;
            }
            //dd($teachersWithPhotos);
            return view('default.admin.reports.teacher-report-all',compact('teacherList','locale','defaultLocale', 'teachersWithPhotos'));
        }else {
            $teacherProfile = $user->findOrFail($teacherId);
            $photo = $teacherProfile->photo->last()->name;
            $teacherReport = $user->with('designation', 'gender', 'religion', 'department')->findOrFail($teacherId);

            return view('default.admin.reports.teacher-report-individual',compact('teacherReport','locale','defaultLocale', 'photo'));
        }

    }

    /**
     * @param Request $request
     * @param User $user
     * @param Role $role
     */
    public function generateStudentReport(Request $request, User $user, Role $role,StudentClass $studentClass, Section $section)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $studentId = $request->studentId;
        //dd($studentClassId);

        if((int)$studentClassId == 0 && (int)$sectionId == 0 && (int)$studentId == 0){
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users;
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->stclass = $student->stClass->class_name;
                $student->Section = $student->section->section_name;

                //dd($student->stclass->class_name);
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentsWithPhotos);
            return view('default.admin.reports.student-report-all',compact('studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId != 0 && (int)$sectionId == 0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentsWithPhotos);
            return view('default.admin.reports.student-report-class-wise',compact('studentClass','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else if((int)$studentClassId != 0 && (int)$sectionId != 0 && (int)$studentId == 0){
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $roleId = $this->role('Student');
            $roleOfStudent = $role->findOrFail($roleId);
            $studentList = $roleOfStudent->users()
                ->whereStudentClassId($studentClassId)
                ->whereSectionId($sectionId)
                ->get();
            $studentsWithPhotos = array();
            foreach($studentList as $student){
                $student->Section = $student->section->section_name;
                if( count($student->photos)>0)

                    $studentsWithPhotos[$student->photos->last()->name] = $student;
            }
            //dd($studentSection);
            return view('default.admin.reports.student-report-section-wise',compact('studentClass','studentSection','studentList','locale','defaultLocale', 'studentsWithPhotos'));
        } else{
            $studentClass = $studentClass->findOrFail($studentClassId);
            $studentSection = $section->findOrFail($sectionId);
            $singleStudent = $user->findOrFail($studentId);
            $guardianId = $singleStudent->guardian_id;
            $guardianData =  $user->findOrFail($guardianId);
            //dd($singleStudent);
            $photo = $singleStudent->photo->last()->name;
            return view('default.admin.reports.student-report-individual',compact('studentClass','studentSection','singleStudent', 'guardianData','locale','defaultLocale', 'photo'));
        }
    }

    public function generateRoutineReport(Request $request, User $user, Role $role,StudentClass $studentClass, Section $section, Routine $routine)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $studentClassId = $request->studentClassId;
        $sectionId = $request->sectionId;
        $studentClass = $studentClass->findOrFail($studentClassId);
        $section = $section->findOrFail($sectionId);
        $routineList = $routine->with('subject', 'building', 'floor', 'room', 'teacher', 'coordinator')
            ->whereStudentClassId($studentClassId)
            ->whereSectionId($sectionId)
            ->get();

        $routineArray = [];
//        dd($routineList);
        foreach($routineList as $routine){

                $routineArray[$routine->weekday][] =  $routine;
        }
//        dd($routineArray);
        return view('default.admin.reports.class-routine-report',compact('studentClass','section','routineList', 'routineArray','locale','defaultLocale'));
    }

}