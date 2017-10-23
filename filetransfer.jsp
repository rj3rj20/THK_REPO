<!-- 

/**
 * The content, application, product material and information is
 * proprietary to Netlink Business Analytics. Any attempt of copying,
 * modifying, decomposing, reverse engineering or creating
 * derivative tools based on system IP tools is prohibited. Any
 * violation of the above may result in legal and criminal action.
 * 
 */
 
  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans" />
        <style>
			a>*,
button>* {
    pointer-events: none
}

            .tdata-collapse--icon {
                width: 45px;
                height: 45px;
                line-height: 45px;
                text-align: center;
                display: inline-block;
                float: left;
            }
            
            .tdata-collapse--icon i {
                line-height: 45px;
                font-size: 24px;
                margin: 0;
            }
            
            .tdata-collapse--icon {
                border-right: 1px solid #ccc;
                margin-right: 10px;
            }
            
            .tdata-heading {
                display: block;
                position: relative;
                width: 100%;
                float: left;
            }
            
            .tdata-title {
                display: inline-block;
                line-height: 45px;
                margin: 0;
                float: left;
            }
            
            .tdata-title__incomplete {
                color: #b70025
            }
            
            .heading_nopad {
                border-bottom: 1px solid #eaeaea;
                position: relative;
            }
            
            .tdata-btn--download {
                position: absolute;
                right: 0;
                top: 0;
            }
            
            .tdata-button {
                padding: 10px 14px;
                border-radius: 20px;
                text-transform: uppercase;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: 1px;
            }
            
            .tdata--button__discard {
                background: #b70025;
                color: #fff;
                border-radius: 3px;
                text-transform: capitalize;
                box-shadow: none;
                border: none;
                margin: 6px;
            }
            
            .tdata--button__upload {
                box-shadow: none;
                text-align: center;
                margin: 0 auto;
                position: relative;
                padding: 6px 24px;
                border: 1px solid #eaeaea;
                background: #fff;
            }
            
            .thk-data--button {
                padding: 5px;
                /*margin-bottom: 10px;*/
            }
            
            .tdata-button__new {
                border-radius: 4px;
                background: #b70025;
                color: #fff;
                text-transform: uppercase;
                border: none;
            }
            
            .space-10 {
                height: 10px;
                display: block;
            }
            
            .ta-center {
                text-align: center;
            }
            
            .tdata-block--file {
                /*border-radius: 4px;*/
                border: 1px solid #eaeaea;
                border-right: none;
                border-left: none;
                position: relative;
                line-height: 44px;
                height: 44px;
                margin: 0 0 10px 0;
                padding: 0 44px;
            }
            
            .tdata-file--status {
                padding-left: 44px;
                position: relative;
            }
            
            .file__complete {
                background: #f1f1f1
            }
            
            .tdata-file__complete:before {
                content: ' '
            }
            /*.tdata-file__complete:after{
			content: '\e873'
		}*/
            
            .tdata-file--status:before {
                content: '\e834';
                font-family: 'Material Icons';
                font-size: 26px;
                color: #333;
                position: absolute;
                left: 0;
                top: 0;
                /*margin-right: 10px;*/
            }
            
            .tdata-file__failed:before {
                color: #b70025
            }
            
            .tdata-file__success:before {
                color: #16b700
            }
            
            .up_mod {
                background-color: #e3e3e3;
                /* padding: 10.25px; */
                /* margin-right: 2px; */
                line-height: 42px;
                width: 44px;
                height: 42px;
                padding: 0 !important;
                border-left: none !important;
            }
            
            .up_button {
                height: 42px;
            }
            
            .inner_up_button {
                float: right;
                margin-right: 42px;
                padding: 0;
                border: 0;
            }
            
            .check_pad {
                font-size: 13px;
                font-weight: 600;
            }
            
            .dt_sep {
                color: red;
            }
            
            .thk_a {
                text-decoration: none !important;
                outline: none;
            }
            
            .rotate.down {
                -moz-transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg) translate(0);
                color: rgb(183, 0, 37);
            }
            
            .rotate1.down {
                -moz-transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg) translate(12px);
                color: rgb(183, 0, 37);
            }
            
            .rotate2.down {
                -moz-transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg) translate(12px);
                color: rgb(183, 0, 37);
            }
            
            .rotate3.down {
                -moz-transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg) translate(12px);
                color: rgb(183, 0, 37);
            }
            
            .rotate4.down {
                -moz-transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg) translate(12px);
                color: rgb(183, 0, 37);
            }
            
            .rotate5.down {
                -moz-transform: rotate(180deg);
                -webkit-transform: rotate(180deg);
                transform: rotate(180deg) translate(12px);
                color: rgb(183, 0, 37);
            }
            
            body {
                font-family: "Open Sans";
            }
            /*new styles*/
            
            .accordion_vsb {
                vertical-align: middle;
                margin: 0 15px;
                padding-right: 10px;
            }
            
            .ud_tab {
                float: right;
                font-size: 11px;
                padding: 0 10px;
                display: inline-block;
                line-height: 44px;
            }
            
            .icheckbox_square-green {
                margin-right: 25px;
            }
            
            .icheckbox_square-red {
                margin-right: 25px;
            }
            
            .thk_tooltip a {
                font-family: Georgia !important;
                font-style: italic !important;
                color: rgb(183, 0, 37) !important;
                font-size: 10px !important;
                text-align: center;
            }
            
            .acc_head {
                color: rgb(206, 116, 134);
            }
            
            .heading_nopad {
                padding: 0px;
                background: #fff !important;
                height: 45px;
            }
            
            .tab_mar {
                padding: 0px;
                margin: 0px;
                font-size: 11px;
            }
            
            .up_down {
                float: right;
                height: 45px;
            }
            
            .up_mod {
                background-color: #e3e3e3;
                padding: 10.25px;
                /*margin-right: 2px;*/
            }
            
            .tab_mar>thead>tr>th {
                border: none;
            }
            
            .body {
                font-size: 13px;
            }
            
            .tab_row {
                height: 45px;
            }
            
            #accordion1 {
                padding: 5px;
                border: 1px;
            }
            
            .main_header {
                font-size: 15px;
                background-color: rgb(246, 246, 246);
            }
            
            .accordion_vsb {
                height: 45px;
                line-height: 45px;
            }
            
            .panel_nopad {
                padding: 0px;
                font-size: 14px;
                font-weight: bold;
            }
            
            .tab_mar>tbody>tr>td {
                padding-top: 0px;
                padding-bottom: 0px;
                vertical-align: middle;
            }
            
            .up_button {
                padding: 0px;
                margin: 0px;
                border: none;
                height: 45px;
                /* margin-right: 2px; */
                box-shadow: none;
                background: none;
                border-left: 3px solid #ffffff;
            }
            
            .icon_border {
                border-right: 1px solid rgb(215, 215, 215);
                padding-top: 10px;
                padding-bottom: 12px;
                margin-right: 10px;
                margin-left: -10px;
            }
            
            .thk_tooltip {
                background-color: rgb(238, 238, 238) !important;
            }
            
            .thk-data--wrapper {
                padding: 20px;
            }
            
            .thkacc-file-upload {
                border: 1px solid #ccc;
                display: inline-block;
                cursor: pointer;
                color: #333333;
                background-color: #e3e3e3;
                margin-top: -1px;
            }
            
            .thkacc-file-upload a {
                color: #333333;
            }
            
            .thkacc-file-upload input[type="file"] {
                display: none;
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
            
            .progress {
                width: 50%;
                margin: -33px 500px auto;
            }
            
            .progress .progress-bar.active {
                font-weight: 700;
                animation: progress-bar-stripes .5s linear infinite;
            }
            
            .dotdotdot:after {
                font-weight: 300;
                content: '...';
                display: inline-block;
                width: 20px;
                text-align: left;
                animation: dotdotdot 1.5s linear infinite;
            }
            
            .tt-icon {
                font-size: 14px;
                padding-right: 25px;
                font-weight: 500;
            }
            
            .thk-checkttt::before {
                content: '\E834';
                height: 24px;
                width: 24px;
                margin-right: 0px;
                vertical-align: middle;
                font-family: 'Material Icons';
                font-weight: normal;
                font-style: normal;
                font-size: 24px;
                display: inline-block;
                vertical-align: middle;
                line-height: 1;
                text-transform: none;
                letter-spacing: normal;
                color: #b70025;
            }
            
            .thk-checkttblack::before {
                content: '\E834';
                height: 24px;
                width: 24px;
                margin-right: 0px;
                vertical-align: middle;
                font-family: 'Material Icons';
                font-weight: normal;
                font-style: normal;
                font-size: 24px;
                display: inline-block;
                vertical-align: middle;
                line-height: 1;
                text-transform: none;
                letter-spacing: normal;
                color: #202121;
            }
            
            .thk-checkttgreen::before {
                content: '\E834';
                height: 24px;
                width: 24px;
                margin-right: 0px;
                vertical-align: middle;
                font-family: 'Material Icons';
                font-weight: normal;
                font-style: normal;
                font-size: 24px;
                display: inline-block;
                vertical-align: middle;
                line-height: 1;
                text-transform: none;
                letter-spacing: normal;
                color: #03b667;
            }
            
            @keyframes dotdotdot {
                0% {
                    content: '...';
                }
                25% {
                    content: '';
                }
                50% {
                    content: '.';
                }
                75% {
                    content: '..';
                }
            }
        </style>
        <div class="thk-data--wrapper" id="THK_Transfer">
            <div class="thk-data--button">
                <button class="tdata-button tdata-button__new new_plan_button">Create New Plan</button>

                <div style="float:right">
                    <i class="material-icons thk-checkttgreen"></i><span class="tt-icon">Successful</span>
                    <i class="material-icons thk-checkttt"></i><span class="tt-icon">Failed</span>
                    <i class="material-icons thk-checkttblack"></i><span class="tt-icon">In Progess</span>
                </div>

            </div>
        </div>
        <script>
            Promise.all([
                loader.css('./../assets/css/ccloader.min.css'),
                loader.css('./../assets/css/toastr.min.css'),
                loader.js('./../assets/js/toastr.js'),
                loader.js('./../assets/js/ccloader.min.js'),
            ]).then(function() {
                $(function($) {
                    var baseURL = (location.protocol + '//' + location.host) + '/v2';
                    var step1 = 10,
                        step2 = 10,
                        step3 = 10;
                    block_ID = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
                        var r = Math.random() * 16 | 0,
                            v = c == 'x' ? r : (r & 0x3 | 0x8);
                        return v.toString(16);
                    });
                    var emailId = $('header-element')[0].email;
                    //var ktrpath = $('embedded-element').data('configuration').ktrpath; 			//Untill KTR path is dynmaic make it comment

                    function sendRequest(url, data, success, complete, error) {
                        $.ajax({
                            url: baseURL + url,
                            type: 'POST',
                            success: success,
                            complete: complete,
                            error: error,
                            data: JSON.stringify(data),
                            headers: {
                                "Content-Type": "application/json"
                            }
                        });
                    }
                    $('.main-body').ccPageLoader();
                    sendRequest('/single/get-kettleData', { // For Fetch Third (Fetch_1)
                        "data": {
                            "businessobject_name": "THK First Fetch",
                            "params": {
                                "Email_ID": [emailId],
                                // "KTR_Folder_Path": [ktrpath]				// Untill KTR path is dynmaic make it comment
                            }
                        }
                    }, function(e) {
                        var result_data = e.data[Object.keys(e.data)[0]].resultSet;
                        for (var x = 0; x <= result_data.length - 1; x++) {
                            var full_plan = $('<div class="panel-group" id="mainAcc' + (++step1) + '-' + (++step2) + '"> <div class="panel panel-default"> <div class="panel-heading heading_nopad" data-planid="' + (step1) + '"> <h4 class="panel-title main_header"> <a data-toggle="collapse" id="accordion199" class="accordion1 tdata-heading" data-parent="#accordion1" href="#collapse-level-' + (step1) + '"> <div class="tdata-collapse--icon"> <i class="material-icons rotate">keyboard_arrow_down</i> </div><span class="tdata-title plan_title" id="plan_name">' + result_data[x][0] + '</span> </a> </h4> </div><div id="collapse-level-' + (step1) + '" class="panel-collapse collapse"> <div class="panel-body THK_Panel" id="THK_Panel"> </div></div></div></div>');
                            $('#THK_Transfer').append(full_plan);
                        }
                        $('.main-body').ccPageLoader(false);
                    }, function(e) {
                        
                    }, function(e) {
                        console.error(e);
                    })
                    $('#THK_Transfer').on('click', '.accordion1', function(evt) { // For Fetch Second (Fetch_2)
						if ($(evt.target).attr('aria-expanded') == undefined) {
                            if (!$(evt.target).parents('.panel-group').find('.accordion2').length) {
                                var processname = $(evt.target).find('span').text()
                                $('.main-body').ccPageLoader();
                                sendRequest('/single/get-kettleData', {
                                    "data": {
                                        "businessobject_name": "THK Second Fetch",
                                        "params": {
                                            "Email_ID": [emailId],
                                            "Process_Name": [processname]
                                        }
                                    }
                                }, function(e) {
                                    var block_data = e.data[Object.keys(e.data)].resultSet;
                                    for (var x = 0; x <= block_data.length - 1; x++) {
                                        if (block_data[x][1].toLowerCase().trim() == 'discard') {
                                            console.log(block_data[x][1].toLowerCase().trim())
                                            d = $('<div class="panel-group" id="accordion' + (++step3) + '"><div class="panel panel-default"><div class="panel-heading f heading_nopad" data-id="' + block_data[x][0] + '"><h4 class="panel-title panel_nopad"><a class="accordion2 accordion-toggle1  tdata-heading" data-toggle="collapse" data-parent="#accordion' + (step3) + '" href="#collapseThree' + (step3) + '"><div class="tdata-collapse--icon"><i class="material-icons rotate">keyboard_arrow_down</i></div><span class="tdata-title tdata-title__incomplete"> Planning- Discarded</span></a><span class="tdata-btn--download"><button class="tdata-button tdata--button__discard discard_btn" disabled >Discard</button></span></h4></div><div id="collapseThree' + (step3) + '" class="panel-collapse collapse"><div class="panel-body panel_nopad"><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" id="upload_ihs" class="upload_ihs" disabled/>Upload IHS File</label></div><div class="space-10" id="step1"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="uploadfiles" disabled/>Upload Updated OEM File</label></div><div class="space-10" id="step2"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="planedvolumefileupload" disabled/>Upload planned volume adjustment</label></div><div class="space-10" id="step3"></div><div class="space-10"></div></div></div></div></div>')
											$('.planedvolumefileupload').attr("disabled", "disabled")
                                            $(evt.target).parents('.heading_nopad').siblings().find('.THK_Panel').append(d);
                                        } else if (block_data[x][1].toLowerCase().trim() == 'sucess') {
                                            console.log('inside success')
                                            d = $('<div class="panel-group" id="accordion' + (++step3) + '"><div class="panel panel-default"><div class="panel-heading f heading_nopad" data-id="' + block_data[x][0] + '"><h4 class="panel-title panel_nopad"><a class="accordion2 accordion-toggle1  tdata-heading" data-toggle="collapse" data-parent="#accordion' + (step3) + '" href="#collapseThree' + (step3) + '"><div class="tdata-collapse--icon"><i class="material-icons rotate">keyboard_arrow_down</i></div><span class="tdata-title tdata-title__incomplete">Planning- Complete </span></a><span class="tdata-btn--download"><button class="tdata-button tdata--button__discard discard_btn" >Discard</button></span></h4></div><div id="collapseThree' + (step3) + '" class="panel-collapse collapse"><div class="panel-body panel_nopad"><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" id="upload_ihs" class="upload_ihs" disabled/>Upload IHS File</label></div><div class="space-10" id="step1"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="uploadfiles"  disabled/>Upload Updated OEM File</label></div><div class="space-10" id="step2"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="planedvolumefileupload" />Upload planned volume adjustment</label></div><div class="space-10" id="step3"></div><div class="space-10"></div></div></div></div></div>')
                                            $(evt.target).parents('.heading_nopad').siblings().find('.THK_Panel').append(d);
                                            $('.main-body').ccPageLoader(false);
                                        } else {
                                            console.log('inside inprogress')
                                            d = $('<div class="panel-group" id="accordion' + (++step3) + '"><div class="panel panel-default"><div class="panel-heading f heading_nopad" data-id="' + block_data[x][0] + '"><h4 class="panel-title panel_nopad"><a class="accordion2 accordion-toggle1  tdata-heading" data-toggle="collapse" data-parent="#accordion' + (step3) + '" href="#collapseThree' + (step3) + '"><div class="tdata-collapse--icon"><i class="material-icons rotate">keyboard_arrow_down</i></div><span class="tdata-title tdata-title__incomplete">Planning- In Progress</span></a><span class="tdata-btn--download"><button class="tdata-button tdata--button__discard discard_btn" disabled>Discard</button></span></h4></div><div id="collapseThree' + (step3) + '" class="panel-collapse collapse"><div class="panel-body panel_nopad"><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" id="upload_ihs" accept="application/vnd.ms-excel" class="upload_ihs"/>Upload IHS File</label></div><div class="space-10" id="step1"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="uploadfiles"  disabled />Upload Updated OEM File</label></div><div class="space-10" id="step2"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="planedvolumefileupload" disabled />Upload planned volume adjustment</label></div><div class="space-10" id="step3"></div><div class="space-10"></div></div></div></div></div>')
                                            $(evt.target).parents('.heading_nopad').siblings().find('.THK_Panel').append(d);
                                            $('.main-body').ccPageLoader(false);
                                        }
                                    }
                                    $('.main-body').ccPageLoader(false);
                                }, function(e) {

                                },
								function (e){
									console.error(e)
								})
                            } else {
                                //Not Run Second Fetch kettle
                            }
                        } else {
                            // Not run Second Fetch kettle
                        }
                    })

                    $('#THK_Transfer').on('click', '.accordion2', function(evnt) { // For Fetch Third (Fetch_3)
                        var t = $(this);
                        if (t.attr('aria-expanded') == undefined) {
                            if (!t.parents('.heading_nopad').siblings().find('#step1').nextUntil('.space-10').length) {
                                var blockId = t.parents('.heading_nopad').data('id');
                                var processname = $(t.parents('.panel').get(1)).find('#plan_name').text();
                                $('.main-body').ccPageLoader();
                                sendRequest('/single/get-kettleData', {
                                    "data": {
                                        "businessobject_name": "THK Third Fetch",
                                        "params": {
                                            "Email_ID": [emailId],
                                            "Process_Name": [processname],
                                            "Block_Id": [blockId],
                                            "UUID": [""]
                                        }
                                    }
                                }, function(e) {
                                    var step_data = e.data[Object.keys(e.data)[0]].resultSet;
                                    var curr_block = $(evnt.target).parents('.heading_nopad').siblings()
                                    for (var x = 0; x <= step_data.length - 1; x++) {
                                        if (step_data[x][0] == null) {
                                            $('.main-body').ccPageLoader(false);
                                        } else {
                                            var step_no = step_data[x][0].toLowerCase().trim()
                                            var uuid = step_data[x][1]
                                            console.log(step_no)
                                            var step_fetch_len = curr_block.find('#' + step_no).nextUntil('.space-10').length
                                            if (step_data[x][8].toLowerCase().trim() === 'complete') {
                                                var step_fetch_len = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                if (step_fetch_len == 0) {
                                                    var filearray = (step_data[x][2]).split(',');
                                                    for (var i = 0; i < filearray.length; i++) { // For Multiple Files
                                                        var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                        $(div_append).insertAfter($(evnt.target).parents('.heading_nopad').siblings().find("#" + step_no));
                                                    }
                                                    if (step_data[x][6] == null) {
                                                        $('.main-body').ccPageLoader(false);
                                                        // t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled");
                                                        t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled");
                                                        t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled");
                                                        t.siblings().find('.discard_btn').removeAttr('disabled');
                                                    } else {
                                                        var nextfilearray = (step_data[x][6]).split(',');
                                                        for (var i = 0; i < nextfilearray.length; i++) { // For Multiple Files
                                                            step_fetch_len = $(evnt.target).parents('.heading_nopad').siblings().find('#' + step_no).nextUntil('.space-10').length;
                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                            $(div_append).insertAfter($($(evnt.target).parents('.heading_nopad').siblings().find('#' + step_no).nextUntil('.space-10')[step_fetch_len - 1]));
                                                        }
                                                    }
                                                    console.log(step_no)
                                                } else {
                                                    var filearray = (step_data[x][2]).split(',');
                                                    for (var i = 0; i < filearray.length; i++) { 
                                                        var a = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_fetch_len - 1];
                                                        var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                        $(div_append).insertAfter($(a));
                                                        a = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_fetch_len - 1];
                                                    }
                                                    var nextfilearray = (step_data[x][6]).split(',');
                                                    for (var i = 0; i < nextfilearray.length; i++) { 
                                                        var next_div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                        $(div_append).insertAfter($(a));
                                                    }
                                                }
                                                if (step_no == 'step1') {
                                                    t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.uploadfiles').removeAttr('disabled')
													if(t.find('span').text().substr(11,9).toLowerCase() == 'discarded'){
														t.siblings().find('.discard_btn').attr("disabled", "disabled")
														t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled")
														t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled")
													}else{
														t.siblings().find('.discard_btn').removeAttr('disabled')
													}
                                                } else if (step_no == 'step2') {
                                                    t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.planedvolumefileupload').removeAttr('disabled')
                                                } else if (step_no == 'step3') {
                                                    t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled");
                                                    t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled");
                                                    if(t.find('span').text().substr(11,9).toLowerCase() == 'discarded'){
														t.siblings().find('.discard_btn').attr("disabled", "disabled")
														t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled");
													}else{
														t.siblings().find('.discard_btn').removeAttr('disabled');
													}
                                                } else {

                                                }
                                            } else if (step_data[x][8].substring(0, 7).toLowerCase().trim() === 'invalid') {
                                                var step_fetch_len = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                if (step_fetch_len == 0) {
                                                    var filearray = (step_data[x][2]).split(',');
                                                    for (var i = 0; i < filearray.length; i++) { 
                                                        var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                        $(div_append).insertAfter($(evnt.target).parents('.heading_nopad').siblings().find("#" + step_no));
                                                    }
                                                } else {
                                                    var nextfilearray = (step_data[x][6]).split(',');
                                                    for (var i = 0; i < nextfilearray.length; i++) { // For Multiple Files
                                                        var a = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_fetch_len - 1];
                                                        var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                        $(div_append).insertAfter($(a));
                                                    }
                                                }
                                                if (step_no == 'step1') {
                                                    t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled")
													t.siblings().find('.discard_btn').attr("disabled", "disabled")
                                                } else if (step_no == 'step2') {
                                                    t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                } else if (step_no == 'step3') {
                                                    t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                    t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled")
                                                } else {

                                                }
                                               
                                            } else {
                                                if (!$(evnt.target).parents('.heading_nopad').siblings().find('#' + step_no).find('.tdata-file__complete').length) {
                                                    var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + step_data[x][2] + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download"><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>')
                                                    incompletediv.insertAfter($(evnt.target).parents('.heading_nopad').siblings().find("#" + step_no));

                                                    console.log(uuid);
                                                    var timer = setInterval(function() {
                                                        sendRequest('/single/get-kettleData', {
                                                            "data": {
                                                                "businessobject_name": "THK Third Fetch",
                                                                "params": {
                                                                    "Email_ID": [""],
                                                                    "Process_Name": [""],
                                                                    "Block_Id": [""],
                                                                    "UUID": [uuid]
                                                                }
                                                            }
                                                        }, function(e) {
                                                            var step_data = e.data[Object.keys(e.data)[0]].resultSet;
                                                            var curr_block = $(evnt.target).parents('.heading_nopad').siblings()
                                                            for (var x = 0; x <= step_data.length - 1; x++) {
                                                                var step_no = step_data[x][0].toLowerCase().trim()
                                                                console.log(step_no)
                                                                var step_fetch_len = curr_block.find('#' + step_no).nextUntil('.space-10').length
                                                                if (step_data[x][8].toLowerCase().trim() === 'complete') {
                                                                    var step_fetch_len = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                    $(incompletediv).remove();
                                                                    if (step_fetch_len == 0) {
                                                                        var filearray = (step_data[x][2]).split(',');
                                                                        for (var i = 0; i < filearray.length; i++) { // For Multiple Files
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(evnt.target).parents('.heading_nopad').siblings().find("#" + step_no));
                                                                        }
                                                                        if (step_no == 'step3') {
                                                                            clearInterval(timer);
                                                                        } else {
                                                                            step_fetch_len = $(evnt.target).parents('.heading_nopad').siblings().find('#' + step_no).nextUntil('.space-10').length;
                                                                            var nextfilearray = (step_data[x][6]).split(',');
                                                                            for (var i = 0; i < nextfilearray.length; i++) { // For Multiple Files
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($($(evnt.target).parents('.heading_nopad').siblings().find('#' + step_no).nextUntil('.space-10')[step_fetch_len - 1]));
                                                                            }
                                                                        }
                                                                        clearInterval(timer);
                                                                    } else {
                                                                        var a = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_fetch_len - 1];
                                                                        var filearray = (step_data[x][2]).split(',');
                                                                        for (var i = 0; i < filearray.length; i++) { // For Multiple Files
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(a));
                                                                        }
                                                                        a = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_fetch_len - 1];
                                                                        var nextfilearray = (step_data[x][6]).split(',');
                                                                        for (var i = 0; i < nextfilearray.length; i++) { // For Multiple Files
                                                                            var next_div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(a));
                                                                        }
                                                                        clearInterval(timer);
                                                                    }
                                                                    if (step_no == 'step1') {
                                                                        t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                                        t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled")
                                                                        //t.siblings().find('.discard_btn').removeAttr('disabled')
                                                                        t.parents('.f').siblings().find('.uploadfiles').removeAttr('disabled')
                                                                    } else if (step_no == 'step2') {
                                                                        t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled")
                                                                        t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                                        t.parents('.f').siblings().find('.planedvolumefileupload').removeAttr('disabled')
                                                                    } else if (step_no == 'step3') {
                                                                        //t.parents('.f').siblings().find('.planedvolumefileupload').attr("disabled", "disabled")
                                                                        t.parents('.f').siblings().find('.upload_ihs').attr("disabled", "disabled")
                                                                        t.parents('.f').siblings().find('.uploadfiles').attr("disabled", "disabled")
                                                                        t.siblings().find('.discard_btn').removeAttr('disabled')
                                                                    } else {

                                                                    }
                                                                    clearInterval(timer);
                                                                } else if (step_data[x][8].substring(0, 7).toLowerCase().trim() === 'invalid') {
                                                                    $(incompletediv).remove();
                                                                    var step_fetch_len = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                    if (step_fetch_len == 0) {
                                                                        var filearray = (step_data[x][2]).split(',');
                                                                        for (var i = 0; i < filearray.length; i++) { // For Multiple Files
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(evnt.target).parents('.heading_nopad').siblings().find("#" + step_no));
                                                                        }
                                                                    } else {
                                                                        var a = $(evnt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_fetch_len - 1];
                                                                        var filearray = (step_data[x][2]).split(',');
                                                                        for (var i = 0; i < filearray.length; i++) { // For Multiple Files
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(a));
                                                                        }
                                                                    }
                                                                    clearInterval(timer);
                                                                    t.siblings().find('.discard_btn').attr("disabled", "disabled")
                                                                } else {}
                                                            }
                                                        }, function(e) {
                                                            console.error(e)
                                                        })
                                                    }, 8 * 1000)
                                                    if (step_no == 'step1') {
                                                        t.siblings().find('.discard_btn').attr("disabled", "disabled")
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    $('.main-body').ccPageLoader(false);
                                }, function(e) {
                                    console.error(e)
                                })

                            } else {
                                //No Run Third Fetch Kettle
                            }
                        } else {
                            //No run Third Fetch Kettle
                        }
                    })

                    $('#THK_Transfer').on("change", ".upload_ihs", function(evt) { // For First Upload and First Job
                        var fileinfo = evt.target.files[0];
                        var regex = new RegExp(/(^IHS_Original_(JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)_[0-9]{4})\.(xlsx|xls)$/i);
                        if (regex.exec(fileinfo.name) == null) {
                            toastr.warning("File name or extenstion is not correct", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else {
                            var ext = fileinfo.name.split('.').pop();
                            var name = fileinfo.name.split('.')[0];
                            var files = evt.target.files;
                            var file = files[0];
                            var blockId = $(evt.target).parents('.collapse').siblings('.f').data('id')
                            var processName = $(evt.target).parents('.panel').parents('.panel').find('#plan_name').text()
                            if (files && file) {
                                var reader = new FileReader();
                                reader.onload = function(readerEvt) {
									if (reader.result) reader.content = reader.result;
									encode = btoa(reader.content);
                                    //var binaryString = readerEvt.target.result;
                                    //encode = btoa(binaryString);
                                    var step = parseInt(1)
                                    var anchor = document.createElement('a');
                                    csvData = new Blob([encode], {
                                        type: 'application/vnd.ms-excel'
                                    });
                                    $('.main-body').ccPageLoader();
                                    sendRequest('/thk-filetransfer/uploadTransferController', {
                                        "data": {
                                            "fileType": ext,
                                            "fileName": name,
                                            "encodedString": encode,
                                        }
                                    }, function(e) {
                                        if (e.status.code == 200) {
                                            var filename_return = e.data.fileName.trim();
                                            var filepath_return = e.data.filePath;
                                            var email = e.data.userEmail;
                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                            if (step_len == 0) {
                                                var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + filename_return + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download" ><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>');
                                                incompletediv.insertAfter($(evt.target).parents('.ta-center').siblings('#step1'));
                                            } else {
                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + filename_return + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download" ><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>');
                                                incompletediv.insertAfter($(a));
                                            }
                                            $('.main-body').ccPageLoader(false);
                                            sendRequest('/single/get-kettleData', {
                                                "data": {
                                                    "businessobject_name": "THK First Job",
                                                    "params": {
                                                        "Block_ID": [blockId],
                                                        "File_Name": [filename_return],
                                                        "File_Path": [filepath_return],
                                                        "Process_Name": [processName],
                                                        "Email_ID": [email]
                                                    }
                                                }
                                            }, function(e) {

                                            }, function(e) {
                                                console.error(e);
                                            })
                                            var uppertimer = setInterval(function() {
                                                sendRequest('/single/get-kettleData', {
                                                    "data": {
                                                        "businessobject_name": "THK Third Fetch",
                                                        "params": {
                                                            "Email_ID": [emailId],
                                                            "Process_Name": [processName],
                                                            "Block_Id": [blockId]
                                                        }
                                                    }
                                                }, function(e) {
                                                    var data = e.data[Object.keys(e.data)[0]].resultSet;
                                                    if (data[data.length - 1][0].toLowerCase().trim() == 'step1') {
                                                        clearInterval(uppertimer);
                                                        if (data[data.length - 1][8].toLowerCase().trim() == 'complete') {
                                                            incompletediv.remove();
                                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                            if (step_len == 0) {
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step1'));
                                                                console.log(data[0][6])
                                                                step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + data[0][6] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1]));

                                                                $(evt.target).attr("disabled", "disabled");
                                                                $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.uploadfiles').removeAttr('disabled')
                                                                $(evt.target).css("cursor", "not-allowed");
                                                                $($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
                                                            } else {
                                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(a));
                                                                a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                var next_div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + data[0][6] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(next_div_append).insertAfter($(a));
                                                                $(evt.target).attr("disabled", "disabled");
                                                                $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.uploadfiles').removeAttr('disabled');
                                                                $(evt.target).css("cursor", "not-allowed");
																$($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
                                                            }
                                                        } else if (data[data.length - 1][8].substring(0, 7).toLowerCase().trim() == 'invalid') {
                                                            clearInterval(uppertimer);
                                                            toastr.error("Invalid File Uploaded", "", {
                                                                "positionClass": "toast-top-right",
                                                                "preventDuplicates": true,
                                                                "timeOut": "3000"
                                                            });
                                                            incompletediv.remove();
                                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                            console.log(step_len)
                                                            if (step_len == 0) {
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step1'));
                                                            } else {
                                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(a));
                                                            }
                                                        } else if (data[data.length - 1][8].toLowerCase().trim() == 'incomplete') {
                                                            clearInterval(uppertimer);
                                                            var uuid = data[data.length - 1][1];
                                                            var timer = setInterval(function() {
                                                                sendRequest('/single/get-kettleData', {
                                                                    "data": {
                                                                        "businessobject_name": "THK Third Fetch",
                                                                        "params": {
                                                                            "Email_ID": [""],
                                                                            "Process_Name": [""],
                                                                            "Block_Id": [""],
                                                                            "UUID": [uuid]
                                                                        }
                                                                    }
                                                                }, function(e) {
                                                                    var data = e.data[Object.keys(e.data)[0]].resultSet;
                                                                    if (data[data.length - 1][0].toLowerCase().trim() == 'step1') {	
                                                                        if (data[0][8].toLowerCase().trim() === 'complete') {
                                                                            incompletediv.remove();
                                                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                            if (step_len == 0) {
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step1'));
                                                                                console.log(data[0][6])
                                                                                step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + data[0][6] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1]));

                                                                                $(evt.target).attr("disabled", "disabled");
                                                                                $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.uploadfiles').removeAttr('disabled')
                                                                                $(evt.target).css("cursor", "not-allowed");
                                                                                $($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
                                                                            } else {
                                                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($(a));
                                                                                a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                                var next_div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + data[0][6] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(next_div_append).insertAfter($(a));
                                                                                $(evt.target).attr("disabled", "disabled");
                                                                                $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.uploadfiles').removeAttr('disabled');
                                                                                $(evt.target).css("cursor", "not-allowed");
																				$($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
                                                                            }
                                                                            clearInterval(timer);
                                                                        } else if (data[0][8].substring(0, 7).toLowerCase().trim() === 'invalid') {
                                                                            toastr.error("Invalid File Uploaded", "", {
                                                                                "positionClass": "toast-top-right",
                                                                                "preventDuplicates": true,
                                                                                "timeOut": "3000"
                                                                            });
                                                                            incompletediv.remove();
                                                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                            console.log(step_len)
                                                                            if (step_len == 0) {
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step1'));
                                                                            } else {
                                                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_return + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($(a));
                                                                            }
                                                                            clearInterval(timer);
                                                                        } else {}
                                                                    }
                                                                }, function(e) {})
                                                            }, 5 * 1000)
                                                        } else {}
                                                    } else {}

                                                }, function(e) {})
                                            }, 10 * 1000)
                                        } else {
                                            $('.main-body').ccPageLoader();
                                            toastr.error("Cannot plan for same month", "", {
                                                "positionClass": "toast-top-right",
                                                "preventDuplicates": true,
                                                "timeOut": "3000"
                                            });
                                        }
                                    }, function(e) {
                                        console.error(e)
                                    })
                                };
                                if (!FileReader.prototype.readAsBinaryString) {
									FileReader.prototype.readAsBinaryString = function (fileData) {
										   var binary = "";
										   var pt = this;
										   var reader = new FileReader();      
										   reader.onload = function (e) {
											   var bytes = new Uint8Array(reader.result);
											   var length = bytes.byteLength;
											   for (var i = 0; i < length; i++) {
												   binary += String.fromCharCode(bytes[i]);
											   }
											//pt.result  - readonly so assign binary
											pt.content = binary;
											$(pt).trigger('onload');
										}
											reader.readAsArrayBuffer(file);
									}
								}
								reader.readAsBinaryString(file);
							}

                        }
                    })

                    $('#THK_Transfer').on("change", ".uploadfiles", function(evt) { // For Second Upload and Second Job
                        var fileinfo = evt.target.files[0];
                        var regex = new RegExp(/(^Updated_OEMGroup_&_OEM_(JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)_[0-9]{4})\.(xlsx|xls)$/i);
                        if (regex.exec(fileinfo.name) == null) {
                            toastr.warning("File name or extenstion is not correct", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else {
                            var fileinfo = evt.target.files[0];
                            var ext = fileinfo.name.split('.').pop();
                            var updateoem_name = fileinfo.name.split('.')[0];
                            var files = evt.target.files;
                            var file = files[0];
                            var blockId = $(evt.target).parents('.collapse').siblings('.f').data('id')
                            var processName = $(evt.target).parents('.panel').parents('.panel').find('#plan_name').text()
                            if (files && file) {
                                //var reader = new FileReader();
                                //reader.onload = function(readerEvt) {
                                   // var binaryString = readerEvt.target.result;
                                    //var encode = btoa(binaryString);
									var reader = new FileReader();
									reader.onload = function(readerEvt) {
									if (reader.result) reader.content = reader.result;
									var encode = btoa(reader.content);
                                    var step = parseInt(1)
                                    var anchor = document.createElement('a');
                                    $('.main-body').ccPageLoader();
                                    sendRequest('/thk-filetransfer/uploadTransferController', {
                                        "data": {
                                            "fileType": ext,
                                            "fileName": updateoem_name,
                                            "encodedString": encode,
                                        }
                                    }, function(e) {
                                        if (e.status.code == 200) {
                                            var filename_replace = e.data.fileName.trim();
                                            var filename_return = e.data.fileName.replace(/\.[^/.]+$/, "");
                                            var filepath_return = e.data.filePath;
                                            var email = e.data.userEmail;
                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                            if (step_len == 0) {
                                                var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + filename_replace + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download"><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>');
                                                incompletediv.insertAfter($(evt.target).parents('.ta-center').siblings('#step2'));
                                            } else {
                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + filename_replace + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download"><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>');
                                                incompletediv.insertAfter($(a));
                                            }
                                            $('.main-body').ccPageLoader(false);
                                            sendRequest('/single/get-kettleData', {
                                                "data": {
                                                    "businessobject_name": "THK Second Job",
                                                    "params": {
                                                        "Block_ID": [blockId],
                                                        "File_Name": [filename_replace],
                                                        "File_Path": [filepath_return],
                                                        "Process_Name": [processName],
                                                        "Email_ID": [email]
                                                    }
                                                }
                                            }, function(e) {

                                            }, function(e) {
                                                console.error(e)
                                            })
                                            var uppertimer = setInterval(function() {
                                                sendRequest('/single/get-kettleData', {
                                                    "data": {
                                                        "businessobject_name": "THK Third Fetch",
                                                        "params": {
                                                            "Email_ID": [emailId],
                                                            "Process_Name": [processName],
                                                            "Block_Id": [blockId]
                                                        }
                                                    }
                                                }, function(e) {
                                                    var data = e.data[Object.keys(e.data)[0]].resultSet;
                                                    if (data[data.length - 1][0].toLowerCase().trim() == 'step2') {
                                                        clearInterval(uppertimer);
                                                        if (data[data.length - 1][8].toLowerCase().trim() == 'complete') {
                                                            incompletediv.remove();
                                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                            if (step_len == 0) {
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step2'));
                                                                console.log(data[0][6])
                                                                step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                var nextfilearray = (data[0][6]).split(',');
                                                                console.log(nextfilearray)
                                                                for (var i = 0; i < nextfilearray.length; i++) {
                                                                    var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                    $(div_append).insertAfter($($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1]));
                                                                }
                                                                $(evt.target).attr("disabled", "disabled");
                                                                $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.uploadfiles').removeAttr('disabled')
                                                                $(evt.target).css("cursor", "not-allowed");
                                                                $($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
                                                            } else {
                                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(a));
                                                                a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                var nextfilearray = (data[0][6]).split(',');
                                                                console.log(nextfilearray)
                                                                for (var i = 0; i < nextfilearray.length; i++) { // For Multiple Files
                                                                    var next_div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                    $(next_div_append).insertAfter($(a));
                                                                }
                                                                $(evt.target).attr("disabled", "disabled");
                                                                $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.uploadfiles').removeAttr('disabled');
                                                                $(evt.target).css("cursor", "not-allowed");
                                                            }
                                                        } else if (data[data.length - 1][8].substring(0, 7).toLowerCase().toLowerCase().trim() == 'invalid') {
                                                            //clearInterval(uppertimer);
                                                            toastr.error("Invalid File Uploaded", "", {
                                                                "positionClass": "toast-top-right",
                                                                "preventDuplicates": true,
                                                                "timeOut": "3000"
                                                            });
                                                            incompletediv.remove();
                                                            var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                            console.log(step_len)
                                                            if (step_len == 0) {
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step2'));
                                                            } else {
                                                                var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                $(div_append).insertAfter($(a));
                                                            }
                                                        } else if (data[data.length - 1][8].toLowerCase().trim() == 'incomplete') {
                                                            var uuid = data[data.length - 1][1];
                                                            var timer = setInterval(function() {
                                                                sendRequest('/single/get-kettleData', {
                                                                    "data": {
                                                                        "businessobject_name": "THK Third Fetch",
                                                                        "params": {
                                                                            "Email_ID": [""],
                                                                            "Process_Name": [""],
                                                                            "Block_Id": [""],
                                                                            "UUID": [uuid]
                                                                        }
                                                                    }
                                                                }, function(e) {
                                                                    var data = e.data[Object.keys(e.data)[0]].resultSet;
                                                                    if (data[0][8].toLowerCase().trim() === 'complete') {
                                                                        incompletediv.remove();
                                                                        var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                        if (step_len == 0) {
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step2'));
                                                                            console.log(data[0][6])
                                                                            step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                            var nextfilearray = (data[0][6]).split(',');
                                                                            console.log(nextfilearray)
                                                                            for (var i = 0; i < nextfilearray.length; i++) {
                                                                                var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(div_append).insertAfter($($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1]));
                                                                            }
                                                                            $(evt.target).attr("disabled", "disabled");
                                                                            $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.planedvolumefileupload').removeAttr('disabled')
                                                                            $(evt.target).css("cursor", "not-allowed");
                                                                            $($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
                                                                        } else {
                                                                            var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(a));
                                                                            a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                            var nextfilearray = (data[0][6]).split(',');
                                                                            console.log(nextfilearray)
                                                                            for (var i = 0; i < nextfilearray.length; i++) { // For Multiple Files
                                                                                var next_div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + nextfilearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                                $(next_div_append).insertAfter($(a));
                                                                            }
                                                                            $(evt.target).attr("disabled", "disabled");
                                                                            $($(evt.target).parents('.ta-center').nextAll('.ta-center').get(0)).find('.planedvolumefileupload').removeAttr('disabled');
                                                                            $(evt.target).css("cursor", "not-allowed");
                                                                        }
                                                                        clearInterval(timer);
                                                                    } else if (data[0][8].substring(0, 7).toLowerCase().trim() === 'invalid') {
                                                                        toastr.error("Invalid File Uploaded", "", {
                                                                            "positionClass": "toast-top-right",
                                                                            "preventDuplicates": true,
                                                                            "timeOut": "3000"
                                                                        });
                                                                        incompletediv.remove();
                                                                        var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
                                                                        console.log(step_len)
                                                                        if (step_len == 0) {
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step2'));
                                                                        } else {
                                                                            var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
                                                                            var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filename_replace + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
                                                                            $(div_append).insertAfter($(a));
                                                                        }
                                                                        clearInterval(timer);
                                                                    } else {}
                                                                }, function(e) {})
                                                            }, 8 * 1000)
                                                        } else {}
                                                    } else {}

                                                }, function(e) {})
                                            }, 5 * 1000)
                                        } else {
                                            $('.main-body').ccPageLoader();
                                            toastr.error("Cannot plan for same month", "", {
                                                "positionClass": "toast-top-right",
                                                "preventDuplicates": true,
                                                "timeOut": "3000"
                                            });
                                        }
                                    }, function(e) {})
                                };
                                if (!FileReader.prototype.readAsBinaryString) {
									FileReader.prototype.readAsBinaryString = function (fileData) {
										   var binary = "";
										   var pt = this;
										   var reader = new FileReader();      
										   reader.onload = function (e) {
											   var bytes = new Uint8Array(reader.result);
											   var length = bytes.byteLength;
											   for (var i = 0; i < length; i++) {
												   binary += String.fromCharCode(bytes[i]);
											   }
											//pt.result  - readonly so assign binary
											pt.content = binary;
											$(pt).trigger('onload');
										}
											reader.readAsArrayBuffer(file);
									}
								}
								reader.readAsBinaryString(file);
                            }
                        }
                    })

                    $('#THK_Transfer').on("change", ".planedvolumefileupload", function(evt) { // For Third Upload and Third Job
						var fileinfo = evt.target.files[0];
							var regex = new RegExp(/(\b(Final_Vehicle Build_))\w+\b/i);
							if (regex.exec(fileinfo.name) == null) {
								toastr.warning("File name or extenstion is not correct", "", {
									"positionClass": "toast-top-right",
									"preventDuplicates": true,
									"timeOut": "3000"
								});
							} else {
								var fileinfo = evt.target.files[0];
								var ext = fileinfo.name.split('.').pop();
								var planned_name = fileinfo.name.split('.')[0];
								var files = evt.target.files;
								var file = files[0];
								var blockId = $(evt.target).parents('.collapse').siblings('.f').data('id')
								var processName = $(evt.target).parents('.panel').parents('.panel').find('#plan_name').text()
								if (files && file) {
									var reader = new FileReader();
									//reader.onload = function(readerEvt) {
										//var binaryString = readerEvt.target.result;
										//var encode = btoa(binaryString);
										//var reader = new FileReader();
										reader.onload = function(readerEvt) {
											if (reader.result) reader.content = reader.result;
											var encode = btoa(reader.content);
											//var binaryString = readerEvt.target.result;
											//encode = btoa(binaryString);
											var step = parseInt(1)
											var anchor = document.createElement('a');
										$('.main-body').ccPageLoader();
										sendRequest('/thk-filetransfer/uploadTransferController', {
											"data": {
												"fileType": ext,
												"fileName": planned_name,
												"encodedString": encode,
											}
										}, function(e) {
											if (e.status.code == 200) {
												var filename_replace = e.data.fileName.trim();
												var filename_return = e.data.fileName.replace(/\.[^/.]+$/, "");
												var filepath_return = e.data.filePath;
												var email = e.data.userEmail;
												var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
												if (step_len == 0) {
													var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + filename_replace + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download"><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>');
													incompletediv.insertAfter($(evt.target).parents('.ta-center').siblings('#step3'));
												} else {
													var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
													var incompletediv = $('<div class="tdata-block--file"><div class="tdata-file--status tdata-file__complete"><span>' + filename_replace + '</span></div><div class="progress"><div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"><span>Uploading File<span class="dotdotdot"></span></span></div></div><span class="tdata-btn--download"><button class="up_button thk_file_download" disabled><i class="material-icons up_mod">file_download</i></button></span></div>');
													incompletediv.insertAfter($(a));
												}
												$('.main-body').ccPageLoader(false);
												sendRequest('/single/get-kettleData', {
													"data": {
														"businessobject_name": "THK Third Job",
														"params": {
															"Block_ID": [blockId],
															"File_Name": [filename_replace],
															"File_Path": [filepath_return],
															"Process_Name": [processName],
															"Email_ID": [email]
														}
													}
												}, function(e) {

												}, function(e) {
													console.error(e)
												})
												var uppertimer = setInterval(function() {
													sendRequest('/single/get-kettleData', {
														"data": {
															"businessobject_name": "THK Third Fetch",
															"params": {
																"Email_ID": [emailId],
																"Process_Name": [processName],
																"Block_Id": [blockId]
															}
														}
													}, function(e) {
														var data = e.data[Object.keys(e.data)[0]].resultSet;
														var objdata = $.grep(data, function(cv, vb) {
															return cv[0] == "step3";
														})
														if (objdata.length) {
															if (!$.grep(objdata, function(cv, vb) {
																	return cv[0] == "step3" && cv[8] == "InComplete";
																}).length) {
																var objdata1 = $.grep(objdata, function(cv, vb) {
																	return cv[0] == "step3" && cv[8] == "Complete";
																})
																if (objdata1.length == objdata.length) {
																	$.each($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10'), function(qw, we) {
																		$(we).remove();
																	})
																}
																if ($.grep(objdata, function(cv, vb) {
																		return cv[0] == "step3" && cv[8] == "InValid_2.1";
																	}).length) {
																	$.each($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10'), function(qw, we) {
																		$(we).remove();
																	})
																}
															}
															$.each(objdata, function(zx, xc) {
																clearInterval(uppertimer);
																if (!$.grep(objdata, function(cv, vb) {
																		return cv[0] == "step3" && cv[8] == "InComplete";
																	}).length) {
																		if (xc[8].toLowerCase().trim() === 'complete') {
																			incompletediv.remove();
																			var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
																			if (step_len == 0) {
																				var filearray = (xc[2]).split(',');
																				for (var i = 0; i < filearray.length; i++) {
																					var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																					$(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step3'));
																				}
																				$(evt.target).css("cursor", "not-allowed");
																				$($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
																			} else {
																				var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
																				var filearray = (xc[2]).split(',');
																				for (var i = 0; i < filearray.length; i++) { //For Multiple Files
																					var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																					$(div_append).insertAfter($(a));
																				}
																				a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
																				$(evt.target).removeAttr('disabled');
																			}
																			$(evt.target).find('span').text('Planning- Complete')
																		} else if (xc[8].substring(0, 7).toLowerCase().trim() === 'invalid') {
																			toastr.error("Invalid File Uploaded", "", {
																				"positionClass": "toast-top-right",
																				"preventDuplicates": true,
																				"timeOut": "3000"
																			});
																			incompletediv.remove();
																			var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
																			console.log(step_len)
																			if (step_len == 0) {
																				var filearray = (xc[2]).split(',');
																				for (var i = 0; i < filearray.length; i++) {
																					var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																					$(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step3'));
																				}
																			} else {
																				var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
																				var filearray = (xc[2]).split(',');
																				for (var i = 0; i < filearray.length; i++) { //For Multiple Files
																					var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																					$(div_append).insertAfter($(a));
																				}
																			}
																		}
																	}
																if (xc[8].toLowerCase().trim() === 'incomplete') {
																	var uuid = data[data.length - 1][1];
																	var timer = setInterval(function() {
																		sendRequest('/single/get-kettleData', {
																			"data": {
																				"businessobject_name": "THK Third Fetch",
																				"params": {
																					"Email_ID": [""],
																					"Process_Name": [""],
																					"Block_Id": [""],
																					"UUID": [uuid]
																				}
																			}
																		}, function(e) {
																			var data = e.data[Object.keys(e.data)[0]].resultSet;
																			var objdata = $.grep(data, function(cv, vb) {
																				return cv[0] == "step3";
																			})
																			console.log(objdata);
																			if (objdata.length) {
																				var objdata1 = $.grep(objdata, function(cv, vb) {
																					return cv[0] == "step3" && cv[8] == "Complete";
																				})
																				if (objdata1.length == objdata.length) {
																					$.each($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10'), function(qw, we) {
																						incompletediv.remove();
																					})
																				}
																				if ($.grep(objdata, function(cv, vb) {
																						return cv[0] == "step3" && cv[8] == "InValid_2.1";
																					}).length) {
																					$.each($(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10'), function(qw, we) {
																						incompletediv.remove();
																					})
																				}
																				$.each(objdata, function(zx, xc) {
																					if (xc[8].toLowerCase().trim() === 'complete') {
																						incompletediv.remove();
																						var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
																						if (step_len == 0) {
																							var filearray = (xc[2]).split(',');
																							for (var i = 0; i < filearray.length; i++) { 
																								var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																								$(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step3'));
																							}
																							//    $(evt.target).attr("disabled", "disabled");
																							$(evt.target).css("cursor", "not-allowed");
																							$($(evt.target).parents('.panel-collapse').get(0)).prev().find('.discard_btn').removeAttr('disabled');
																						} else {
																							var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
																							var filearray = (xc[2]).split(',');
																							for (var i = 0; i < filearray.length; i++) { //For Multiple Files
																								var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__success"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																								$(div_append).insertAfter($(a));
																							}
																							a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
																							//$(evt.target).attr("disabled", "disabled");
																							$(evt.target).removeAttr('disabled');
																							//$(evt.target).css("cursor", "not-allowed");
																						}
																						clearInterval(timer);
																						$(evt.target).find('span').text('Planning- Complete')
																					} else if (xc[8].substring(0, 7).toLowerCase().trim() === 'invalid') {
																						toastr.error("Invalid File Uploaded", "", {
																							"positionClass": "toast-top-right",
																							"preventDuplicates": true,
																							"timeOut": "3000"
																						});
																						incompletediv.remove();
																						var step_len = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10').length;
																						console.log(step_len)
																						if (step_len == 0) {
																							var filearray = (xc[2]).split(',');
																							for (var i = 0; i < filearray.length; i++) { //For Multiple Files
																								var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i class="material-icons up_mod">file_download</i></button></span></div>';
																								$(div_append).insertAfter($(evt.target).parents('.ta-center').siblings('#step3'));
																							}
																						} else {
																							var a = $(evt.target).parents('.ta-center').next('.space-10').nextUntil('.space-10')[step_len - 1];
																							var filearray = (xc[2]).split(',');
																							for (var i = 0; i < filearray.length; i++) { //For Multiple Files
																								var div_append = '<div class="tdata-block--file"><div class="tdata-file--status tdata-file__failed"><span>' + filearray[i] + '</span></div><span class="tdata-btn--download"><button class="up_button thk_file_download"><i 	class="material-icons up_mod">file_download</i></button></span></div>';
																								$(div_append).insertAfter($(a));
																							}
																						}
																						clearInterval(timer);
																					} else {}


																				})
																			}

																		}, function(e) {})
																	}, 5 * 1000)
																}
															})
														}

													}, function(e) {

													})
												}, 10 * 1000)
											} else {
												$('.main-body').ccPageLoader();
												toastr.error("Cannot plan for same month", "", {
													"positionClass": "toast-top-right",
													"preventDuplicates": true,
													"timeOut": "3000"
												});
											} 
										}, function(e) {
											console.error(e)
										})
									}
									if (!FileReader.prototype.readAsBinaryString) {
									FileReader.prototype.readAsBinaryString = function (fileData) {
										   var binary = "";
										   var pt = this;
										   var reader = new FileReader();      
										   reader.onload = function (e) {
											   var bytes = new Uint8Array(reader.result);
											   var length = bytes.byteLength;
											   for (var i = 0; i < length; i++) {
												   binary += String.fromCharCode(bytes[i]);
											   }
											//pt.result  - readonly so assign binary
											pt.content = binary;
											$(pt).trigger('onload');
										}
											reader.readAsArrayBuffer(file);
									}
								}
								reader.readAsBinaryString(file);
								}
							}
					})

                    $('#THK_Transfer').on('click', '.thk_file_download', function(e) { // For File Download
                        $('.main-body').ccPageLoader();
                        //var file_uuid= ($(e.target).parents('td').siblings(':first').find('input').val())
                        var download_filename = $(e.target).parents('.tdata-block--file').find('.tdata-file--status').find('span').text().trim();
                        var data = JSON.stringify({
                            "data": {
                                "fileName": download_filename
                            }
                        })
                        var xhr = new XMLHttpRequest();
                        xhr.open('POST', baseURL + "/thk-filetransfer/downloadTransferController", true);
                        xhr.responseType = 'arraybuffer';
                        xhr.onload = function() {
                            if (this.status === 200) {
                                var filename = "";
                                var disposition = xhr.getResponseHeader('Content-Disposition');
                                if (disposition && disposition.indexOf('attachment') !== -1) {
                                    var filenameRegex = /filename[^;=\n]*=((['"]).*?\2|[^;\n]*)/;
                                    var matches = filenameRegex.exec(disposition);
                                    if (matches != null && matches[1]) filename = matches[1].replace(/['"]/g, '');
                                }
                                var type = xhr.getResponseHeader('Content-Type');
                                var blob = new Blob([this.response], {
                                    type: type
                                });
                                if (typeof window.navigator.msSaveBlob !== 'undefined') {
                                    window.navigator.msSaveBlob(blob, filename);
                                } else {
                                    var URL = window.URL || window.webkitURL;
                                    var downloadUrl = URL.createObjectURL(blob);
                                    if (filename) {
                                        var a = document.createElement("a");
                                        if (typeof a.download === 'undefined') {
                                            window.location = downloadUrl;
                                        } else {
                                            a.href = downloadUrl;
                                            a.download = filename;
                                            document.body.appendChild(a);
                                            a.click();
                                        }
                                    } else {
                                        window.location = downloadUrl;
                                    }
                                    setTimeout(function() {
                                        $('.main-body').ccPageLoader(false);
                                        URL.revokeObjectURL(downloadUrl);
                                    }, 100);
                                }
                            }
                        };
                        xhr.setRequestHeader('Content-type', 'application/json');
                        xhr.send(data);
                    })
	
                    $('#THK_Transfer').on('click', '.new_plan_button', function(evt) { // For Create New Plan Button
                        var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                        var date = new Date()
                        var curr_month = monthNames[date.getMonth()]
                        var curr_year = new Date().getFullYear()
                        var plan_month = $(evt.target).parent().nextAll('.panel-group').last().find('.plan_title').text().split(" ");
                        console.log(plan_month)
                        if (plan_month.length >= 2 && (curr_month.toLowerCase().trim() === plan_month[1].toLowerCase().trim())) {
                            toastr.error("Cannot plan for same month", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        } else {
                            var full_plan = $('<div class="panel-group" id="mainAcc' + (++step1) + '-' + (++step2) + '"> <div class="panel panel-default"> <div class="panel-heading heading_nopad" data-planid="' + (step1) + '"> <h4 class="panel-title main_header"> <a data-toggle="collapse" class="accordion1 tdata-heading" data-parent="#accordion1" href="#collapse-level-' + (step1) + '"> <div class="tdata-collapse--icon"> <i class="material-icons rotate">keyboard_arrow_down</i> </div><span class="tdata-title plan_title" id="plan_name">Planning ' + curr_month + ' ' + curr_year + '</span> </a> </h4> </div><div id="collapse-level-' + (step1) + '" class="panel-collapse collapse"> <div class="panel-body THK_Panel" id="THK_Panel"> <div class="panel-group" id="accordion-level-' + (step1) + '-' + (step2) + '"> <div class="panel panel-default"> <div class="panel-heading f heading_nopad" data-id="' + 'xxxxxxxx'.replace(/[xy]/g, function(c) {
                                var d = new Date().getTime();
                                var r = (d + Math.random() * 16) % 16 | 0;
                                d = Math.floor(d / 16);
                                return r.toString();
                            }) + '"> <h4 class="panel-title panel_nopad"> <a class="accordion2 accordion-toggle1 tdata-heading" data-toggle="collapse" data-parent="#accordion-level-' + (step1) + '-' + (step2) + '" href="#collapse-level-' + (step1) + '-' + (step2) + '"> <div class="tdata-collapse--icon"> <i class="material-icons rotate">keyboard_arrow_down</i> </div><span class="tdata-title tdata-title__incomplete"> Planning- In Progress </span> </a> <span class="tdata-btn--download"> <button class="tdata-button tdata--button__discard discard_btn" disabled> Discard </button> </span> </h4> </div><div id="collapse-level-' + (step1) + '-' + (step2) + '" class="panel-collapse collapse"> <div class="panel-body panel_nopad"> <div class="space-10"></div><div class="ta-center"> <label class="tdata-button tdata--button__upload thkacc-file-upload"> <input type="file" accept="application/vnd.ms-excel" id="upload_ihs" class="upload_ihs"/>Upload IHS File </label> </div><div class="space-10" id="step1"></div><div class="space-10"></div><div class="ta-center"> <label class="tdata-button tdata--button__upload thkacc-file-upload"> <input type="file" accept="application/vnd.ms-excel" class="uploadfiles" disabled/>Upload Updated OEM File </label> </div><div class="space-10" id="step2"></div><div class="space-10"></div><div class="ta-center"> <label class="tdata-button tdata--button__upload thkacc-file-upload"> <input type="file" accept="application/vnd.ms-excel" class="planedvolumefileupload" disabled />Upload planned volume adjustment </label> </div><div class="space-10" id="step3"></div><div class="space-10"></div></div></div></div></div></div></div></div></div>');
                            $('#THK_Transfer').append(full_plan);
                        }
                    });

                    $('#THK_Transfer').on('click', '.discard_btn', function(evt) { // For Discard Button
						console.log('bingo')
                        evt.preventDefault();
                        var blockid = $(evt.target).parents('.heading_nopad').data('id')
                        d = $('<div class="panel-group" id="accordion' + (++step3) + '"><div class="panel panel-default"><div class="panel-heading f heading_nopad" data-id="' + 'xxxxxxxx'.replace(/[xy]/g, function(c) {
                            var d = new Date().getTime();
                            var r = (d + Math.random() * 16) % 16 | 0;
                            d = Math.floor(d / 16);
                            return r.toString();
                        }) + '"><h4 class="panel-title panel_nopad"><a class="accordion2 accordion-toggle1  tdata-heading" data-toggle="collapse" data-parent="#accordion' + (step3) + '" href="#collapseThree' + (step3) + '"><div class="tdata-collapse--icon"><i class="material-icons rotate">keyboard_arrow_down</i></div><span class="tdata-title tdata-title__incomplete">Planning- In Progress <span></a><span class="tdata-btn--download"><button class="tdata-button tdata--button__discard discard_btn" disabled>Discard</button></span></h4></div><div id="collapseThree' + (step3) + '" class="panel-collapse collapse"><div class="panel-body panel_nopad"><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" id="upload_ihs" class="upload_ihs"/>Upload IHS File</label></div><div class="space-10" id="step1"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="uploadfiles" disabled/>Upload Updated OEM File</label></div><div class="space-10" id="step2"></div><div class="space-10"></div><div class="ta-center"><label class="tdata-button tdata--button__upload thkacc-file-upload"><input type="file" accept="application/vnd.ms-excel" class="planedvolumefileupload" disabled />Upload planned volume adjustment</label></div><div class="space-10" id="step3"></div><div class="space-10"></div></div></div></div></div>')
                        $(evt.target).parents('.THK_Panel').append(d);
                        $(evt.target).attr('disabled', 'disabled');
                        $(evt.target).parents('.f').siblings().find('input').attr("disabled", "disabled");
                        $(evt.target).parent().siblings().find('span').text('Planning- Discarded')
                        $('.main-body').ccPageLoader();
                        sendRequest('/single/get-kettleData', {
                            "data": {
                                "businessobject_name": "THK Discard KTR",
                                "params": {
                                    Block_ID: [blockid],
                                    Next_Block_ID: [$(evt.target).parents('.panel-group').parent().find('.panel-group').last().find('.f').data('id')],
                                    Email_ID: [emailId],
                                    Process_Name: [$(evt.target).parents('.panel-collapse').siblings().find('span').text()]
                                }
                            }
                        }, function(e) {
                            var discard_data = e.data[Object.keys(e.data)[0]].resultSet;
                            if (discard_data[0][2]) {
                                toastr.success("This Block is Discarded", "", {
                                    "positionClass": "toast-top-right",
                                    "preventDuplicates": true,
                                    "timeOut": "3000"
                                });
                            }
                            $('.main-body').ccPageLoader(false);
                        }, function(e) {
                            console.error(e);
                        })
                    });

                    $('#THK_Transfer').on('click', '.accordion-toggle1', function(e) {
                        e.preventDefault();
                        $(this).parent().css('background-color', 'rgb(246,246,246)').parent().removeClass('panel-heading');
                        if (!$($(this).attr('href')).is(':visible')) {
                            $(this).parent().css('background-color', 'rgb(246,246,246)');

                        } else {
                            $(this).parent().css('background-color', '#fff');

                        }
                    });

                    $('[data-toggle="tooltip"]').tooltip();
                    $('.ac-panel--toggle a, .page-quick-sidebar-toggler, .quick-sidebar-toggler').click(function(e) {
                        $('body').toggleClass('ac-panel-open');
                    });

                    $('body').on('click', '.dropdown-menu.hold-on-click', function(e) {
                        e.stopPropagation();
                    });

                    $(function() {
                        $('[data-toggle="tooltip"]').tooltip()
                    })

                    $(".accordion1").click(function() {
                        $(".rotate").toggleClass("down");
                    })

                    $(".accordion2").click(function() {
                        $(".rotate1").toggleClass("down");
                    })

                    $(".accordion3").click(function() {
                        $(".rotate2").toggleClass("down");
                    })

                    $(".accordion4").click(function() {
                        $(".rotate3").toggleClass("down");
                    })

                    $(".accordion5").click(function() {
                        $(".rotate4").toggleClass("down");
                    })

                    $(".accordion6").click(function() {
                        $(".rotate5").toggleClass("down");
                    })
                });
            }).catch(function(e) {
                console.log(e);
                console.log('1111 Oh no, epic failure!');
            });
        </script>