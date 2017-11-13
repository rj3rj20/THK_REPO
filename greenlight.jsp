<!-- /**
* The content, application, product material and information is
* proprietary to Netlink Business Analytics. Any attempt of copying,
* modifying, decomposing, reverse engineering or creating
* derivative tools based on system IP tools is prohibited. Any
* violation of the above may result in legal and criminal action.
* 
*/ --> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link rel="stylesheet" href="<c:url value='/assets/libraries/wizard/jquery-wizard.min.css'/>">
        <link rel="stylesheet" href="<c:url value='/assets/libraries/formValidation/formValidation.min.css'/>">
        <!--Internal CSS-->
        <!--Internal CSS-->
        <!--Internal CSS-->
        <!--Internal CSS-->

        <style>
            * {
                font-family: 'Open Sans', sans-serif;
            }

            .thk-forms-label label {
                font-size: 13px;
                font-weight: 600;
            }

            .containerbg {
                background: #fff;
                box-shadow: 0px 1px 3px 1px #d0d4d9;
                border: 4px solid transparent;
                border-radius: 0px;
                max-height: auto;
            }

            .thk--inner-heading>h2 {
                margin: 20px 0px 0px 15px;
                font-size: 18px;
                font-weight: 600;
                color: #b70025;
            }

            .thk--inner-heading:after {
                content: '';
                position: absolute;
                left: 31px;
                top: 46px;
                bottom: 0;
                width: 50px;
                height: 3px;
                background: #FFC107;
            }

            .form-group-top {
                margin-top: 15px
            }

            .hr {
                border: 0;
                background-color: #fff;
                margin-top: 0;
                border-top: 1px dashed #fb8c00;
            }

            .thk-bttn {
                background-color: #b70025;
                border: 10px solid rgba(0, 0, 0, 0);
                border-radius: 3px;
                text-align: center;
                font-size: 14px;
                font-weight: normal;
                color: #ffffff;
                margin: 5px;
                height: 40px;
                text-decoration: none;
                padding: 0 30px;
                font-family: 'Open Sans', sans-serif;
            }

            .thk-bttn:hover {
                background-color: #b70025;
                color: #fff;
                text-decoration: none;
            }

            .thk-bttn:focus {
                color: #fff;
                text-decoration: none;
            }

            .greentxt {
                color: #d7042f;
                font-size: 16px;
                font-weight: 600
            }

            .thk--home-wrap {
                padding-top: 5px
            }

            .thk--home-wrap .form-group label {
                font-size: 20px;
                font-weight: 400;
            }

            .thk-inner-content {
                padding-left: 15px;
            }

            .thk-datagrid.inner .datagrid {
                border-radius: 0;
                background: #666;
                color: #fff
            }

            .thk-datagrid.inner .datagrid2 {
                background: #212121;
                background: -webkit-linear-gradient(#212121, #747373);
                background: -o-linear-gradient(#212121, #747373);
                background: -moz-linear-gradient(#212121, #747373);
                background: linear-gradient(#212121, #747373);
            }

            .thk-datagrid.inner .datagrid table th {
                padding: 10px;
                font-size: 14px;
                font-weight: 600;
                border-left: 1px solid rgba(255, 255, 255, .03);
            }

            .thk-datagrid.inner .datagrid table tbody td {
                font-family: 'Open Sans', sans-serif;
                padding: 8px 12px;
                font-size: 13px;
                color: #fff;
                border-left: 1px solid rgba(255, 255, 255, .03);
                background: #333
            }

            .thk-datagrid .datagrid {
                font-family: 'Open Sans', sans-serif;
                border: 1px solid rgba(0, 0, 0, 0.18);
                overflow-y: auto;
                border-radius: 3px;
                margin-top: 10px;
                padding: 1px;
            }

            .datagrid3 {
                background: black;
                background: -webkit-linear-gradient(black, gray);
                background: -o-linear-gradient(black, gray);
                background: -moz-linear-gradient(black, gray);
                background: linear-gradient(black, gray);
            }

            .thk-datagrid .datagrid table thead th {
                font-family: 'Open Sans', sans-serif;
                background: rgba(0, 0, 0, .6);
                padding: 12px;
                font-size: 14px;
                font-weight: 600;
                border-left: 1px solid rgba(255, 255, 255, .1);
                padding: 6px;
            }

            .thk-datagrid .datagrid table thead th:first-child {
                border-left: 0px
            }

            .thk-datagrid .datagrid table tbody td {
                font-family: 'Open Sans', sans-serif;
                padding: 6 12px;
                font-size: 13px;
            }

            .thk-datagrid .datagrid table tbody tr:nth-child(even) {
                background: rgba(0, 0, 0, .04)
            }

            #toast-container>.toast-error {
                background-image: none;
                background-color: #FF0000;
                color: white;
                font-size: 12px;
                opacity: 1;
            }

            #toast-container>.toast-success {
                background-image: none;
                color: white;
                font-size: 12px;
                opacity: 1;
            }

            #toast-container>.toast-warning {
                background-image: none;
                color: white;
                font-size: 12px;
                opacity: 1;
            }

            /* new Css */
            .dataTables_length {
                padding: 7px;
            }

            .datagrid table thead th {
                background: -webkit-gradient( linear, left top, left bottom, color-stop(0.05, #526069), color-stop(1, #37474f));
                background: -moz-linear-gradient( center top, #006699 5%, #00557F 100%);
                filter: progid: DXImageTransform.Microsoft.gradient(startColorstr='#006699', endColorstr='#00557F');
                background-color: #006699;
                color: #ffffff;
                font-size: 15px;
                font-weight: bold;
                /*border-left: 1px solid #0070A8;*/
            }

            .datagrid table thead th:first-child {
                border: none;
            }

            .datagrid table tbody td {
                color: #00496B;
                border-left: 1px solid #E1EEF4;
                font-size: 12px;
                font-weight: normal;
            }
            /*.datagrid table tbody .alt td {
            background: red;
            color: #00496B;
            }*/

            .datagrid table tbody tr:nth-child(even) {
                background: rgba(230, 230, 230, 0.51);
                color: #00496B;
            }

            .datagrid table tbody td:first-child {
                border-left: none;
            }

            .datagrid table tbody tr:last-child td {
                border-bottom: none;
            }

            .thbgcolor {
                background-color: #333;
                color: #fff !important;
                border-right: 1px solid #818181;
                box-sizing: border-box;
            }

            body.thk-cl .select2-container--default .select2-selection--multiple, body.thk-cl .select2-container--default .select2-selection--single{
                max-height: 28px !important
            }
            table,
            th,
            {
                border: 1px solid rgba(230, 230, 230, 0.18);
            }
        </style>

        <!--End of Internal CSS-->

        <div class="container-fluid" id="THK_Greenlight">
            <div class="col-md-12 containerbg">
                <div class="row">
                    <div class="" style="margin-top: -60px;">
                        <div class="col-md-12">
                            <div class="thk--inner-heading">
                                <h2>Greenlight</h2>
                            </div>
                            <div class="pull-right" style="margin:-20px 20px;color:#b70025;font-style:italic;font-size:14px;font-weight:600;display: inline-flex;">
                                <span>Amount in $(USD)</span>
                                <a id="exceldownload" style="font-size: 25px;color: #337ab7;border-radius: 2px;padding: 3px; margin-top: -11px; margin-left: 10px;cursor: pointer;" title="Excel">
                                    <i class="mdi mdi-file-excel"></i></a>
                            </div>

                        </div>
                        <form id="greenlightform" style="margin: 64px 0px" class="thk-forms-label">
                            <div class="col-md-12">
                                <!-- four columns -->
                                <div class="" style="margin-top:20px">
                                    <div class="form-group col-md-3">
                                        <label class="">OEM Group</label><sup style="color: red"><small style="font-size:14px">*</small></sup>
                                        <select class="form-control" name="oemgroup" id="oemgrouplist">

                                        </select>
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label class="">OEM</label><sup style="color: red"><small style="font-size:14px">*</small></sup>
                                        <select class="form-control" name="oem" id="oemlist">

                                        </select>
                                    </div>

                                    <div class="form-group col-md-3">
                                        <label class="">Platform</label><sup style="color: red"><small style="font-size:14px">*</small></sup>
                                        <select class="form-control" style="height: 33px;" multiple="multiple" name="platform" id="platformlist">

                                        </select>
                                    </div>
                                    <div class="form-group col-md-3">
                                        <label class="">Program</label><sup style="color: red"><small style="font-size:14px">*</small></sup>
                                        <select class="form-control" name="program" style="height: 33px;" multiple="multiple" name="platform" id="programlist">

                                        </select>
                                    </div>
                                    
                                    <!-- ======= TBD ====== -->
                                    <div class="form-group col-md-3">
                                        <label class="">Product</label>
                                        <select class="form-control" name="oemgroup" id="product">

                                        </select>
                                    </div>
                                    
                                    <div class="form-group col-md-3">
                                        <label>Remark</label>
                                            <input type="text" class="form-control" id="remark" placeholder="remark" onkeypress=''/>
                                    </div>
                                    
                                    <div class="form-group col-md-3">
                                        <label class="">Reason</label>
                                        <select class="form-control" name="oemgroup" id="reason">
                                            
                                        </select>
                                    </div>
                                    
                                    <div class="form-group col-md-3">
                                        <label class="">Plant</label>
                                        <select class="form-control" name="oemgroup" id="plant">
                                            
                                        </select>
                                    </div>
                                    
                                    <div class="form-group col-md-3">
                                        <label>Award date</label>
                                            <input type="date" class="form-control" id="awarddate" placeholder="award date" onkeypress=''/>
                                    </div>
                                    
                                    <div class="form-group col-md-3">
                                        <label>Vehicle SOP</label>
                                            <input type="date" class="form-control" id="vehiclesop" placeholder="vehicle SOP" onkeypress=''/>
                                    </div> 
                                    
                                   <div class="form-group col-md-3">
                                        <label>Prob code</label>
                                        <select class="form-control" name="oemgroup" id="prob">
                                        
                                        </select>
                                    </div>
                                    
                                    <div class="form-group col-md-3">
                                        <label>Sales in peak year</label>
                                            <input type="text" class="form-control" id="salespeak" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                    </div>                                                                                                                                       
                                
                                    

                                    <!-- six columns -->
                                    <div class="">
                                        <div class="form-group-top form-group col-md-2">
                                            <label>2017</label><span style="color:#f30; font-size: 14px;">*</span>
                                            <input type="text" class="form-control" id="year2016" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>

                                        </div>
                                        <div class="form-group-top form-group col-md-2">
                                            <label>2018</label><span style="color:#f30; font-size: 14px;">*</span>
                                            <input type="text" class="form-control" id="year2017" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                        <div class="form-group-top form-group col-md-2">
                                            <label>2019</label><span style="color:#f30; font-size: 14px;">*</span>
                                            <input type="text" class="form-control" id="year2018" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                        <div class="form-group-top form-group col-md-2">
                                            <label>2020</label><span style="color:#f30; font-size: 14px;">*</span>
                                            <input type="text" class="form-control" id="year2019" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                        <div class="form-group-top form-group col-md-2">
                                            <label>2021</label><span style="color:#f30; font-size: 14px;">*</span>
                                            <input type="text" class="form-control" id="year2020" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                        <div class="form-group-top form-group col-md-2">
                                            <label>2022</label><span style="color:#f30; font-size: 14px;">*</span>
                                            <input type="text" class="form-control" id="year2021" placeholder="###,###,###.##" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div>&nbsp;
                                <hr / class="hr">
                            </div>

                            <div class="col-md-12" style="margin-top:0px">
                                <div class="form-group row">
                                    <div class="col-md-6 row"><label for="return1" class="pull-right"><span class="greentxt">Total Greenlight Sum :&nbsp;&nbsp;</span></label></div>
                                    <div class="col-md-6 row"><input type="text" class="form-control" style="width:175px;margin-top:-9px;background:none" id="amount" readonly placeholder="00.00"></div>
                                </div>
                            </div>


                            <!--<div class="col-md-12 text-center">
<div class="form-group row">
<label class="" style="display: -webkit-inline-box;color:#b70025;font-weight:600;font-size:16px;margin-top:20px">Total Greenlight Sum :&nbsp;&nbsp;
<input type="number" style="background:none;margin-top:-10px; width:150px" class="form-control" id="amount" readonly name="totalamount" placeholder="00.00"></label>
</div>
</div>-->



                            <div class="col-md-12" style="border-top:1px solid #d1d0d0;margin-top:0px">
                                <div class="row" style="margin:5px">
                                    <div class="form-group col-md-3" style="margin-bottom:0px">
                                        <button type="reset" id="reset_btn" class="thk-bttn pull-left">Reset</button>
                                    </div>
                                    <div class="form-group col-md-6"></div>
                                    <div class="col-md-3" style="margin-bottom:0px">
                                        <button id="submit_btn" class="thk-bttn pull-right">Submit</button>
                                    </div>

                                </div>
                            </div>

                        </form>
                        <div class="col-md-12">
                            <div class="thk--home-wrap">
                                <div class="thk-inner-content">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="thk-datagrid">
                                                <div class="datagrid" style="margin:0 0 10px 0">
                                                    <table id="myVBTable" class="col-md-12 table-bordered table-striped table-condensed" style="">
                                                        <thead>
                                                            <tr>
                                                                <th>OEM Group</th>
                                                                <th>OEM</th>
                                                                <th>Platform</th>
                                                                <th>Program</th>
                                                                <th>Year 2017</th>
                                                                <th>Year 2018</th>
                                                                <th>Year 2019</th>
                                                                <th>Year 2020</th>
                                                                <th>Year 2021</th>
                                                                <th>Year 2022</th>
                                                                <th>Total Green Light Sum</th>
                                                                <th>Product</th>
                                                                <th>Remark</th>
                                                                <th>Plant</th>
                                                                <th>Prob Code</th>
                                                                <th>Award Date</th>
                                                                <th>Vehicle SOP</th>
                                                                <th>Reason</th>
                                                                <th>Sales Peak</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="tbodyTableDynamic">

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="<c:url value='/assets/libraries/formValidation/formValidation.min.js'/>"></script>
        <script src="<c:url value='/assets/libraries/formValidation/bootstrap.min.js'/>"></script>
        <script>
            Promise.all([
                loader.css('./../assets/css/ccloader.min.css'),
                loader.css('./../assets/css/datatables.min.css'),
                loader.js('./../assets/js/excel-builder.min.js'),
                loader.js('./../assets/js/filesaver.js'),
                loader.css('./../assets/css/toastr.min.css'),
                loader.js('./../assets/js/toastr.js'),
                loader.js('./../assets/libraries/currencyFormatter/autoNumeric-min.js'),
                loader.js('./../assets/js/datatables.min.js'),
                loader.js('./../assets/js/ccloader.min.js'),
            ]).then(function() {
                $(function($) {
                    var baseURL = (location.protocol + '//' + location.host) + '/v2';
                    function sendRequest(url, data, success, error) {
                        $.ajax({
                            url: baseURL + url,
                            type: 'POST',
                            success: success,
                            error: error,
                            data: JSON.stringify(data),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        });
                    }


                    $("#greenlightform").formValidation({
                        framework: 'bootstrap',
                        fields: {
                            'totalamount': {
                                validators: {
                                    notEmpty: {
                                        message: 'You have not enter any amount'
                                    }
                                }
                            },
                        }

                    }).on('err.field.fv', function(e, data) {
                        data.fv.disableSubmitButtons(false);
                    })
                        .on('success.field.fv', function(e, data) {
                        data.fv.disableSubmitButtons(false);
                    })
                    $('.main-body').ccPageLoader();

                    function addCommas(nStr) {
                        nStr += '';
                        x = nStr.split('.');
                        x1 = x[0];
                        x2 = x.length > 1 ? '.' + x[1] : '';
                        var rgx = /(\d+)(\d{3})/;
                        while (rgx.test(x1)) {
                            x1 = x1.replace(rgx, '$1' + ',' + '$2');
                        }
                        return x1 + x2;
                    }
                    sendRequest("/thk/greenLightGetOemGroupByUser", {
                        "data": {}
                    }, function(e) {
                        $.each(e.data.oemGroup, function(i, j) {
                            $('#oemgrouplist').append("<option value='" + j.id + "'>" + j.value + "</option>");
                        });
                        $('.main-body').ccPageLoader(false);
                    }, function(e) {

                    });
                    sendRequest("/thk/greenLightAll", {
                        "data": {}
                    }, function(e) {
                        $.each(e.data.data.product, function(i, j) {
                            $('#product').append("<option value='" + j.id + "'>" + j.value + "</option>");
                        });
                        $.each(e.data.data.masreason, function(i, j) {
                            $('#reason').append("<option value='" + j.id + "'>" + j.value + "</option>");
                        });
                        $.each(e.data.data.SuppllierPlantEntity, function(i, j) {
                            $('#plant').append("<option value='" + j.id + "'>" + j.value + "</option>");
                        });
                        $.each(e.data.data.ProbCodeEntity, function(i, j) {
                            $('#prob').append("<option value='" + j.id + "'>" + j.value + "</option>");
                        });
                    }, function(e) {

                    });
                    sendRequest("/thk/historicalGreenLight", {
                        "data": {}
                    }, function(e) {
                        console.log('clear')
                        $('#tbodyTableDynamic').empty()
                        var tbody = '';
                        var thead = '';
                        $("#tbodyTableDynamic").show();
                        if (typeof e.data !== 'undefined') {
                            var tbody = '';
                            var thead = '';
                            if (Object.keys(e.data).length)
                                var trlen = e.data.data[Object.keys(e.data.data)[0]].value.length;
                            var dtable = $('<table/>')
                            for (var as = 0; as < trlen; as++) {
                                var tr = $('<tr/>').attr('id', 'tr' + as)
                                $("#tbodyTableDynamic").append(tr);
                            }
                            var aa=0;
                            $.each(e.data.data, function(i, k) {												
                                if(aa==1){
                                    aa=1;
                                    thead += '';
                                    tbody += '';
                                    var len=k.value.length-1;
                                    $.each(k.value, function(i, invalue) {											
                                        $('#tr' + i).append($('<td/>').text(addCommas(invalue)));			
                                    })
                                }else{
                                    aa=1;

                                }});
                            var aa=0;
                            $.each(e.data.data, function(i, k) {
                                if(aa==0){
                                    $.each(k.value, function(i, invalue) {
                                        $('#tr' +i).append($('<td/>').append($('<button class="deletebutton" data-id='+invalue+' />').text('Delete')))


                                    })
                                    aa=1;													
                                }
                            })
                        }
                    }, function(e) {
                        console.error(e);
                    })
                    $('#year2016,#year2017,#year2018,#year2019,#year2020,#year2021').autoNumeric("init", {
                        vMax: '9999999999.99',
                        aSep: ',',
                        aDec: '.',
                        aSign: '$ '
                    });
                    $('#amount').autoNumeric("init", {
                        vMax: '999999999999.99',
                        aSep: ',',
                        aDec: '.',
                        aSign: '$ '
                    });
                    $("#oemgrouplist").on('change', function() {
                        $('.main-body').ccPageLoader();
                        $("#oemlist").empty();
                        $("#platformlist").empty();
                        $("#programlist").empty();
                        sendRequest("/thk/greenLightGetOemByOemGroup", {
                            "data": {
                                "oemGroupId": this.value
                            }
                        }, function(e) {
                            $.each(e.data.oem, function(i, j) {
                                $('#oemlist').append("<option value='" + j.id + "'>" + j.value + "</option>");
                            });
                            $('.main-body').ccPageLoader(false);
                        }, function(e) {

                        })
                    });
                    $("#oemlist").on('change', function() {
                        $('.main-body').ccPageLoader();
                        $("#platformlist").empty();
                        $("#programlist").empty();
                        sendRequest("/thk/greenLightGetPlatformFamilyByOem", {
                            "data": {
                                "oemGroupId": $('#oemgrouplist').val(),
                                "oemId": this.value
                            }
                        }, function(e) {
                            $.each(e.data.platformFamily, function(i, j) {
                                $('#platformlist').append("<option value='" + j.id + "'>" + j.value + "</option>");
                            });
                            $('.main-body').ccPageLoader(false);
                        }, function(e) {
                            console.error(e);
                        })
                    });
                    $("#platformlist").select2({closeOnSelect: false}).on('select2:select', function(e) {
                        if (e.params.data.text.trim().toUpperCase() ==="") {

                            if($("#platformlist").val()!=null){
                                var aa=$("#platformlist").val();

                                $("#platformlist").val(aa.slice(1)).trigger("change");     
                            }

                            $(e.params.originalEvent.currentTarget).attr('aria-selected', 'false');
                        }
                    }).on('select2:unselect', function(e) {
                        if (e.params.data.text.trim().toUpperCase().indexOf('ALL') === 0) {
                            $($(e.params.originalEvent.currentTarget).siblings()).attr('aria-selected', 'false')
                        }
                    }).on("select2:close", function(e,ui) {
                        if($("#platformlist").val()!=null)
                            select2onchange();
                    });
                    $("#programlist").select2({closeOnSelect: false}).on('select2:select', function(e) {
                        if (e.params.data.text.trim().toUpperCase() ==="") {
                            if($("#programlist").val()!=null){
                                var aa=$("#programlist").val();
                                $("#programlist").val(aa.slice(1)).trigger("change");     
                            }
                            $(e.params.originalEvent.currentTarget).attr('aria-selected', 'false');
                        }
                    }).on('select2:unselect', function(e) {
                        if (e.params.data.text.trim().toUpperCase().indexOf('ALL') === 0) {
                            $($(e.params.originalEvent.currentTarget).siblings()).attr('aria-selected', 'false')
                        }
                    }).on("select2:close", function(e,ui) {
                       // if($("#programlist").val()!=null)
                            //select2onchange();
                    });
                    $("#THK_Greenlight").on("click", ".deletebutton", function(evt) {
                        sendRequest("/thk/activeFlagGreenLightDelete", {
                            "data": {
                                "greenLightId":$(evt.target).data('id')
                            }
                        }, function(e) {
                            $(evt.target).parent().parent().remove();
                        }, function(e) {
                            console.error(e);
                        })
                    })
                    $("#submit_btn").on('click', function() {
                        if ($("#year2016").autoNumeric('get').length == 0 || Number($("#year2016").autoNumeric('get')) > 0) {
                            toastr.error("2017 Greenlight amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else if ($("#year2017").autoNumeric('get').length == 0 || Number($("#year2017").autoNumeric('get')) > 0) {
                            toastr.error("2018 Greenlight amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else if ($("#year2018").autoNumeric('get').length == 0 || Number($("#year2018").autoNumeric('get')) > 0) {
                            toastr.error("2019 Greenlight amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else if ($("#year2019").autoNumeric('get').length == 0 || Number($("#year2019").autoNumeric('get')) > 0) {
                            toastr.error("2020 Greenlight amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else if ($("#year2020").autoNumeric('get').length == 0 || Number($("#year2020").autoNumeric('get')) > 0) {
                            toastr.error("2021 Greenlight amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else if ($("#year2021").autoNumeric('get').length == 0 || Number($("#year2021").autoNumeric('get')) > 0) {
                            toastr.error("2022 Greenlight amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else if ($("#amount").autoNumeric('get').length == 0 || Number($("#amount").autoNumeric('get')) > 0) {
                            toastr.error("Greenlight total amount is missing or in negative", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else {
                            $('.main-body').ccPageLoader();
                            var data={};
                            data['oemGroupId']=$("#oemgrouplist").val();
                            data['oemId']=$("#oemlist").val();

                            data['y1']= $("#year2016").autoNumeric('get');
                            data['y2']= $("#year2017").autoNumeric('get');
                            data['y3']= $("#year2018").autoNumeric('get');
                            data['y4']= $("#year2019").autoNumeric('get');
                            data['y5']= $("#year2020").autoNumeric('get');
                            data['y6']= $("#year2021").autoNumeric('get');
                            data['total']= $("#amount").autoNumeric('get');
                            if($("#platformlist").val() != null){
                                data['platformFamilyId']=$("#platformlist").val()
                            }
                            if($("#programlist").val() != undefined){
                                data['platformId']= $("#programlist").val();
                            }
                            if($('#product').val() !=undefined){
                                data['product']=$("#product").val();
                            }
                            if($('#remark').val() !=""){
                                data['remark']=$("#remark").val();
                            }
                            if($('#reason').val() !=null){
                                data['reason']=$("#reason").val();
                            }
                            if($('#plant').val() !=null){
                                data['plant']=$("#plant").val();
                            }
                            if($('#awarddate').val() !=""){
                                data['awarddate']=$("#awarddate").val();
                            }
                            if($('#vehiclesop').val() !=""){
                                data['vehiclesop']=$("#vehiclesop").val();
                            }

                            if($('#prob').val() !=null){
                                data['prob']=$("#prob").val();
                            }
                            if($('#salespeak').val() !=""){
                                data['salespeak']=$("#salespeak").val();
                            }
                            sendRequest("/thk/saveGreenLight", {
                                "data": data
                            }, function(e) {
                                console.log(e.data)
                                if (e.data == 1) {
                                    toastr.success("Data Saved Successfully", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $("#platformlist").empty();
                                    $("#oemlist").empty();
                                    $("#programlist").empty();
                                    sendRequest("/thk/historicalGreenLight", {
                                        "data": {}
                                    }, function(e) {
                                        console.log('clear')
                                        $('#tbodyTableDynamic').empty()
                                        var tbody = '';
                                        var thead = '';
                                        $("#tbodyTableDynamic").show();
                                        if (typeof e.data !== 'undefined') {
                                            var tbody = '';
                                            var thead = '';
                                            if (Object.keys(e.data).length)
                                                var trlen = e.data.data[Object.keys(e.data.data)[0]].value.length;
                                            var dtable = $('<table/>')
                                            for (var as = 0; as < trlen; as++) {
                                                var tr = $('<tr/>').attr('id', 'tr' + as)
                                                $("#tbodyTableDynamic").append(tr);
                                            }
                                            var aa=0;
                                            $.each(e.data.data, function(i, k) {
                                                if(aa==1){
                                                    aa=1;
                                                    thead += '';
                                                    tbody += '';
                                                    var len=k.value.length-1;
                                                    $.each(k.value, function(i, invalue) {

                                                        $('#tr' + i).append($('<td/>').text(addCommas(invalue)));	

                                                    })
                                                }else{
                                                    aa=1;

                                                }});
                                            var aa=0;
                                            $.each(e.data.data, function(i, k) {
                                                if(aa==0){
                                                    $.each(k.value, function(i, invalue) {
                                                        $('#tr' +i).append($('<td/>').append($('<button class="deletebutton" data-id='+invalue+' />').text('Delete')))			
                                                    })
                                                    aa=1;													
                                                }
                                            })
                                        }
                                    }, function(e) {
                                        console.error(e);
                                    })
                                    $('#greenlightform').trigger("reset");
                                } else if (e.data == null) {
                                    toastr.error("Some Fields are Empty", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                }
                            }, function(e) {
                                console.error(e);
                                toastr.error("Something Went Wrong", "", {
                                    "positionClass": "toast-top-right",
                                    "preventDuplicates": true,
                                    "timeOut": "3000"
                                });
                                $('.main-body').ccPageLoader(false);
                            })
                            $('.main-body').ccPageLoader(false);
                        }
                    })
                    $("#reset_btn").on('click', function() {
                        $("#platformlist").empty();
                        $("#oemlist").empty();
                        $("#programlist").empty();
                        toastr.success("All Fields has been Reset", "", {
                            "positionClass": "toast-top-right",
                            "preventDuplicates": true,
                            "timeOut": "3000"
                        });
                    })
                    function totalsum() {
                        var sum = ((Number($("#year2016").autoNumeric('get')))) + (Number(($("#year2017").autoNumeric('get')))) + (Number(($("#year2018").autoNumeric('get')))) + (Number(($("#year2019").autoNumeric('get')))) + (Number(($("#year2020").autoNumeric('get')))) + (Number($("#year2021").autoNumeric('get')));
                        $("#amount").val(sum);
                    }
                    function select2onchange(){
                        $('.main-body').ccPageLoader();
                        sendRequest("/thk/greenLightGetPlatformByPlatformFamily", {
                            "data": {
                                "oemGroupId": $('#oemgrouplist').val(),
                                "oemId": $('#oemlist').val(),
                                "platformFamilyId": $("#platformlist").val()
                            }
                        }, function(e) {
                            $('#programlist').empty()
                            $.each(e.data.platform, function(i, j) {
                                $('#programlist').append("<option value='" + j.id + "'>" + j.value + "</option>");
                            });
                            $('.main-body').ccPageLoader(false);
                            return false;
                        }, function(e) {
                            console.error(e);
                        })
                    }
                    $("#year2016,#year2017,#year2018,#year2019,#year2020,#year2021").on('keyup', function() {
                        $("#amount").parent().removeClass("has-error");
                        $("#amount").parent().find('small').remove();
                        $("#amount")[0].removeAttribute("required")
                        $("#amount")[0].removeAttribute("data-fv-field");
                        totalsum();
                        $("#amount").autoNumeric("update", {
                            aSep: ',',
                            aDec: '.',
                            aSign: '$ '
                        })
                    })
                    $('#THK_Greenlight #exceldownload').on('click', function(e) {
                        e.preventDefault();
                        $('.main-body').ccPageLoader();
                        var originalData;
                        originalData = [];
                        sendRequest('/single/get-kettleData', {
                            "data": {
                                "businessobject_name": "THK Greenlight Download",
                                "params": {}
                            }
                        }, function(e) {
                            var excelData=[];
                            var configuration=[{worksheet:[{column:[]}]}]
                            var  originalData1 = e.data[Object.keys(e.data)[0]].resultSet;
                            $('.main-body').ccPageLoader(false);
                            $.each(e.data[Object.keys(e.data)[0]].metaData, function(i) {
                                configuration[0].worksheet[0].column.push({
                                    "width": 30,
                                    "hidden": false,
                                    "index": i
                                })
                                excelData.push(this.colName);
                            })
                            var excelData1=[];
                            excelData1.push(excelData);
                            originalData=excelData1.concat(originalData1)
                            for (var i = 0, j = configuration.length; i < j; i++) {
                                var currentWorkbook = configuration[i],
                                    workbook = ExcelBuilder.Builder.createWorkbook();
                                if (currentWorkbook.hasOwnProperty('design')) {
                                    var stylesheet = workbook.getStyleSheet();
                                    for (var i in currentWorkbook.design) {
                                        if (currentWorkbook.design.hasOwnProperty(i)) {
                                            currentWorkbook.design[i] = stylesheet.createFormat(currentWorkbook.design[i])
                                        }
                                    }
                                }
                                if (currentWorkbook.hasOwnProperty('worksheet') && typeof currentWorkbook.worksheet == 'object' && currentWorkbook.worksheet.length > 0) {
                                    for (var k = 0, l = currentWorkbook.worksheet.length; k < l; k++) {
                                        var currentWorksheet = currentWorkbook.worksheet[k];
                                        var worksheet = workbook.createWorksheet({
                                            name: currentWorksheet.name
                                        });
                                        var columnConfig = [],
                                            columnIndexes = [],
                                            metadata = {};
                                        for (var m = 0, n = currentWorksheet.column.length; m < n; m++) {
                                            var col = currentWorksheet.column[m],
                                                config = {};
                                            try {
                                                if (col.hasOwnProperty('width') && !isNaN(col.width)) {
                                                    config.width = Number(col.width);
                                                }
                                                if (col.hasOwnProperty('hidden') && col.hidden === true) {
                                                    config.hidden = col.hidden;
                                                }
                                                if (col.hasOwnProperty('index')) {
                                                    columnIndexes.push(col.index);
                                                } else {
                                                    throw 'Column index is missing';
                                                }
                                                if (col.hasOwnProperty("metadata") && typeof col.metadata === 'object') {
                                                    var meta = {}
                                                    if (col.metadata.hasOwnProperty("style")) {
                                                        meta.style = currentWorkbook.design[col.metadata.style].id;
                                                    }
                                                    if (col.metadata.hasOwnProperty("type")) {
                                                        meta.type = col.metadata.type
                                                    }
                                                    metadata[col.index] = meta;
                                                }
                                                columnConfig.push(config);
                                            } catch (e) {
                                                console.error(e);
                                            }
                                        }
                                        var data = [];
                                        for (var m = 0, n = originalData.length; m < n; m++) {
                                            data[m] = []
                                            for (var o = 0, p = columnIndexes.length; o < p; o++) {
                                                var index = columnIndexes[o];
                                                if (metadata.hasOwnProperty(index)) {
                                                    data[m].push({
                                                        value: originalData[m][index],
                                                        metadata: metadata[index]
                                                    });
                                                } else {
                                                    data[m].push({
                                                        value: originalData[m][index]
                                                    });
                                                }
                                            }
                                        }
                                        worksheet.setData(data);
                                        worksheet.setColumns(columnConfig);
                                        if (currentWorkbook.hasOwnProperty('printFooter')) {
                                            worksheet.setFooter(currentWorkbook.printFooter);
                                        }
                                        if (currentWorkbook.hasOwnProperty('printHeader')) {
                                            worksheet.setHeader(currentWorkbook.printHeader);
                                        }
                                        workbook.addWorksheet(worksheet);
                                        if (currentWorksheet.hasOwnProperty("table") && currentWorksheet.table.enabled === true) {

                                        }
                                    }
                                }
                            }
                            ExcelBuilder.Builder.createFile(workbook).then(function(data) {

                                function s2ab(s) {
                                    var buf = new ArrayBuffer(s.length);
                                    var view = new Uint8Array(buf);
                                    for (var i = 0; i != s.length; ++i) view[i] = s.charCodeAt(i) & 0xFF;
                                    return buf;
                                }
                                /*
filesaver.js used to download   luish
*/
                                saveAs(new Blob([s2ab(atob(data))], {
                                    type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64"
                                }),  "download.xlsx");


                                //        window.open("data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64," + data)
                            });
                        },function() {});
                    });
                })
            }).catch(function(e) {
                console.log(e);
                console.log('1111 Oh no, epic failure!');
            });
        </script>

        </html>