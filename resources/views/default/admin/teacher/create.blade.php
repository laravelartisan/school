@inject('teacherForm','Erp\Forms\TeacherForm')

@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
    {!! Html::style('datepicker/css/datepicker.css') !!}
@endsection

@section('content')

    <div class="container-fluid min_height_area">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <span class="glyphicon glyphicon-folder-close" aria-hidden="true"></span>
                                <a href="#">{{ trans('translate.dashboard') }}</a></li>
                            <li class="active">{{ strtoupper($viewType) }}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-view">
            <div class="row">
                <div class="col-md-12 snt form-horizontal">

                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    @if(session()->has('success'))
                        <div class="alert alert-success">
                            <ul>

                                <li>{{ session()->get('success') }}</li>

                            </ul>
                        </div>
                    @endif

                    {!! inputLangControl() !!}
                    {!! Form::open(array('route' => 'teacher-create', 'files' => true, 'id'=>'create-form','class'=>'form-create')) !!}

                    {!! formFields($teacherForm)  !!}

                    {!!  Form::close()   !!}
                </div>
            </div>
        </div>
    </div>



@endsection
@section('scripts')
    @parent
    {!! Html::script('datepicker/js/bootstrap-datepicker.js') !!}
    <script type="text/javascript">
        $(document).ready(function(){

            /* start date picker option*/
            $('#birthday').datepicker() ;
            $('#dept_join_date').datepicker() ;
            /* end date picker option*/

            /* start multi-lingual option*/

            $(".translation_wrap").hide();
            $(".translation_wrap.trans_en"/*+lang_def*/).show();
            $(".control_lang").on("click",function(){
                var selected_lang = $(this).val();
                $(".translation_wrap").hide();
                $(".translation_wrap.trans_"+selected_lang).show();
                $(".control_lang").val(selected_lang);
            });
            /*end multi-lingual option*/

            /*start choose designation onchange event of department*/

            $('#department_id').change(function(){

                var host = window.location.origin ;

                var departmentId = $('#department_id').find('option:selected').val();

                $.ajax({
                    'url': host + '/designation/' + departmentId,
                    'dataType': 'json'
                }).success(function (data) {

                    var designationsForDepartment = "<option value=''>Select </option>";
                    var shiftsForDepartment = "<option value=''>Select </option>";

                    $(data[0]).each(function(index,item){

                        designationsForDepartment += "<option value ="+ item.id +">"+item.name+" </option>";
                    });
                    $('#designation_id').html(designationsForDepartment);
                    $(data[1]).each(function(index,item){

                        for(var i in item){

                            shiftsForDepartment += "<option value ="+ i +">"+item[i]+" </option>";
                        }

//                        shiftsForDepartment += "<option value ="+ item.id +">"+item.name+" </option>";
                    });
                    $('#shift_id').html(shiftsForDepartment);
                })
            });

            /*end choose designation onchange event of department*/
        });
    </script>
@endsection