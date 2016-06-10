<?php

namespace Erp\Http\Controllers\Result;

use Erp\Models\Result\ResultSetting;
use Erp\Models\Result\ResultSystem;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;

class ResultController extends Controller
{

    public function construct()
    {

    }

    /**
     * @param ResultSystem $resultSystem
     */
    public function index(ResultSystem $resultSystem)
    {
        $resultSystemList = $resultSystem->with('studentClass')->get();
        //dd($resultSystemList);
//        foreach($resultSystemList as $resultSystem){
//            $resultSystem_setting = $resultSystem->setting_ids;
//
//            dd($resultSystem_setting);
//        }
        //dd($resultSystemList->setting_ids);
        $viewType = 'Result System List';

        return view('default.admin.result.index', compact('resultSystemList', 'viewType'));
    }

    public function viewResultSystem($id, ResultSystem $resultSystem, ResultSetting $resultSetting)
    {
        $resultSystemData = $resultSystem->with('studentClass')->findOrFail($id);
        //dd($resultSystemData->setting_ids);

        $resultSystem =  explode(',',json_decode($resultSystemData->setting_ids));
        //dd($resultSystem);
        foreach($resultSystem as $key=> $value){
            $test[] = $resultSetting->findOrFail($value);
        }
        //dd($test);

        return view('default.admin.result.view', compact('resultSystemData', 'test'));
    }
    public function createResultSystemForm()
    {
        $viewType = 'Add Result System';
        return view('default.admin.result.create-result-system',compact('viewType'));
    }

    public function createResultSystem(ResultSystem $resultSystem, Request $request)
    {

        $resultSystem->name = $request->get('name');
        $resultSystem->result_rule = $request->get('result_rule');
        $resultSystem->setting_ids = json_encode($request->get('rule_ids'));

        $resultSystem->save();

        return back()->withSuccess('Successfully Result System Created');
    }

    public function createResultSettings(ResultSetting $resultSetting, Request $request)
    {
        $resultSetting->settings = json_encode($request->get('params'));
        if($resultSetting->save()){
            return $resultSetting->all()->last() ;
        }
    }

    public function deleteResultSettings($id, ResultSetting $resultSetting)
    {

        $resultSettingToDelete = $resultSetting->findOrFail($id);

        if($resultSettingToDelete->delete()){

            return 'settings deleted';
        }

    }
}
