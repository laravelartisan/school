@inject('religionList','Erp\Lists\ReligionList')
@extends('default.admin.layouts.master')

@section('style')
    {!! Html::style('css/styles.css') !!}
@endsection

@section('content')

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="student-box-header">
                    <div class="col-md-6">
                        <span class="glyphicon glyphicon-user " aria-hidden="true"></span>{{ strtoupper($viewType) }}
                    </div>
                    <div class="col-md-6 snt">
                        <ul class="breadcrumb text-right">
                            <li>
                                <a href="{!! route('religion-add-form') !!}"><i class="fa fa-plus"></i> {{ trans('sidebar.religion-create') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> <!--row-->
        <div class="row">
            <div class="col-md-12">
                <div class="view-header">
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-print"></span> {{ trans('translate.print') }} </button>
                    <button onclick="javascript:window.print()" class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.print_preview') }} </button>
                    <button class="btn btn-primary"><span class="fa fa-file"></span> {{ trans('translate.edit') }}</button>
                   
                </div>
            </div>
        </div> <!--row-->
        <div class="inner-box">
            <div class="row">
                <div id="datatable">
                    <div class="row last">
                        <div class="col-sm-12">
                            <div class="box">
                                <div class="box-body auto_scroll">

                                    <table id="example1" class="table table-bordered table-striped table-responsive">
                                        <thead>
                                        <tr>
                                            <th class="th_width_100">{{ trans('translate.sl') }}</th>
                                            <th>{{ trans('translate.religion') }}</th>
                                            <th>{{ trans('translate.status') }}</th>
                                            <th class=" text-center th_width_100">{{ trans('translate.action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @set('sl',1)
                                        @foreach($model as $religion)
                                            <tr>
                                                <td>{{ $sl++ }}</td>
                                                <td>{{ $religion->name or 'Null' }}</td>
                                                <td>{{ $religion->status or 'Null' }}</td>
                                                <td class="text-center">
                                                    <a class="btn btn-info btn-xs mrg" data-original-title="{{ trans('translate.view') }}" data-toggle="tooltip" href="{{ route('religion-view',[$religion->id]) }}"><i class="fa fa-edit"></i></a>
                                                    <a class="btn btn-success btn-xs mrg" data-original-title="{{ trans('translate.edit') }}" data-toggle="tooltip" href="{{ route('religion-edit-form',[$religion->id]) }}"><i class="fa fa-edit"></i></a>
                                                    <a  class="btn btn-danger btn-xs delete_btn mrg" data-original-title="{{ trans('translate.delete') }}" data-toggle="tooltip" href="{{ route('religion-delete',[$religion->id]) }}"><i class="fa fa-trash-o"></i></a>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>

                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div> <!--row last-->
                </div>
            </div>
        </div>
    </div>



@endsection
