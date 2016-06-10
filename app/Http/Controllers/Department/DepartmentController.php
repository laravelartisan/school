<?php

namespace Erp\Http\Controllers\Department;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Department\Department;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class DepartmentController extends Controller
{
    use FormControll;

    private $department;

    public function __construct(Department $department)
    {
        $this->middleware('prevReq');
        $this->middleware('auth');
        $this->middleware('role:superadmin');
        $this->department = $department;
    }

    public function index()
    {
        $model = $this->department->all();
        //dd($model);
        $viewType = 'Department List';

        return view('default.admin.department.index',compact('viewType','model'));
    }

    public function createDeptForm()
    {
        $viewType = 'Create Department';
        return view('default.admin.department.create',compact('viewType'));
    }


    public function createDepartment(Requests\Validator $validatedRequest)
    {
//        dd('dep');
        return $this->department->create([
            'name'=>$validatedRequest->get('name'),
            'status'=>$validatedRequest->get('status')
        ])? back()->withSuccess('successfully created'): null;

    }

    public function editDeptForm($id)
    {
        $viewType = 'Edit Department';

        $departmentToEdit =$this->editFormModel($this->department->findOrFail($id)) ;

        return view('default.admin.department.edit',compact('departmentToEdit','viewType'));

    }

    public function editDepartment($id, Requests\Validator $validatedRequest)
    {
        $departmentToEdit = $this->department->findOrFail($id);

        $isEdited =  $departmentToEdit->update([
            'name'=>ucwords($validatedRequest->get('name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;

    }

    public function viewDepartment($id)
    {
        $departmentToView = $this->department->findOrFail($id);
        return view('default.admin.department.view',compact('departmentToView'));


    }

    public function deleteDepartment($id)
    {
        $departmentToDelete = $this->department->findOrFail($id);

        if($departmentToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }

}
