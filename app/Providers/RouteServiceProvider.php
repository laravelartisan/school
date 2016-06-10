<?php

namespace Erp\Providers;


use Illuminate\Routing\Router;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;

class RouteServiceProvider extends ServiceProvider
{

    /**
     * This namespace is applied to the controller routes in your routes file.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'Erp\Http\Controllers';
    protected $namespaceForAziz = 'Erp\Http\Controllers';
//    protected $namespace = 'Erp\Module\Http';



    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @param  \Illuminate\Routing\Router  $router
     * @return void
     */
    public function boot(Router $router)
    {
        parent::boot($router);

//        $router->model('siteInfo', 'Erp\Models\Site\SiteInfo');
        $hh = $router->bind('siteinfo', function($value) {

            return \Erp\Models\Site\SiteInfo::where('site_alias', 'site-alias2')->first();
        });
//        dd($hh);
    }

    /**
     * Define the routes for the application.
     *
     * @param  \Illuminate\Routing\Router  $router
     * @return void
     */
    public function map(Router $router)
    {


        $router->group(['namespace' => $this->namespace], function ($router) {

            require app_path('Http/routes.php');

        });
        $router->group(['namespace' => $this->namespaceForAziz], function ($router) {

            require app_path('Http/routes_aziz.php');

        });
    }
}
