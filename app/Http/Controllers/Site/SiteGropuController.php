<?php

namespace Erp\Http\Controllers\Site;

use Erp\Forms\FormControll;
use Erp\Models\Site\SiteGroup;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class SiteGropuController extends Controller
{
    use FormControll;

    private $siteGroup;

    public function __construct(SiteGroup $siteGroup)
    {
        $this->siteGroup = $siteGroup;
    }


    public function index()
    {
        $viewType = 'Site Group List';

        $siteGroups = $this->siteGroup->all();


        return view('default.admin.site_group.index',compact('viewType','siteGroups'));

    }
    public function createSiteGroupForm()
    {
        $viewType = 'Create Site Group';

        return view('default.admin.site_group.create',compact('viewType'));
    }

    public function createSiteGroup(Requests\Validator $validatedRequest)
    {

        $this->siteGroup->name = $validatedRequest->get('name');
        $this->siteGroup->group_alias = $validatedRequest->get('group_alias');
        $this->siteGroup->group_email = $validatedRequest->get('group_email');
        $this->siteGroup->group_address = $validatedRequest->get('group_address');
        $this->siteGroup->group_phone = $validatedRequest->get('group_phone');
        $this->siteGroup->status = $validatedRequest->get('status');

        if($this->siteGroup->save()){

            return back()->withSuccess('Successfully Created');
        }
    }

    public function editSiteGroupForm($id)
    {
        $viewType = 'Edit Site Group';

        $siteGroupToEdit =$this->editFormModel($this->siteGroup->findOrFail($id)) ;

        return view('default.admin.site_group.edit',compact('siteGroupToEdit','viewType'));
    }

    public function editSiteGroup($id,Requests\Validator $validatedRequest)
    {
        $sitGroupToEdit = $this->siteGroup->findOrFail($id);

        $sitGroupToEdit->name = $validatedRequest->get('name');
        $sitGroupToEdit->group_alias = $validatedRequest->get('group_alias');
        $sitGroupToEdit->group_email = $validatedRequest->get('group_email');
        $sitGroupToEdit->group_address = $validatedRequest->get('group_address');
        $sitGroupToEdit->group_phone = $validatedRequest->get('group_phone');
        $sitGroupToEdit->status = $validatedRequest->get('status');

        if($sitGroupToEdit->save()){

            return back()->withSuccess('Successfully Updated');
        }
    }
}
