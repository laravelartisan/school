<?php

namespace Erp\Http\Controllers\Site;

use Erp\Forms\FormControll;
use Erp\Http\Controllers\Language\Lang;
use Erp\Models\Image\Photo;
use Erp\Models\Site\SiteInfo;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Illuminate\Validation\Validator;
use Intervention\Image\Facades\Image as InterImage;

class SiteController extends Controller
{
    use Lang, FormControll;

    private $siteInfo;

    public function __construct(SiteInfo $siteInfo)
    {
        $this->siteInfo = $siteInfo;
    }


    public function index()
    {
        $viewType = 'Site List';
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $sites = $this->siteInfo->all();

        /*$sitesWithLogos = array();
        foreach($sites as $site){

            if( count($site->photo)>0)

                $sitesWithLogos[$site->photo->last()->name] = $site;
        }*/

        return view('default.admin.sites.index',compact('locale','defaultLocale','viewType','sites'));

    }
    public function createSiteInfoForm()
    {
        $viewType = 'Create Site';

        return view('default.admin.sites.create',compact('viewType'));
    }

    public function createSiteInfo(Requests\Validator $validatedRequest)
    {
        $allSites = $this->siteInfo;

        foreach ($this->siteInfo->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->siteInfo->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        $this->siteInfo->site_membership_id = $validatedRequest->get('site_membership_id');
        $this->siteInfo->site_group_id = $validatedRequest->get('site_group_id');
        $this->siteInfo->site_alias = $validatedRequest->get('site_alias');
        $this->siteInfo->site_email = $validatedRequest->get('site_email');
        $this->siteInfo->site_phone = $validatedRequest->get('site_phone');
        $this->siteInfo->status = $validatedRequest->get('status');

        if($this->siteInfo->save()){

            $newlyCreatedSite = $this->newlyCreatedSite($allSites);
            $this->savePhoto(
                $newlyCreatedSite,
                $validatedRequest
            );

        }

        return back()->withSuccess('Successfully Created');

    }
    private function newlyCreatedSite(SiteInfo $siteInfo)
    {
        $newlyCreatedSite = $siteInfo->all()->last();

        return $newlyCreatedSite;
    }

    private function savePhoto(SiteInfo $siteInfo, Requests\Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$siteInfo);
        endif;
    }

    private function imageUpload($image,SiteInfo $newlyCreatedSite){

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedSite->id;
        $newlyCreatedSite->photo()->save($photo);
    }

    public function editSiteInfoForm($id)
    {
        $viewType = 'Edit Site Info';

        $siteToEdit =$this->editFormModel($this->siteInfo->findOrFail($id)) ;

        return view('default.admin.sites.edit',compact('siteToEdit','viewType'));
    }

    public function editSiteInfo($id,Requests\Validator $validatedRequest)
    {
        $siteToEdit = $this->siteInfo->findOrFail($id);

        foreach ($siteToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $siteToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        $siteToEdit->site_membership_id = $validatedRequest->get('site_membership_id');
        $siteToEdit->site_group_id = $validatedRequest->get('site_group_id');
        $siteToEdit->site_alias = $validatedRequest->get('site_alias');
        $siteToEdit->site_email = $validatedRequest->get('site_email');
        $siteToEdit->site_phone = $validatedRequest->get('site_phone');
        $siteToEdit->status = $validatedRequest->get('status');

        if($siteToEdit->save()){

            $this->savePhoto(
                $siteToEdit,
                $validatedRequest
            );

        }

        return back()->withSuccess('Successfully Updated');

    }

    public function deleteSiteInfo($id)
    {
        $siteToDelete = $this->siteInfo->findOrFail($id);

        if($siteToDelete->delete()){

            return back()->withSuccess('Successfully Deleted');
        }

    }

    public function viewSiteInfo($id)
    {
        $logo = '';
        $siteToView = $this->siteInfo->findOrFail($id);

        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        if( !$siteToView->photo->isEmpty()){
            $logo = $siteToView->photo->last()->name;
        }


        return view('default.admin.sites.view',compact('siteToView','locale','defaultLocale','logo'));

    }
}
