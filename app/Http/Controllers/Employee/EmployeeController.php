<?php

namespace Erp\Http\Controllers\Employee;

use Erp\Http\Controllers\Language\Lang;
use Illuminate\Http\Request;

use Erp\Http\Requests;
use Erp\Http\Controllers\Controller;
use Illuminate\Auth\Guard;

class EmployeeController extends Controller
{
    use Lang;

    public function __construct()
    {
        $this->middleware('prevReq');
        $this->middleware('auth');
    }

    /**
     * @return string
     */
    public function employeePage()
    {
      // dd(\Route::currentRouteName());\Route::getFacadeRoot()->current()->uri();
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        return view('default.employee.index', compact('locale','defaultLocale'));
    }
}
