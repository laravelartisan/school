<?php

namespace Erp\Providers;

use Blade;
use Erp\Models\Site\SiteInfo;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Session;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

//dd(session()->get(SITE_ID));
        if(!Session::get(SITE_ID)){
            $siteToRecollect = DB::table('site_infos')->where('site_alias','site-alias2')->first();
            if(isset($siteToRecollect->id) && !empty($siteToRecollect->id) && $siteToRecollect->id != 0){
                Session::put(SITE_ID,$siteToRecollect->id);
            }else{
                Session::put(SITE_ID,1);
            }
        }
//        dd(Session::get(SITE_ID));
    }
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

    }
}
