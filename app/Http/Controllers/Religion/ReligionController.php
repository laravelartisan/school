<?php

namespace Erp\Http\Controllers\Religion;

use Erp\Forms\FormControll;
use Erp\Models\Religion\Religion;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class ReligionController extends Controller
{
    use FormControll;

    private $religion;

    public function __construct(Religion $religion)
    {
        $this->middleware('prevReq');
        $this->middleware('auth');
        $this->middleware('role:superadmin');
        $this->religion = $religion;
    }


    public function index()
    {
        $model = $this->religion->all();
        //dd($model);
        $viewType = 'Relgion List';

        return view('default.admin.religion.index',compact('viewType','model'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createReligionForm()
    {
        $viewType = 'Create Religion';
        return view('default.admin.religion.create',compact('viewType'));

    }
    /**
     * @param Religion $religion
     */
    public function createReligion(Religion $religion, Requests\Validator $validatedRequest)
    {
        return $religion->create([
            'name'=>ucwords($validatedRequest->get('name')),
            'status'=>ucwords($validatedRequest->get('status'))
        ])? back(): null;
    }

    public function editReligionForm($id)
    {
        $viewType = 'Edit Religion';

        $religionToEdit =$this->editFormModel($this->religion->findOrFail($id)) ;

        return view('default.admin.religion.edit',compact('religionToEdit','viewType'));

    }

    public function editReligion($id, Requests\Validator $validatedRequest)
    {
        $religionToEdit = $this->religion->findOrFail($id);

        $isEdited =  $religionToEdit->update([
            'name'=>ucwords($validatedRequest->get('name')),
            'status'=>$validatedRequest->get('status')
        ]);

        return $isEdited?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewReligion($id)
    {
        $religionToView = $this->religion->findOrFail($id);
        //dd($religionToView);
        return view('default.admin.religion.view',compact('religionToView'));

    }

    public function deleteReligion($id)
    {
        $religionToDelete = $this->religion->findOrFail($id);

        if($religionToDelete->delete()){

            return back();
        }
        return back()->withErrors('Not successfully deleted');
    }
}
