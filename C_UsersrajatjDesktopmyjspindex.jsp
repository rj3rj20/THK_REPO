<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <link rel="stylesheet" href="<c:url value='/assets/libraries/wizard/jquery-wizard.min.css'/>">
        <link rel="stylesheet" href="<c:url value='/assets/libraries/formValidation/formValidation.min.css'/>">
        <link rel="stylesheet" href="<c:url value='/assets/libraries/multi-select/multi-select.min.css'/>">
        <style>
            #THK_PROJECT {
                font-family: 'Open Sans', sans-serif;
            }
			.col-md-1-7 {
                width: 14.28571429%;
            }
            .col-md-1-9 {
                width: 11.11111111%;
            }
            
            .col-md-1-20 {
                width: 20%;
                height:0px;
            }
            
            .col-md-1-80 {
                width: 80%;
                <!--margin-top: -520px; -->
            }
            
            .col-md-1-7,
            .col-md-1-9,
            .col-md-1-20,
            .col-md-1-80 {
                float: left;
                min-height: 1px;
                position: relative;
                padding-right: 15px;
                padding-left: 15px;
            }
            
            .steps {
                margin-bottom: 22px;
            }
            
            .steps.row {
                margin-left: 0;
                margin-right: 0;
                display: block;
            }
            
            .step {
                position: relative;
                padding: 12px 20px;
                margin: 0;
                color: #a3afb7;
                font-size: inherit;
                vertical-align: top;
                background-color: #f3f7f9;
                border-radius: 0;
            }
            
            input[type=number]::-webkit-inner-spin-button,
            input[type=number]::-webkit-outer-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
            
            .step-icon {
                float: left;
                font-size: 20px;
                margin-right: 0.5em;
            }
            
            .step-number {
                position: absolute;
                top: 50%;
                -ms-transform: translateY(-50%);
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
                left: 20px;
                width: 40px;
                height: 40px;
                font-size: 24px;
                line-height: 40px;
                color: #ffffff;
                text-align: center;
                background: #e4eaec;
                border-radius: 50%;
            }
            
            .step-number~ .step-desc {
                min-height: 40px;
                margin-left: 50px;
            }
            
            .step-title {
                font-size: 20px;
                color: #526069;
                margin-bottom: 0;
            }
            
            .step-desc {
                text-align: left;
            }
            
            .step-desc p {
                margin-bottom: 0;
            }
            
            .steps-vertical .step {
                display: block;
                padding: 18px 20px;
            }
            
            .steps-vertical .step[class*="col-"] {
                width: 100%;
                float: none;
            }
            
            .step.current {
                color: #ffffff;
                background-color: #62a8ea;
            }
            
            .step.current .step-title {
                color: #ffffff;
            }
            
            .step.current .step-number {
                color: #62a8ea;
                background-color: #ffffff;
            }
            
            .step.disabled {
                color: #ccd5db;
                pointer-events: none;
                cursor: auto;
            }
            
            .step.disabled .step-title {
                color: #ccd5db;
            }
            
            .step.disabled .step-number {
                background-color: #ccd5db;
            }
            
            .step.error {
                color: #ffffff;
                background-color: #f96868;
            }
            
            .step.error .step-title {
                color: #ffffff;
            }
            
            .step.error .step-number {
                color: #f96868;
                background-color: #ffffff;
            }
            
            .step.done {
                color: #ffffff;
                background-color: #46be8a;
            }
            
            .step.done .step-title {
                color: #ffffff;
            }
            
            .step.done .step-number {
                color: #46be8a;
                background-color: #ffffff;
            }
            
            .steps-lg .step {
                padding: 20px 20px;
                font-size: 16px;
            }
            
            .steps-lg .step-icon {
                font-size: 22px;
            }
            
            .steps-lg .step-title {
                font-size: 22px;
            }
            
            .steps-lg .step-number {
                width: 46px;
                height: 46px;
                font-size: 28px;
                line-height: 46px;
            }
            
            .steps-lg .step-number~ .step-desc {
                min-height: 46px;
                margin-left: 56px;
            }
            
            .steps-sm .step {
                font-size: 12px;
            }
            
            .steps-sm .step-icon {
                font-size: 18px;
            }
            
            .steps-sm .step-title {
                font-size: 18px;
            }
            
            .steps-sm .step-number {
                width: 30px;
                height: 30px;
                font-size: 24px;
                line-height: 30px;
            }
            
            .steps-sm .step-number~ .step-desc {
                min-height: 30px;
                margin-left: 40px;
            }
            
            .steps-xs .step {
                font-size: 10px;
            }
            
            .steps-xs .step-icon {
                font-size: 16px;
            }
            
            .steps-xs .step-title {
                font-size: 16px;
            }
            
            .steps-xs .step-number {
                width: 24px;
                height: 24px;
                font-size: 20px;
                line-height: 24px;
            }
            
            .steps-xs .step-number~ .step-desc {
                min-height: 24px;
                margin-left: 34px;
            }
            
            .no-padding {
                padding: 0 !important
            }
            
            .pearls.row {
                display: block;
                border-bottom: 1px solid rgba(0, 0, 0, .1);
            }
            
            .pearls.row-bdernone {
                display: block;
                border-bottom: none !important;
                <!--border-bottom: 1px solid rgba(0, 0, 0, .1);-->
            }
            
            .pearl {
                position: relative;
                padding: 0;
                margin: 0;
                text-align: center;
            }
            
            .pearl-top {
                position: relative;
                padding: 0;
                margin-top: -10px;
            }
            
            .pearl:before,
            .pearl:after {
                position: absolute;
                top: 18px;
                z-index: 0;
                width: 50%;
                height: 4px;
                content: "";
                background-color: #f3f7f9;
            }
            
            .pearl:before {
                left: 0;
            }
            
            .pearl:after {
                right: 0;
            }
            
            .pearl:first-child:before,
            .pearl:last-child:after {
                display: none !important;
            }
            
            .pearl-number,
            .pearl-icon {
                position: relative;
                z-index: 1;
                display: inline-block;
                width: 38px;
                height: 38px;
                line-height: 38px;
                color: #ffffff;
                text-align: center;
                background: #ccd5db;
                border-radius: 50%;
                border: 2px solid #ccd5db;
            }
            
            .pearl-number {
                font-size: 18px;
            }
            
            .pearl-icon {
                font-size: 18px;
            }
            
            .pearl-title {
                margin-top: 0.5em;
                display: block;
                font-size: 16px;
                color: #526069;
                margin-bottom: 0;
                overflow: hidden;
                text-overflow: ellipsis;
                word-wrap: normal;
                white-space: nowrap;
            }
            
            .pearl.current:before,
            .pearl.current:after {
                background-color: #43a047;
            }
            
            .pearl.current .pearl-number,
            .pearl.current .pearl-icon {
                color: #43a047;
                background-color: #ffffff;
                border-color: #43a047;
                transform: scale(1.1);
            }
            
            .pearl.disabled {
                pointer-events: none;
                cursor: auto;
            }
            
            .pearl.disabled:before,
            .pearl.disabled:after {
                background-color: #f3f7f9;
            }
            
            .pearl.disabled .pearl-number,
            .pearl.disabled .pearl-icon {
                color: #ffffff;
                background-color: #ccd5db;
                border-color: #ccd5db;
            }
            
            .pearl.disabled .pearl-icon {
                background: rgba(0, 0, 0, .6)
            }
            
            .pearl.error:before {
                background-color: #43a047;
            }
            
            .pearl.error:after {
                background-color: #f3f7f9;
            }
            
            .pearl.error .pearl-number,
            .pearl.error .pearl-icon {
                color: #f96868;
                background-color: #ffffff;
                border-color: #f96868;
            }
            
            .pearl.error .pearl-icon,
            .pearl.current .pearl-icon {
                background: #b70025;
                /* Old browsers */
                background: -moz-linear-gradient(top, #b70025 0%, #79021a 100%);
                /* FF3.6-15 */
                background: -webkit-linear-gradient(top, #b70025 0%, #79021a 100%);
                /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom, #b70025 0%, #79021a 100%);
                /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#b70025', endColorstr='#79021a', GradientType=0);
                /* IE6-9 */
                color: #fff
            }
            
            .pearl.done .pearl-icon {
                background: #6b6b6b;
                /* Old browsers */
                background: -moz-linear-gradient(top, #6b6b6b 0%, #030707 100%);
                /* FF3.6-15 */
                background: -webkit-linear-gradient(top, #6b6b6b 0%, #030707 100%);
                /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom, #6b6b6b 0%, #030707 100%);
                /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#6b6b6b', endColorstr='#030707', GradientType=0);
                /* IE6-9 */
                color: #fff
            }
            
            .pearl.current:before,
            .pearl.current:after,
            .pearl.done:before,
            .pearl.done:after {
                background-color: #b00125 !important
            }
            
            .pearl-icon {
                border: 0
            }
            
            .pearl-icon i {
                vertical-align: middle;
                font-size: 20px;
                margin-top: -5px
            }
            
            .pearl-title {
                font-size: 13px;
                font-weight: 600;
                padding: 5px 10px;
                margin-top: 0px
            }
            
            .thk-steps {
                top: 17px;
                padding-bottom: 16px;
            }
            
            .pearl.done:before,
            .pearl.done:after {
                background-color: #43a047;
            }
            
            .pearl.done .pearl-number,
            .pearl.done .pearl-icon {
                color: #ffffff;
                background-color: #43a047;
                border-color: #43a047;
                cursor: pointer;
            }
            
            .pearls-lg .pearl:before,
            .pearls-lg .pearl:after {
                top: 20px;
            }
            
            .pearls-lg .pearl-title {
                font-size: 18px;
            }
            
            .pearls-lg .pearl-number,
            .pearls-lg .pearl-icon {
                width: 40px;
                height: 40px;
                line-height: 36px;
            }
            
            .pearls-lg .pearl-icon {
                font-size: 20px;
            }
            
            .pearls-lg .pearl-number {
                font-size: 20px;
            }
            
            .pearls-sm .pearl:before,
            .pearls-sm .pearl:after {
                top: 16px;
            }
            
            .pearls-sm .pearl-title {
                font-size: 14px;
            }
            
            .pearls-sm .pearl-number,
            .pearls-sm .pearl-icon {
                width: 32px;
                height: 32px;
                line-height: 28px;
            }
            
            .pearls-sm .pearl-number {
                font-size: 16px;
            }
            
            .pearls-sm .pearl-icon {
                font-size: 14px;
            }
            
            .pearls-xs .pearl:before,
            .pearls-xs .pearl:after {
                top: 12px;
                height: 2px;
            }
            
            .pearls-xs .pearl-title {
                font-size: 12px;
            }
            
            .pearls-xs .pearl-number,
            .pearls-xs .pearl-icon {
                width: 24px;
                height: 24px;
                line-height: 20px;
            }
            
            .pearls-xs .pearl-number {
                font-size: 12px;
            }
            
            .pearls-xs .pearl-icon {
                font-size: 12px;
            }
            
            .pearl.disabled {
                pointer-events: visible;
            }
            
            table.testgrid {
                border-collapse: collapse;
                border: 1px solid #CCB;
                width: 800px;
            }
            
            table.testgrid td,
            table.testgrid th {
                padding: 5px;
                border: 1px solid #E0E0E0;
            }
            
            table.testgrid th {
                background: #E5E5E5;
                text-align: left;
            }
            
            input.invalid {
                background: red;
                color: #FDFDFD;
            }
            
            .datagrid table {
                border-collapse: collapse;
                text-align: left;
                width: 100%;
            }
            
            .datagrid {
                font: normal 12px/150% Arial, Helvetica, sans-serif;
                background: #fff;
                overflow-y: scroll;
                /*border: 1px solid #006699;*/
                -webkit-border-radius: 3px;
                -moz-border-radius: 3px;
                border-radius: 3px;
            }
            
            .datagrid table td,
            .datagrid table th {
                padding: 3px 10px;
            }
            
            .pearl.disabled {
                pointer-events: visible;
            }
            
            body {
                /* font-family: 'lucida grande', tahoma, verdana, arial, sans-serif; */
                font-size: 11px;
            }
            
            h1 {
                font-size: 15px;
            }
            
            a {
                color: #548dc4;
                text-decoration: none;
            }
            
            a:hover {
                text-decoration: underline;
            }
            
            table.testgrid {
                border-collapse: collapse;
                border: 1px solid #CCB;
                width: 800px;
            }
            
            table.testgrid td,
            table.testgrid th {
                padding: 5px;
                border: 1px solid #E0E0E0;
            }
            
            table.testgrid th {
                background: #E5E5E5;
                text-align: left;
            }
            
            input.invalid {
                background: red;
                color: #FDFDFD;
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
            
            table,
            th,
            {
                border: 1px solid rgba(230, 230, 230, 0.18);
            }
            
            <!--styles added --> <!--==================NEW STYLES 18/7/2016 Author: Syed Rizwan Uddin==================================--> .panel {}
            
            .thk--top-header,
            .thk--buttons-footer {
                position: relative;
                padding: 10px 0;
                border-bottom: 2px solid rgba(0, 0, 0, .03);
                background: rgba(0, 0, 0, .05);
                width: 100%;
            }
            
            .panel-body>.wizard-buttons {
                border-top: 2px solid rgba(0, 0, 0, .03);
                margin: 0;
                padding: 10px 15px;
            }
            
            .thk--buttons-footer {
                border-bottom: none;
                border-top: 1px solid rgba(0, 0, 0, .1);
                margin-top: 40px;
                margin-top: 40px;
                padding: 10px 15px;
                background: none
            }
            
            .thk--top-header.no-bg {
                background: none;
                border-bottom: 1px solid rgba(0, 0, 0, .03);
                padding: 12px 15px;
            }
            
            .thk--top-header> h2 {
                margin: 0;
                margin-left: 15px;
                font-size: 24px;
                font-weight: 600
            }
            
            .thk--top-header> h2 span.light {
                font-weight: 300 !important;
                font-size: 20px;
                margin-left: 20px;
            }
            
            .thk--inner-heading.no-border> h4 {
                margin: 0;
                margin-left: 15px;
                font-size: 16px;
                font-weight: 600
            }
            
            .thk--inner-heading.no-border:after {
                background: transparent
            }
            
            .thk--top-header.no-bg> h3 {
                margin: 0;
                font-size: 20px;
                font-weight: 300
            }
            
            .thk--inner-heading {
                position: relative;
                padding-bottom: 1px;
                margin: -10px 0 20px 0
            }
            
            .thk--inner-heading:after,
            .thk-part-heading:after {
                content: '';
                position: absolute;
                left: 0;
                bottom: 0;
                width: 50px;
                height: 3px;
                background: #FFC107;
            }
            
            .thk-part-heading {
                position: relative;
                padding-bottom: 1px;
                margin: 10px 0 10px 0
            }
            
            .thk-m-b {
                margin: 10px 0 0px 0
            }
            
            .thk--inner-heading> h2,
            .thk-part-heading>h4 {
                margin: 0;
                margin-bottom: 10px;
                font-size: 18px;
                font-weight: 600;
                color: #b70025
            }
            
            .thk-part-heading>h4 {
                font-size: 16px;
            }
            
            .thk-step-heading {
                padding: 5px 22px;
                position: relative;
                border-bottom: 1px solid #f00;
                margin-left: -15px;
                margin-right: -15px;
            }
            
            .thk-step-heading> h4 {
                color: #f9a736;
                font-size: 24px;
            }
            
            .thk-step-heading.top-lables> h4 {
                color: #000000;
                font-size: 24px;
            }
            
            .thk-step-heading .btn-history {
                background-color: #F4AC36;
                border-color: #f2a654;
            }
            
            .thk-step-heading .btn-history:hover {
                background-color: #F9B951;
                border-color: #f2a654;
            }
            
            .thk-step-title> h3 {
                display: block;
                padding: 20px 30px;
                font-size: 11px;
                color: #a3afb7;
                text-align: -webkit-right;
                font-style: italic;
            }
            
            .thk-step-title> h4 {
                display: block;
                padding: 20px 30px;
                font-size: 11px;
                color: #000000;
                text-align: -webkit-right;
                font-style: italic;
            }
            
            .top-lables {
                position: relative;
                width: 100%;
                padding: 5px;
                background-color: #f3f4f5;
            }
            
            .thk-step-heading .btn-view {
                background-color: #F4AC36;
                border-color: #f2a654;
            }
            
            .thk-step-heading {
                padding: 5px 22px;
                position: relative;
                border-bottom: 1px solid #f1f2f2;
                margin-left: -15px;
                margin-right: -15px;
            }
            
            .thk-step-heading> h4 {
                color: #f9a736;
                font-size: 24px;
            }
            
            .thk-step-heading.top-lables> h4 {
                color: #000000;
                font-size: 24px;
            }
            
            .thk-step-heading .btn-history {
                background-color: #F4AC36;
                border-color: #f2a654;
            }
            
            .thk-step-heading .btn-history:hover {
                background-color: #F9B951;
                border-color: #f2a654;
            }
            
            .thk-step-title> h3 {
                display: block;
                padding: 20px 30px;
                font-size: 11px;
                color: #a3afb7;
                text-align: -webkit-right;
                font-style: italic;
            }
            
            .thk-step-title> h4 {
                display: block;
                padding: 20px 30px;
                font-size: 11px;
                color: #000000;
                text-align: -webkit-right;
                font-style: italic;
            }
            
            .thk-steps {
                position: relative;
            }
            
            .thk-next {
                margin: 0 auto;
                position: relative;
                width: 120px;
                float: right;
                /*left: 95%;*/
                margin-left: -120px;
                background-color: : black;
            }
            
            .thk-next-icon {
                padding: 0px 0px 0px 34px;
            }
            
            .thk-back-icon {
                margin-right: 31px;
            }
            /*.thk-back {
					margin: 0 auto;
					position: relative;
					width: 120px;
					float: none;
					left: 95%;
					margin-left: -120px;

				  }*/
            
            .history-btn {
                margin: 0 auto;
                position: relative;
                width: 120px;
                float: none;
                left: 95%;
                margin-left: -120px;
                top: -41px;
            }
            
            .panel {}
            
            .panel.thk-body {
                background: #fff;
                box-shadow: 0px 1px 3px 1px #d0d4d9 !important;
                border: 4px solid transparent !important;
                border-radius: 0px
            }
            
            .panel-body.thk-body {
                padding: 0 0px;
            }
            
            .thk-inner-content {
                padding: 15px;
            }
            
            .p-0 {
                padding: 0px
            }
            
            .thk-divider-wrapper {
                padding: 20px 0;
                border-bottom: 1px solid rgba(0, 0, 0, .1)
            }
            
            .p-0 {
                padding: 0px;
            }
            
            .thk-divider-wrapper.opt2 {
                padding: 10px 0;
                border-bottom: 0px solid rgba(0, 0, 0, .1)
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
                margin-top: 0px;
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
            }
            
            .thk-datagrid .datagrid table thead th:first-child {
                border-left: 0px
            }
            
            .thk-datagrid .datagrid table tbody td {
                font-family: 'Open Sans', sans-serif;
                padding: 8px 12px;
                font-size: 13px;
            }
            
            .thk-datagrid .datagrid table tbody tr:nth-child(even) {
                background: rgba(0, 0, 0, .04)
            }
            
            .thk-multi .form-control {
                border: 1px solid #eaeaea;
                box-shadow: 4px 5px 5px rgba(0, 0, 0, .075);
                padding: 0;
                border-radius: 3px;
            }
            
            .thk-multi .form-control option {
                padding: 6px 12px;
                border-bottom: 1px solid rgba(0, 0, 0, .04);
            }
            
            .thk-multi> h4 {
                text-align: center;
                font-size: 18px;
                color: #b70025;
                margin: 0 0 10px 0;
            }
            
            .thk-buttons {}
            
            .thk-buttons-footer .wizard-buttons {}
            
            <!-- BUTTONS --> .wizard-buttons .btn-thk {
                padding: 14px 24px;
                border: 0 none;
                font-weight: 700;
                letter-spacing: 1px;
                text-transform: uppercase;
                transition: all .5s linear !important;
                vertical-align: middle
            }
            
            .wizard-buttons .btn:focus,
            .wizard-buttons .btn:active:focus,
            .wizard-buttons .btn.active:focus {
                outline: 0 none;
            }
            
            .wizard-buttons .btn-primary {
                box-shadow: 0 3px 0 0 #9b0624;
                background-color: #b70025;
                border-color: #9b0624;
                padding: 10px 24px
            }
            
            .wizard-buttons .btn-primary:active,
            .wizard-buttons .btn-primary.active {
                background: #b70025;
                box-shadow: none;
                margin-bottom: -3px;
                margin-top: 3px;
            }
            
            .wizard-buttons .btn-primary:hover {
                box-shadow: 0 3px 0 0 #9b0624;
                background-color: #b70025;
                border-color: #b70025
            }
            
            .wizard-buttons .btn i {
                font-size: 18px;
                vertical-align: middle;
                padding: 0 5px;
            }
            
            .btn {
                letter-spacing: 1px;
                text-transform: uppercase;
                font-weight: 600
            }
            
            .wizard-buttons .btn-outline {
                box-shadow: 0 3px 0 0 rgba(0, 0, 0, .07);
                background-color: #fff;
                border-color: rgba(0, 0, 0, .1);
                padding: 10px 24px
            }
            
            .wizard-buttons .btn-outline:active,
            .wizard-buttons .btn-outline.active {
                background: #fff;
                box-shadow: none;
                margin-bottom: -3px;
                margin-top: 3px;
            }
            
            .wizard-buttons .btn-outline:hover {
                box-shadow: 0 3px 0 0 rgba(0, 0, 0, .07);
                background-color: #fff;
                border-color: rgba(0, 0, 0, .2);
                color: #fff
            }
            
            .div-left {
                padding: 15px;
                padding-bottom: 10px;
                background: rgba(0, 0, 0, .03);
                position: relative;
                min-height: 490px;
				height:490px;
            }
            
            .div-left-h {
                height: 430px !important;
                min-height: 430px !important;
            }
            
            .div-left:after {
                content: '';
                position: absolute;
                width: 1px;
                height: 100%;
                background: rgba(0, 0, 0, .1);
                top: 0;
                right: 0;
            }
            
            .part-names {
                max-height: 412px;
                overflow-y: auto;
            }
            
            .part-table .table>tbody>tr>td,
            .part-table .table>tbody>tr>th,
            .part-table .table>tfoot>tr>td,
            .part-table .table>tfoot>tr>th,
            .part-table .table>thead>tr>td,
            .part-table .table>thead>tr>th {
                border-top: 1px solid rgba(0, 0, 0, .05);
                padding: 6px;
                padding-left: 0;
                font-size: 13px;
            }
            
            .thk-forms-label {}
            
            .thk-forms-label .form-control {
                border-radius: 2px;
                background: #fff;
                border: 1px solid #d4d7da;
                box-shadow: none;
                font-size: 13px;
            }
            
            .thk-forms-label .has-error .form-control {
                border-color: #b70025
            }
            
            .thk-forms-label label {
                font-size: 13px;
                font-weight: 600
            }
            
            .thk-forms-label .form-control[disabled] {
                background: rgba(0, 0, 0, .02)
            }
            
            .thk-forms-label .form-group {
                margin-bottom: 15px;
            }
            
            .m-b-5 {
                margin-bottom: 5px !important;
            }
            
            span.top-note {
                position: absolute;
                right: 12px;
                top: 15px;
                font-size: 12px;
                font-weight: 600;
            }
            
            .wizard-pane {
                top: 32px
            }
            
            .wizard-content {
                padding: 0 30px 0 5px
            }
            
            .thk--home-wrap {}
            
            .thk--home-wrap .form-group label {
                font-size: 20px;
                font-weight: 400;
            }
            
            .btn--go-planner {
                position: absolute;
                right: 28px;
                top: 130px;
                z-index: 2
            }
            
            .bttntop {
                position: absolute;
                right: 28px;
                top: 26px;
                z-index: 2
            }
            
            .btn-primary.disabled:focus {
                box-shadow: 0 3px 0 0 #9b0624;
                background-color: #b70025;
                border-color: #9b0624;
            }
			
			.downloadbtn:hover{
				box-shadow: 0 3px 0 0 #9b0624;
				background-color: #b70025;
				border-color: #b70025;
			}
			.downloadbtn{
				box-shadow: 0 3px 0 0 #9b0624;
				background-color: #b70025;
				border-color: #b70025;
			}
			.downloadbtn:focus{
				box-shadow: 0 3px 0 0 #9b0624;
				background-color: #b70025;
				border-color: #b70025;
			}
			.downloadbtn:active{
				background: #b70025;
				box-shadow: none;
				margin-bottom: -3px;
				margin-top: 3px;				
			}
			.rowheight{
				height:450px;
			}
			field {
				min-width: 88px !important;
				padding: 0;
				margin: 0;
				border: 0;
			}
			.dataTables_length{
				padding: 5px;
			}
			.dataTables_filter{
				padding: 5px;
			}
                       
                                              
        </style>
        <div id="THK_PROJECT">
            <div class="page" id="Second">
                <div class="page-content container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Panel Wizard Form Container -->
                            <form class="panel thk-body" id="exampleWizardFormContainer">
                                <!-- vehicle line series -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <!--Pearl Icon Steps -->
                                        <div class="pearls row row-bdernone thk-steps" style="width:100%">
                                            <div class="pearl-top pearl current col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" id="planner_icon" data-placement="top" data-original-title="Planner" title="Planner">
                                                    <i class="material-icons">card_travel</i>
                                                </div>
                                                <span class="pearl-title">Planner</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" id="partname_icon" data-placement="top" data-original-title="Part Name" title="Part Name">
                                                    <i class="material-icons">view_list</i>
                                                </div>
                                                <span class="pearl-title">Part Name</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" id="vehicle_icon" data-placement="top" data-original-title="Vehicle Information" title="Vehicle Information">
                                                    <i class="material-icons">directions_car</i>
                                                </div>
                                                <span class="pearl-title">Vehicle Information</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top " data-original-title="Supplier Information" title="Supplier Information">
                                                    <i class="material-icons">people</i>
                                                </div>
                                                <span class="pearl-title">Supplier Information</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" title="Product Information">
                                                    <i class="material-icons">settings</i>
                                                </div>
                                                <span class="pearl-title">Product Information</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top " data-original-title="Pricing Information" title="Pricing Information">
                                                    <i class="material-icons">local_play</i>
                                                </div>
                                                <span class="pearl-title">Pricing Information</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top " data-original-title="Application Rates/Allocation Rates" title="Application/Allocation">
                                                    <i class="material-icons">assignment</i>
                                                </div>
                                                <span class="pearl-title">Application/Allocation</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" title="Volume">
                                                    <i class="material-icons">show_chart</i>
                                                </div>
                                                <span class="pearl-title">Volume</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" title="Preview and Save">
                                                    <i class="material-icons">insert_chart</i>
                                                </div>
                                                <span class="pearl-title">Preview and Save</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="thk--top-header">
                                    <h2>
									Planner -<span class="light">Vehicle Build ID</span>
								</h2>
                                    <span class="top-note ">
										Fields are Auto Populated &nbsp;&nbsp;&nbsp; <sup style="color: red"><large>*</large></sup>Mandatory
									    Fields
									</span>
                                </div>

                                <div class="thk-ihs-data" id="ihs_data_table" style="display:none">
                                    <div class="thk-datagrid inner">
                                        <div class="datagrid">
                                            <table>
                                                <tr>
                                                    <th>Vehicle Build ID</th>
                                                    <th>OEM Group</th>
                                                    <th>OEM</th>
                                                    <th>Badge</th>
                                                    <th>Platform Family</th>
                                                    <th>Platform</th>
                                                    <th>Nameplate</th>
                                                    <th>Vehicle Build Region</th>
                                                    <!-- <th>Vehicle Build Country</th> -->
                                                </tr>
                                                <tbody id="input_tbody"></tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel-body thk-body">
                                    <div id="inc_height" class="row">
                                        <div class="col-md-1-20" id="left_panel" style="display:none;">
                                            <div class="div-left">
                                                <div class="thk-part-heading">
                                                    <h4>Part Names</h4>
                                                </div>
                                                <div class="part-names">
                                                    <div class="part-table">
                                                        <table class="table">
                                                            <tbody id="part" name="part">
                                                                <c:forEach var="display " items="${partName} ">
                                                                    <tr>
                                                                        <td>${display.value}</td>
                                                                        <!--<td><input type="checkbox " name="toOption[] " class="partNameOPtions " value=" ${display.key} " style="float: right " />
																	</td>-->
                                                                    </tr>
                                                                    </br>
                                                                </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        
                                            <!--Add it on third page col-md-1-80 -->
                                            <div class="row hide">
                                                <div class="col-md-12">
                                                    <h4 style="color: grey">
												${oemGroup}
												
												</h4>
                                                </div>
                                            </div>
                                            <div class="" id="right_panel">
                                                <div class="wizard-content" id="exampleFormContainer">
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url0a" role="tabpanel">
                                                        <div id="VBID">
                                                            <div>
                                                                <!-- pearl rows -->
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <!-- Panel Wizard Form Container 
																		<div class="thk--top-header">
																			<h2>
																				Planner -<span class="light">Vehicle Build ID</span>
																			</h2>
																		</div>-->
                                                                        <div class="wizard-content no-padding" id="formid" action="urlSample">
                                                                            <div class="p-0 thk-divider-wrapper">
                                                                                <div class="row">
                                                                                    <div class="col-md-4 col-md-offset-4">
                                                                                        <div class="thk--home-wrap">
                                                                                            <div class="form-group">
                                                                                                <label style="font-size: 18px; font-weight: 600" class="control-label" for="inputUserNameOne">Please Select An OEM Group </label>
																								<p></p>
                                                                                                <select class="form-control" id="oemGroup" name="oemSelect" placeholder="Select">
																									 <option value="" disabled selected>Select</option>
																								</select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="thk-divider-wrapper opt2">
                                                                                <div class="row">
                                                                                    <div class="col-md-12">
                                                                                        <div class="thk--home-wrap">
                                                                                            <div class="thk-inner-content">
                                                                                                <div class="row">
                                                                                                    <div class="col-md-12">
                                                                                                        <div class="form-group">
                                                                                                            <label class="control-label" for="inputUserNameOne" style="font-weight:700; font-size:15px;">Please Click on Vehicle Build ID </label>
                                                                                                        </div>
                                                                                                        <div class="thk-datagrid">
                                                                                                            <div class="datagrid">
                                                                                                                <table id="myVBTable">
                                                                                                                    <thead>
                                                                                                                        <tr>
                                                                                                                            <th>Vehicle Build ID</th>
                                                                                                                            <th>Design Parent</th>
                                                                                                                            <th>OEM Group</th>
                                                                                                                            <th>OEM</th>
                                                                                                                            <th>Badge</th>
                                                                                                                            <th>Platform Family</th>
                                                                                                                            <th>Platform</th>
                                                                                                                            <th>Nameplate</th>
                                                                                                                            <th>%Completed</th>
                                                                                                                            <th>Status</th>
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
                                                                        <input type="hidden" name="vbidhidden" id="vbidhidden" /> <input type="hidden" name="designplant" id="designplant" /> <input type="hidden" name="oemgrouphidden" id="oemgrouphidden" /> <input type="hidden" name="oemhidden" id="oemhidden" /> <input type="hidden" name="badgehidden" id="badgehidden" /> <input type="hidden" name="platformfamilyhidden" id="platformfamilyhidden" /> <input type="hidden" name="platformhidden" id="platformhidden" /> <input type="hidden" name="nameplatehidden" id="nameplatehidden" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div id="partname" style="display:none;">
                                                                <div class="page-content container-fluid">
                                                                    <!-- pearl rows -->
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <!-- Panel Wizard Form Container -->
                                                                            <div class="panel panel-shadow">
                                                                                <div class="top-lables">
                                                                                    <div class="thk-step-heading">
                                                                                        <h4 style="color: #454543;">
																					Planner <i class="icon fa fa-angle-right" aria-hidden="true"></i>
																				</h4>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <div class="thk-step-heading">
                                                                                        <h4 style="color: grey">
																					Part Name
																				</h4>
                                                                                    </div>
                                                                                    <!--<div class="wizard-buttons">
																				<a id="next" class="btn btn-primary btn-outline thk-next" href="#exampleWizardFormContainer" data-wizard="next" role="button">Next<i
																									class="icon fa fa-arrow-circle-right thk-next-icon" style=""></i></a>
																				<a class="btn btn-success btn-outline pull-right hide" href="#exampleWizardFormContainer" data-wizard="finish" role="button">Plan Vehicle</a>
																			</div>-->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url0b" role="tabpanel">
                                                        <div class="page" id="partNameJSP">
                                                            <div class="page-content container-fluid">
                                                                <!-- pearl rows -->
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <!-- Panel Wizard Form Container 
															<div class="thk--top-header">
																	<h2>
																		Planner
																	</h2>
															</div>-->
                                                                        <!--<div class="thk--top-header no-bg">
																<h3 style="font-weight:600;">
																	Part Name
																	<button type="button" id="go_planner" class="btn btn-info btn-history pull-right" style="margin-left:-6px;">Go to Planner</button>
																</h3>
															</div>-->
                                                                        <div class="wizard-content no-padding" id="partNameForm" method="post" action="/thk/inputScreen">
                                                                            <div class="thk-inner-content">
                                                                                <div class="row">
                                                                                    <div class="col-md-12">
                                                                                        <div class="thk-datagrid">
                                                                                            <div class="datagrid">
                                                                                                <table>
                                                                                                    <thead>
                                                                                                        <tr>
                                                                                                            <th>Vehicle Build ID</th>
                                                                                                            <th>Design Parent</th>
                                                                                                            <th>OEM Group</th>
                                                                                                            <th>OEM</th>
                                                                                                            <th>Badge</th>
                                                                                                            <th>Platform Family</th>
                                                                                                            <th>Platform</th>
                                                                                                            <th>Nameplate</th>
                                                                                                        </tr>
                                                                                                    </thead>
                                                                                                    <tbody id="tbodyTableDynamic2">

                                                                                                    </tbody>
                                                                                                </table>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="row row-margin">
                                                                                <div class="col-md-3 col-md-offset-3">
                                                                                    <div class="thk-multi">
                                                                                        <h4>Part Name</h4>
                                                                                        <select name="from[]" id="undo_redo" style="height:310px;" name="Info Required" class="form-control" size="10" multiple="multiple">
																									
																					</select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-xs-1">
                                                                                    <h4 style="color: grey; text-align:center">ADD</h4>

                                                                                    <button type="button" id="undo_redo_rightAll" class="btn btn-default btn-block">
																									<i class="material-icons">fast_forward</i>
																								</button>
                                                                                    <button type="button" id="undo_redo_rightSelected" class="btn btn-default btn-block">
																									<i class="material-icons">keyboard_arrow_right</i>
																								</button>
                                                                                    <button type="button" id="undo_redo_leftSelected" class="btn btn-default btn-block">
																									<i class="material-icons">keyboard_arrow_left</i>
																								</button>
                                                                                    <button type="button" id="undo_redo_leftAll" class="btn btn-default btn-block">
																									<i class="material-icons">fast_rewind</i>
																								</button>

                                                                                </div>
                                                                                <div class="col-xs-3">
                                                                                    <div class="thk-multi">
                                                                                        <h4>Added Part Name</h4>
                                                                                        <select id="undo_redo_to" style="height:310px;" class="form-control" size="10" multiple="multiple">
																									<c:forEach var="display" items="${partById}">
																										<option value=" ${display.key}" name="toOption[]">
																											${display.value}</option>
																									</c:forEach>
																								</select>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url1" role="tabpanel">
                                                        <div class="thk--inner-heading">
                                                            <h2>Vehicle Information</h2>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Part Name<sup style="color: red"><small style="font-size:14px">*</small></sup>
															</label>
                                                                    <input type="text" class="form-control form-control-yellow selectpartName" id="part_select" disabled required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Part ID<sup style="color: red"><small style="font-size:14px;cursor:not-allowed"></small></sup>
																</label>
                                                                    <input type="text" style="cursor: not-allowed; background: #fafafa;" class="form-control form-control-yellow selectpartName" id="partId" readonly required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">OEM Group<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control form-control-yellow" id="oemGroup_screen2" name="Info Required" disabled required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">OEM<sup style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control form-control-yellow" id="oem" name="Info Required" disabled required="required" value="${oem}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Badge<sup
																	style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control" id="badge" name="Info Required" disabled required="required" value="${badge}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Platform Family<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" id="platfromFamily" name="Info Required" disabled required="required" value="${platfromFamily}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Platform<sup
																	style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control form-control-yellow" id="platfrom" name="Info Required" disabled required="required" value="${platfrom}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Nameplate<sup
																	style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control form-control-yellow" id="namePlate" name="Info Required" disabled required="required" value="${namePlate}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Vehicle Build Region<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" id="regionName" name="Info Required" disabled required="required" value="${regionName}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label " for="inputUserNameOne">Vehicle Build Country<sup style="color: red"><small style="font-size:14px "></small></sup>
																</label> <input type="text" class="form-control" id="countryName" name=" Info Required" disabled required="required" value="${countryName}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Vehicle SOP </label>
                                                                    <div class="date" id="datepicker1">
                                                                        <input class="form-control" type="text" data-date-format="mm-dd-yyyy" value="${sop}" id="sopVal" disabled required="required" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Vehicle EOP </label>
                                                                    <div id="datepicker2" class="date">
                                                                        <input class="form-control" type="text" data-date-format="mm-dd-yyyy" value="${eop}" id="eopVal" name="Info Required" disabled required="required" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2016
																	Volumes<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" id="year1Val" name="Info Required" disabled required="required" value="${year1}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2017
																	Volumes<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" id="year2Val" name="Info Required" disabled required="required" value="${year2}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2018
																	Volumes<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control form-control-yellow" id="year3Val" name="Info Required" disabled required="required" value="${year3}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2019
																	Volumes<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control form-control-yellow" id="year4Val" name="Info Required" disabled required="required" value="${year4}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2020
																	Volumes<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control form-control-yellow" id="year5Val" name="Info Required" disabled required="required" value="${year5}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2021
																	Volumes<sup style="color: red"><small style="font-size:14px"></small></sup>
															</label> <input type="text" class="form-control form-control-yellow" id="year6Val" name="Info Required" disabled required="required" value="${year6}">
                                                                </div>
                                                            </div>
                                                            <div class="form-group hide">
                                                                <label class="control-label" for="inputUserNameOne"><sup
																style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="vbIdHidden" name="Info Required" disabled required="required" value="${vbIdHidden}">
                                                            </div>

                                                            <div class="col-md-2">
                                                                <div class="form-group hide">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="regionNameHidden" name="Info Required" disabled required="required" value="${regionNameId}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="countryNameHidden" name="Info Required" disabled required="required" value="${countryNameId}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="sopHidden" name="Info Required" disabled required="required" value="${sop}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="eopHidden" name="Info Required" disabled required="required" value="${eop}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year1Hidden" name="Info Required" disabled required="required" value="${year1}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year2Hidden" name="Info Required" disabled required="required" value="${year2}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year3Hidden" name="Info Required" disabled required="required" value="${year3}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year4Hidden" name="Info Required" disabled required="required" value="${year4}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year5Hidden" name="Info Required" disabled required="required" value="${year5}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2 hide">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne"><sup
																	style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year6Hidden" name="Info Required" disabled required="required" value="${year6}">
                                                                </div>
                                                            </div>


                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingOnel" url="url2" role="tabpanel">
                                                        <div class="thk--inner-heading">
                                                            <h2>Supplier Information</h2>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Supplier<sup
																	style="color: red"><small style="font-size:14px">*</small></sup></label>
                                                                    <select class="form-control" id="supplier" name="Info Required" required="required">

																	</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Supplier
																	Plant<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="supplierPlant" name="Info Required" required="required">

																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Ship
																	To<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="supplierShipTo" name="Info Required" required="required">

																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Sold
																	To<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="supplierSoldTo" name="Info Required" required="required">

																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">
																	<sup style="color: red"><small style="font-size:14px"></small></sup>
															</label>
                                                                    <input type="hidden" class="form-control" id="vbIdHidden_Supplier" value="${vbIdHidden}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">
																	<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="hidden" class="form-control" id="partPlanId_Supplier" value="${partPlanIdHidden}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleGettingOne" url="url3" role="tabpanel">
                                                        <div class="thk--inner-heading">
                                                            <h2>Product Information</h2>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Product
																	Group<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" style="cursor:not-allowed;" class="form-control" maxlength="1800" id="productGroupName" readonly name="Info Required" value="${productGroupName}">
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Product<sup
																	style="color: red"><small style="font-size:14px;"></small></sup></label>
                                                                    <input type="text" style="cursor:not-allowed" class="form-control" maxlength="1800" id="productName" readonly name="Info Required" value="${productName}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Part
																	Description<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control form-control-yellow" maxlength="1800" id="partDesc" name="Info Required" value="${partDesc}" disabled required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Tech
																	Level 1<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="techLevelOne">
																	<option></option>
																</select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Tech
																	Level 2<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="techLevelTwo">
																	<option></option>
																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Housing
																	Description<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="houseDesc">
																	<option></option>
																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">THK
																	Part Number<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" maxlength="1800" id="thkPartName">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Customer
																	Part Number<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" maxlength="1800" id="customerPartNo">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Parts
																	Per Vehicle<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="partPerVehicle">
																	<option>1</option>
																	<option>2</option>
																	<option>3</option>
																	<option>4</option>
																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Probability
																	Code<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="prob">
																	<option></option>
																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Opportunity Pipeline THK<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" id="opportunityPipeline">
																	<option></option>
																</select>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">
																	<sup style="color: red"><small></small></sup>
																</label> <input type="hidden" class="form-control" value="${hiddenProductGroupNameId}" id="hiddenProductGroupNameId">
                                                                </div>
                                                            </div>

                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">
																	<sup style="color: red"><small></small></sup>
																</label> <input type="hidden" class="form-control" value="${vbIdHidden}" id="vbIdHidden">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Part
																	Description Long<sup style="color: red"><small style="font-size:14px"></small></sup>
																</label> <input type="text" class="form-control" id="partDescLong" maxlength="300">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url4" role="tabpanel">
                                                        <div class="thk--inner-heading">
                                                            <h2>Pricing Information</h2>
                                                        </div>
                                                        <div class="row row-margin" style="width:101%;">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Currency<sup
																	style="color: red"><small style="font-size:14px">*</small></sup></label> <select class="form-control" id="currency">

																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Currency
																	Format<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <select class="form-control" name="country" id="currencyFormat">


																</select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">X-Rate<sup
																	style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control" id="xRate" name="Info Required" disabled required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">Start
																	Price LC<sup style="color: red"><small style="font-size:14px">*</small></sup>
																</label> <input type="text" class="form-control startprice" id="startPriceLc" required="required">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div>
                                                            <button id="btnAddRow" type="button" class="btn btn-primary row-margin">
															<i class="icon md-plus" aria-hidden="true"></i> Add New
															Price Change
														</button>
                                                        </div>
                                                        </br>
                                                        <div class="row">
                                                            <div class="col-md-12" style="height: 290px; overflow-y: auto;">
                                                                <table class="table table-bordered table-striped row-margin">
                                                                    <thead>
                                                                        <tr>
                                                                            <th class="index" style="font-weight: bold;">Price Change</th>
                                                                            <th style="font-weight: bold;">Month/Years<sup style="color: red"><small style="font-size:14px">*</small></sup></th>
                                                                            <th style="font-weight: bold;">Reason<sup style="color: red"><small style="font-size:14px">*</small></sup></th>
                                                                            <th style="font-weight: bold; width: 160px;">Price Change Type</th>
                                                                            <th style="font-weight: bold;">Change Value<sup style="color: red"><small style="font-size:14px">*</small></sup></th>
                                                                            <th style="font-weight: bold; width: 115px;">Price Incl.Price Change</th>
                                                                            <th style="font-weight: bold;">Variance</th>
                                                                            <th style="font-weight: bold;">Remove</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody id="myTable">

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url5" role="tabpanel">
                                                        <div class="thk--inner-heading">
                                                            <h2>Application/Allocation Rate and RFQ</h2>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="thk--inner-heading no-border">
                                                                <h4>Application Rate %</h4>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2016<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label>
                                                                    <input type="number" class="form-control calcpercentage" id="applicationRateYear1" value="${applicationRateYear1}" required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2017<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label>
                                                                    <input type="number" class="form-control calcpercentage" id="applicationRateYear2" value="${applicationRateYear2}" required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2018<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label>
                                                                    <input type="number" class="form-control calcpercentage" id="applicationRateYear3" value="${applicationRateYear3}" required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2019<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="applicationRateYear4" value="${applicationRateYear4}" required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2020<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="applicationRateYear5" value="${applicationRateYear5}" required="required">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2021<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="applicationRateYear6" value="${applicationRateYear6}" required="required">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="thk--inner-heading no-border">
                                                                <h4>Allocation Rate %</h4>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2016<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="allocationRateYear1" required="required" value="${allocationRateYear1}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2017<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="allocationRateYear2" required="required" value="${allocationRateYear2}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2018<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="allocationRateYear3" required="required" value="${allocationRateYear3}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputUserNameOne">2019<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="allocationRateYear4" required="required" value="${allocationRateYear4}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2020<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="allocationRateYear5" required="required" value="${allocationRateYear5}">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne">2021<sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage" id="allocationRateYear6" required="required" value="${allocationRateYear6}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="thk--inner-heading no-border">
                                                                <h4>RFQ</h4>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Quote (RFQ) Date</label>
                                                                    <div id="datepicker3" class="input-group date">
                                                                        <input class="form-control" type="text" style="width:194px;" id="quotedDate" data-date-format="mm-dd-yyyy" /> <span class="input-group-addon"><i class="icon fa fa-calendar"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Award (RFQ) date</label>
                                                                    <div id="datepicker4" class="input-group date">
                                                                        <input class="form-control" type="text" style="width:194px;" data-date-format="mm-dd-yyyy" id="awardDate" /> <span class="input-group-addon"><i class="icon fa fa-calendar"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-2">
                                                                <div class="form-group">
                                                                    <label class="control-label" for="inputPasswordOne"><sup style="color: red"><small></small></sup></label> <input type="hidden" class="form-control Percent" id="vbIdHidden" value="${vbIdHidden}" name="Info Required" required="required">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="wizard-pane thk-forms-label" id="exampleBillingtree" url="url6" role="tabpanel">
                                                        <div class="thk--inner-heading">
                                                            <h2>Annual Product Volume / Sales</h2>
                                                        </div>
                                                        <div class="row row-margin">
                                                            <div class="col-md-10 col-md-offset-1">
                                                                <div class="thk-datagrid">
                                                                    <div class="datagrid margin-top">
                                                                        <table>
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Year</th>
                                                                                    <th>Volume</th>
                                                                                    <th>Sales</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>2016</td>
                                                                                    <td><input type="text" class="form-control" id="multifun" name="Info Required" disabled required="required"></td>
                                                                                    <td><input type="text" class="form-control" id="sales1" name="Info Required" disabled required="required"></td>

                                                                                </tr>
                                                                                <tr class="alt">
                                                                                    <td>2017</td>
                                                                                    <td><input type="text" class="form-control" id="multifun2" name="Info Required" disabled required="required"></td>
                                                                                    <td><input type="text" class="form-control" id="sales2" name="Info Required" disabled required="required"></td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td>2018</td>
                                                                                    <td><input type="text" class="form-control" id="multifun3" name="Info Required" disabled required="required"></td>
                                                                                    <td><input type="text" class="form-control" id="sales3" name="Info Required" disabled required="required"></td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td>2019</td>
                                                                                    <td><input type="text" class="form-control" id="multifun4" name="Info Required" disabled required="required"></td>
                                                                                    <td><input type="text" class="form-control" id="sales4" name="Info Required" disabled required="required"></td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td>2020</td>
                                                                                    <td><input type="text" class="form-control" id="multifun5" name="Info Required" disabled required="required"></td>
                                                                                    <td><input type="text" class="form-control" id="sales5" name="Info Required" disabled required="required"></td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td>2021</td>
                                                                                    <td><input type="text" class="form-control" id="multifun6" name="Info Required" disabled required="required"></td>
                                                                                    <td><input type="text" class="form-control" id="sales6" name="Info Required" disabled required="required"></td>

                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Screen 7 Starts -->
                                                    <div class="wizard-pane thk-forms-label" id="exportBill" role="tabpanel">
                                                        <div>
                                                            <button class="btn btn-primary downloadbtn" style="box-shadow: 0 3px 0 0 #9b0624;background-color: #b70025;	border-color: #b70025;"id="export_btn">
																<i aria-hidden="true"></i>Download Data
														</button>
                                                        </div>
                                                    </div>
                                                    <!-- Screen 7 Ends-->
                                                </div>

                                            </div>

                                            <!--<div class="row">
													<div class="col-md-12">
													ss
													</div>
											   </div>-->                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- pearl row -->
                    </div>
                </div>
            </div>
            <!--<div class="page" id="greenlight" url="url8">
			<div class="page-content container-fluid">
				<div class="row">
					<div class="col-md-12">
						
						<div class="panel panel-shadow" id="1">
							<div class="top-lables">
								<div class="thk-step-heading">
									<h4 style="color:#454543;">
							Greenlight
							<i class="icon fa fa-angle-right" aria-hidden="true"></i>
						  </h4>
								</div>
							</div>
							<div class="panel-body">
								<div class="thk-step-heading">
									<h4 style="color:grey">
							Plan
							<button type="button" class="btn btn-info btn-history pull-right" style="margin-left:-6px;">Discard All</button>
						  </h4>
								</div>
								<form class="wizard-content" id="2">
									<div class="row row-margin" style="margin-left:19px;">
										<div class="col-md-2">
											<label>OEM Group</label>
											<select class="form-control" id="oemGroupGl">
											</select>
										</div>
									</div>
								     <div class="col-md-2" style="margin-left: 211px;margin-top: -54px;">
									<label>Platform</label>
									<select class="form-control" id="platformGl"name="platFormGl" required="required">
							     </select>
									</div>

									</div>
									<div class="row row-margin">
										<div class="thk-step-heading">
											<h4 style="color:grey;font-size:14px;margin-left: 20px;
											">
								GreenLight Years
							  </h4>
										</div>
									</div>
									<div class="row row-margin" style="margin-left:19px;">
										<div class="col-md-2 A" style="text-align: center">
											<label>2016</label>
											<input type="number" class="form-control" name="yr1" id="y1">
										</div>
										<div class="col-md-2 A" style="text-align: center">
											<label>2017</label>
											<input type="number" class="form-control" name="yr2" id="y2">
										</div>
										<div class="col-md-2 A" style="text-align: center">
											<label>2018</label>
											<input type="number" class="form-control" name="yr3" id="y3">
										</div>
										<div class="col-md-2 A" style="text-align: center">
											<label>2019</label>
											<input type="number" class="form-control" name="yr4" id="y4">
										</div>
										<div class="col-md-2 A" style="text-align: center">
											<label>2020</label>
											<input type="number" class="form-control" name="yr5" id="y5">
										</div>
										<div class="col-md-2 A" style="text-align: center">
											<label>2021</label>
											<input type="number" class="form-control" name="yr6" id="y6">
										</div>
									</div>
									<div class="row row-margin" style="margin-left:19px;">
										<div class="col-md-2 A" style="text-align: center">
											<label>Total Greenlight Sum</label>
											<input type="number" class="form-control" name="total" id="total">
											<a href="javascript:sumInputs()">Sum</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="wizard-buttons">
					<a id="next3" class="btn btn-primary btn-outline thk-next" href="#exampleWizardFormContainer" data-wizard="next" role="button">Proceed<i class="icon fa fa-arrow-circle-right thk-next-icon" style=""></i></a>
					<a class="btn btn-success btn-outline pull-right hide" href="#exampleWizardFormContainer" role="button">Finish</a>
				</div>
			</div>-->
        </div>
        <script src="<c:url value='/assets/libraries/formValidation/formValidation.min.js'/>"></script>
        <script src="<c:url value='/assets/libraries/formValidation/bootstrap.min.js'/>"></script>
        <script src="<c:url value='/assets/libraries/wizard/jquery-wizard.min.js'/>"></script>
        <script src="<c:url value='/assets/libraries/multi-select/multi-select.js'/>"></script>
        <script src="<c:url value='/assets/libraries/currencyFormatter/autoNumeric-min.js'/>"></script>
        <script>
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
				function getTableData(table) {
                    var data = [];
                    table.find('tr').each(function(rowIndex, r) {
                        var cols = [];
                        $(this).find('th,td').each(function(colIndex, c) {
                            $(this).find('.test-control').each(function(colIndex, c) {
                                if (c.tagName == 'FIELDSET') {
                                    cols.push($(c).find('input:checked').data('type').substr(0, 1).toUpperCase());
                                } else {
                                    cols.push(c.value);
                                }
                            });
                        });
                        data.push(cols);
                    });
                    return data;
                }
				function bind_drop_downs(item, url) {
                    sendRequest(url, {
                        "data": {
                            "partPlanId": $('#partId').val()
                        }
                    }, function(e) {
                        for (var i = 0, j = item.length; i < j; i++) {
                            $("#" + item[i]).html("");
                            var key = item[i];
                            $.each(e.data[key], function(k) {
                                $("#THK_PROJECT #" + key).append('<option value="' + e.data[key][k].id + '">' + e.data[key][k].value + '</option>');
                            });
                        }
                    }, function(e) {
                        console.error(e);
                    });
				}
				function bind_drop_downs_oemgroup_planner(item, url) {
					$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
					
                    sendRequest(url, {
                        "data": {
                            "partPlanId": $('#partId').val()
                        }
                    }, function(e) {
                        for (var i = 0, j = item.length; i < j; i++) {
                            var key = item[i];

                            $.each(e.data[key], function(k) {

                                $("#THK_PROJECT #" + key).append('<option value="' + e.data[key][k].id + '">' + e.data[key][k].value + '</option>');

                            });
                        }
                        var a = $("#THK_PROJECT #oemGroup").html();
                        $("#THK_PROJECT #oemGroupGl").html(a)
						$("#THK_PROJECT").unblock();
                    }, function(e) {
                        console.error(e);
                    });
                }
				function bind_child_drop_downs_green_light(parent, child, url) {
                    $("#THK_PROJECT #" + parent).on('change', function(e) {
                        $("#THK_PROJECT #" + child).val("");
                        sendRequest(url, {
                            "data": {
                                "id": this.value,
                                "type": this.id
                            }
                        }, function(e) {
                            var key = child[0];
                            $.each(e.data[key], function(j) {
                                $('#THK_PROJECT #' + key).append("<option value='" + e.data[key][j].id + "'>" + e.data[key][j].value + "</option>");
                            });
                        }, function(e) {
                            console.error(e);
                        })
                    });
                }
				function bind_drop_downs_(item, url) {
                    for (var i = 0; i < item.length; i++) {
                        $("#" + item[i]).html("");
                    }
                    sendRequest(url, {
                        "data": {
                            "partPlanId": $('#partId').val()
                        }
                    }, function(e) {
                        for (var i = 0, j = item.length; i < j; i++) {
                            var key = item[i];
                            $.each(e.data[key], function(k) {
                                $("#THK_PROJECT #" + key).append('<option value="' + e.data[key][k].id + '">' + e.data[key][k].value + '</option>');
                            });
                        }
                    }, function(e) {
                        console.error(e);
                    });
                }
				function bind_textbox(textbox, url) {
                    sendRequest(url, {
                        "data": {
                            "partPlanId": $('#partId').val()
                        }
                    }, function(e) {
                        for (var i = 0; i < textbox.length; i++) {
                            var dd_key = textbox[i];
                            $("#" + dd_key).val('');
                            $.each(e.data[dd_key], function(j) {
                                $("#" + dd_key).val(e.data[dd_key][j].value);
                            });
                        }
                    }, function(e) {
                        console.error(e);
                    });
                }
				function bind_child_drop_downs(parent, child, url) {
                    $("#THK_PROJECT #" + parent).on('change', function(e) {
                        sendRequest(url, {
                            "data": {
                                "id": this.value,
                                "type": this.id
                            }
                        }, function(e) {
                            var key = child[0];
                            $.each(e.data[key], function(j) {
                                $('#THK_PROJECT #' + key).append("<option value='" + e.data[key][j].id + "'>" + e.data[key][j].id + "</option>");
                            });
                        }, function(e) {
                            console.error(e);
                        })
                    });
                }
				function bind_child_drop_downs_PartId(parent, child_drop_downs, child_drop_downs_Supplier, url) {
                    $("#THK_PROJECT #" + parent).on('change', function() {
                        $("#THK_PROJECT #" + child_drop_downs, "#" + child_drop_downs_Supplier).val("");
                        sendRequest(url, {
                            "data": {
                                "id": this.value,
                                "vbId": $('#vbIdHidden').val()
                            }
                        }, function(e) {
                            $("#THK_PROJECT #" + child_drop_downs + ",#THK_PROJECT #" + child_drop_downs_Supplier).val(e.data.PartPlanId[0].id);
                        }, function(e) {
                            console.error(e)
                        })
                    });
                }
				function bind_child_drop_downs_productName(parent_dd, child_drop_downs, child_drop_downs1, url, url1) {
                    $("#THK_PROJECT #" + parent_dd).on('change', function(e) {
                        $("#THK_PROJECT #" + child_drop_downs).val("");
                        $("#THK_PROJECT #" + child_drop_downs1).val("");
                        sendRequest(url, {
                            "data": {
                                "partId": this.value
                            }
                        }, function(e) {
                            $("#THK_PROJECT #" + child_drop_downs).val(e.data.productName[0].value);
                            $("#THK_PROJECT #" + child_drop_downs).attr("thkproductnamepid", e.data.productName[0].id);
                            sendRequest(url1, {
                                "data": {
                                    "productId": e.data.productName[0].id
                                }
                            }, function(e) {
                                $("#THK_PROJECT #" + child_drop_downs1).val(e.data.productGroupName[0].value);
                            }, function(e) {
                                console.error(e)
                            })
                        }, function(e) {
                            console.error(e)
                        })
                    })
                }
				function bind_child_drop_downs_FxRate(parent_dd, child_drop_downs, url) {
                    $("#THK_PROJECT #" + parent_dd).on('change', function(e) {
                        $("#THK_PROJECT #" + child_drop_downs).val("");
                        var code = {
                            "data": {
                                "id": this.value,
                                "currencyId": $('#currency').val()
                            }
                        };
                        sendRequest(url, code, function(e) {
                            $("#THK_PROJECT #" + child_drop_downs).val(e.data.xRate[0].value);
                        }, function(e) {
                            console.error(e);
                        })
                    });
                }
                $("input#startPriceLc").autoNumeric('init', {
                    vMin: '0.00'
                });
                $('#currencyFormat').on('change', function() {
                    if ($(this).val() == 1) {
                        $("input#startPriceLc").autoNumeric('update', {
                            vMin: '0.00',
                            aSep: ",",
                            dGroup: "3",
                            aDec: "."
                        });
                        $('[name="itemValue"]').autoNumeric('update', {
                            aSep: ",",
                            dGroup: "3",
                            aDec: "."
                        });

                    } else {
                        $("input#startPriceLc").autoNumeric('update', {
                            vMin: '0.00',
                            aSep: ".",
                            dGroup: "3",
                            aDec: ","
                        });
                        $('[name="itemValue"]').autoNumeric('update', {
                            aSep: ".",
                            dGroup: "3",
                            aDec: ","
                        });
                    }
                });
				function calculatePC() {
                    $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('input#startPriceLc'));
                    $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('[name=monthYear]'));
                    var lastValue = Number($('input#startPriceLc').autoNumeric('get'));
                    $('#THK_PROJECT #myTable tr').each(function() {
                        var obj = $(this).find('input[name=itemValue]');
                        var value = Number(obj.autoNumeric('get'));
                        $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', obj);
                        var type = $(this).find('.test-control input:checked').data('type');
                        var lc = lastValue;
                        if (type === 'abs') {
                            lastValue = lastValue + value;

                        } else if (type === 'percent') {
                            lastValue = lastValue + (lastValue * (value / 100))
                        }
					//lastValue=lastValue.toFixed(2);
						var variance=lastValue - lc;
					//variance=variance.toFixed(2);
                        $(this).find('input[name=variance]').val(variance);
                        $(this).find('input[name=priceInclude]').val(lastValue);
                    })
                }
                $("#THK_PROJECT #startPriceLc").on('keyup', function(e) {
                    calculatePC();
                })
                $('#THK_PROJECT #btnAddRow').off('click').on('click', function(e) {
                    e.preventDefault();
                    var c = $('#THK_PROJECT #myTable').find('tr').length + 1;
                    var ele = $('<tr><td><input type="text"  value="PC-' + c + '" readonly class="form-control test-control" style="width: 66px;" name="pricechange"/></td><td><input  class="form-control test-control" data-fv-date="true" data-fv-notempty="true"  type="date" data-fv-date-format="yyyy-mm-dd" style="width:154px;"  name="monthYear"/></td><td><select class="form-control test-control" style="width: 114px;" data-fv-notempty="true" name="reason"><option id="1" value="1">Contractual</option><option id="2" value="2">Non Contractual Committed</option><option id="3" value="3">Non-Contractual Non Committed</option><option id="4" value="4">Material Inflation/Deflation</option><option id="5" value="5">Tooling, Amortization, Packaging, Others</option><option id="6" value="6">VAVE (Value Add Value Engineering)</option></select></td><td ><fieldset class="test-control field"><input type="radio" checked name="ChangeType' + c + '" data-type="abs">Absolute Value<br><input type="radio" name="ChangeType' + c + '" class="group12" data-type="percent">%Change</fieldset></td><td><div class="form-group"><input type="text" class="form-control test-control changeVal" name="itemValue" data-fv-notempty="true" required="required" style="width: 100px;"></div></td><td><input type="number" class="form-control test-control" style="width: 98px; cursor:not-allowed;" name="priceInclude" readonly/></td><td><input type="number" class="form-control test-control" style="width: 80px; cursor:not-allowed;" name="variance" readonly/></td><td><i id="del_row" class="material-icons" style="cursor:pointer;" aria-hidden="true">delete_forever</i></td></tr>');
                    var lastrecord = $('#THK_PROJECT #myTable').find('tr:last-child');
                    $('#THK_PROJECT #myTable').append(ele);
                    $('#THK_PROJECT #exampleFormContainer').formValidation('addField', $('[name=itemValue]'));
                    $('#THK_PROJECT #exampleFormContainer').formValidation('addField', $('[name=monthYear]'));
                    var format = $('#currencyFormat').val()
                    if (format == 1) {
                        $(ele).find('[name=itemValue]').autoNumeric('init', {
                            aSep: ",",
                            dGroup: "3",
                            aDec: "."
                        });
                    } else {
                        $(ele).find('[name=itemValue]').autoNumeric('init', {
                            aSep: ".",
                            dGroup: "3",
                            aDec: ","
                        });

                    }
                    var minDate = $('#THK_PROJECT #sopVal').val()
                    if (lastrecord.length) {
                        minDate = lastrecord.find('[name=monthYear]').val();
                    }
                    ele.find('[name=itemValue]').on('keyup change', function(e) {
                        calculatePC();
                    });
                    ele.find("[name='ChangeType" + c + "']").on('change', function(e) {
                        calculatePC();
                    });

                    $("#THK_PROJECT #del_row").on('click', function() {
                        $(this).parent().parent().remove();
						$("#THK_PROJECT").find('small[data-fv-for=monthYear]').hide();
                        calculatePC();
                    })
                });
				function deleteRow(e) {
                    var row = e.parentNode.parentNode;
                    row.parentNode.removeChild(row);
                };
                $(function() {
                    $("#THK_PROJECT #awardDate,#THK_PROJECT #quotedDate, #THK_PROJECT #sopVal").datepicker({
                        autoclose: true,
                        todayHighlight: true,
                        dateFormat: 'mm-dd-yy'
                    }).datepicker('update', new Date());
                });
                $("#THK_PROJECT #awardDate,#THK_PROJECT #quotedDate").on('keypress', function(e) {
                    e.preventDefault();
                });
                bind_drop_downs_oemgroup_planner(["oemGroup"], "/thk/getOemGroupByUser");
                //bind_child_drop_downs_green_light(["oemGroupGl"],["platformGl"],"/thk/greenlightPlatform");
                $('#THK_PROJECT select#oemGroup').on('change', function(e) {
					$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                        sendRequest("/thk/filterPlanner", {
                            data: {
                                id: $(this).val(),
                                type: this.selectedOptions[0].textContent
                            }
                        }, function(e) {
							$("#THK_PROJECT #tbodyTableDynamic").show();
                            if (typeof e.data !== 'undefined') {
                                var tbody = '';
								var thead = '';
                                $.each(e.data, function(i, k) {
									thead +='';
                                    tbody += '<tr><td style="padding-left:50px;"><label class="radio-inline"><input ' + ((k.activeFlagPlanner.id == 'N') ? ("disabled") : ("")) + ' type="radio" name="radiobutton">' +
                                        k.vbIdPlanner.id +
                                        '</label></td><td >' +
                                        k.designParentPlanner.value +
                                        '</td><td>' +
                                        k.oemGroupPlanner.value +
                                        '</td><td>' +
                                        k.oemPlanner.value +
                                        '</td><td>' +
                                        k.badgePlanner.value +
                                        '</td><td>' +
                                        k.platformFamilyPlanner.value +
                                        '</td><td>' +
                                        k.platformPlanner.value +
                                        '</td><td>' +
                                        k.namePlatePlanner.value +
                                        '</td><td>' +
                                        k.percentageCompletePlanner.value +
                                        '</td><td><select id="status" class="state"><option value="Y" ' + ((k.activeFlagPlanner.id == 'Y') ? ("selected") : ("")) + '>Planned</option><option value="N" ' + ((k.activeFlagPlanner.id == 'N') ? ("selected") : ("")) + '>Not Planned</option></select></td></tr>';
                                    '</td><td></td></tr>';
                                });
                                $("#THK_PROJECT #tbodyTableDynamic").html(tbody);
								$("#THK_PROJECT #myVBTable").dataTable( {
								  "ordering": true,
								  "filter": true,
								  "paging": true,
								  "info": true,
								  "scrollX": false,
								  "scrollY": false,
								  "retrieve": true,
								  "language": {
										"lengthMenu": 'Display <select>'+
										  '<option value="5">5</option>'+
										  '<option value="10">10</option>'+
										  '<option value="15">15</option>'+
										  '<option value="20">20</option>'+
										  '<option value="25">25</option>'+
										  '<option value="-1">All</option>'+
										  '</select> records'
									  }
								} );
                                $("#THK_PROJECT #status").on('change', function(e) {
                                    sendRequest("/thk/activeFlagVbIdPlanner", {
                                        data: {
                                            vbId: $($(e.target).parent().siblings()[0]).find('label').text(),
                                            active_flag: $(e.target).val()
                                        }
                                    }, function(e) {}, function(e) {
                                        console.error(e)
                                    })
                                })
                                $(".state").on('change', function(e) {
                                    $(e.target).parent().siblings(':first').find('input').attr('disabled', ((e.target.value == 'Y') ? false : true))
                                })
                            }
							$("#THK_PROJECT").unblock();
                        }, function(e) {
                            console.error(e);
                        })
                    })
                    //$("#THK_PROJECT #greenlight").hide();
                $('#THK_PROJECT #undo_redo').multiselect({
                    leftSelected: '#undo_redo_leftSelected',
                    leftAll: '#undo_redo_leftAll',
                    afterMoveToLeft: function(Multiselect, $options, event, silent, skipStack) {
                        var button = $($options.context.activeElement).attr('id');
                        if (button == 'undo_redo_leftSelected') {
                            var data = {
                                "data": {}
                            };
                            var aa = [];
                            $.each(event, function(i, e) {
                                aa.push(e.value);
                            })
                            data.data["partId"] = aa;
                            data.data["vbidhidden"] = $("#THK_PROJECT #vbidhidden").val()
                            sendRequest("/thk/activeFlagAddedPartUpdate", data, function(e) {}, function(e) {
                                console.error(e);
                            });
                        } else if (button == 'undo_redo_leftAll') {
                            var data = {
                                "data": {}
                            };
                            var aa = [];
                            $.each(event, function(i, e) {
                                aa.push(e.value);
                            })
                            data.data["partId"] = aa;
                            data.data["vbidhidden"] = $("#THK_PROJECT #vbidhidden").val()
                            sendRequest("/thk/activeFlagAddedPartUpdate", data, function(e) {}, function(e) {
                                console.error(e);
                            });
                        }
                    }
                });
                bind_child_drop_downs_PartId('part_select', ["partId"], ["partPlanId_Supplier"], "/thk/planPartId");
                bind_child_drop_downs_productName('part_select', ["productName"], ["productGroupName"], "/thk/productName",
                    "/thk/productGroupName");
                bind_child_drop_downs_FxRate('currency', ["xRate"], "/thk/xRate");
                var thk_wizard = $("#THK_PROJECT #exampleWizardFormContainer");
                thk_wizard.wizard({
                    cacheContent: false,
                    step: ".steps .step, .pearls .pearl",
                    templates: {
                        buttons: function() {
                            var options = this.options;
                            return '<div class="thk--buttons-footer" id="thk_footer"><div class="wizard-buttons" id="saveData">' +
                                '<a id="back" class="btn btn-primary" href="#' + this.id + '" data-wizard="back" role="button"><i class="material-icons" >arrow_back</i>' + options.buttonLabels.back + '</a>' +
                                '<a id="next"  class="btn btn-primary pull-right" href="#' + this.id + '" data-wizard="next" role="button">' + options.buttonLabels.next + '<i class="material-icons">arrow_forward</i></a>' +
                                '<a style="box-shadow: 0 3px 0 0 rgb(183, 0, 37);background-color: #b70025;border-color: rgb(183, 0, 37);" class="btn btn-success btn-outline pull-right" href="#' + this.id + '" data-wizard="finish" role="button">' + options.buttonLabels.finish + '</a>' +
                                '</div></div>';
                        }
                    },
                    validator: function(from, to) {
                        var numTabs = thk_wizard.find('.wizard-pane').length,
                            isValidTab = validateForm(from.index);
                        if (!isValidTab) {
                            return false;
                        }
                        return true;
                    },
                    onInit: function() {
                        thk_wizard.formValidation({
                            framework: 'bootstrap',
                            fields: {
                                'percentage': {
                                    selector: '.calcpercentage',
                                    validators: {
										notEmpty: {
                                            message: 'Please enter percentage'
                                        },
                                        between: {
                                            min: 0,
                                            max: 100,
                                            message: 'The percentage must be between 0 and 100'
                                        },
										/*regexp: {
											regexp: d{1,2}.\d{1,2}|\d{2,3}|\d{1},
											message: 'The username can only consist of alphabetical, number'
										},*/   /*Regexp is not working like this*/
										stringLength: {
											max: 5,
											message: 'Digit limit Exceeded'
										}
                                    }
                                },
                                'part_id': {
                                    selector: '.selectpartName',
                                    validators: {
                                        notEmpty: {
                                            message: 'Please select any Part Name'
                                        }
                                    }
                                },
                                'startPriceLc': {
                                    selector: '.startprice',
                                    validators: {
                                        notEmpty: {
                                            message: 'Please enter Start Price LC'
                                        },
                                    }
                                },
								'radiobutton': {
									validators: {
										notEmpty: {
											message: 'Please Select any Vehicle Build ID'
										}
									}
								},
								'oemSelect': {
									validators: {
										notEmpty: {
											message: 'Please select an OEM Group'
										}
									}
								},
                                'monthYear': {
                                    selector: '.pricingDate',
                                    validators: {
                                        notEmpty: {
                                            message: 'The date is required'
                                        },
                                        date: {
                                            format: 'MM/DD/YYYY',
                                            message: 'The date is not a valid'
                                        }
                                    }
                                },
								'itemValue': {
									selector: '.changeVal',
									validators: {
										notEmpty: {
											message: 'Please enter a Value'
										}
									}
								}
                            }
                        });
                    },
                    onNext: function(from, to) {
                        var numTabs = thk_wizard.find('.wizard-pane').length,
                            isValidTab = validateForm(to.index - 1);
                        if (!isValidTab) {
                            return false;
                        }
						var data = {
                                "data": {}
                            },
                            url = "";
                        if (to.index == '1') {
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                            a = [];
                            $.each($("#THK_PROJECT #tbodyTableDynamic").find('input:checked').parents('tr').find('td'), function(i, k) {
                                a.push($(k).text());
                            });
							$('#THK_PROJECT #vbidhidden').val(a[0]);
                            $('#THK_PROJECT #designplant').val(a[1]);
                            $('#THK_PROJECT #oemgrouphidden').val(a[2]);
                            $('#THK_PROJECT #oemhidden').val(a[3]);
                            $('#THK_PROJECT #badgehidden').val(a[4]);
                            $('#THK_PROJECT #platformfamilyhidden').val(a[5]);
                            $('#THK_PROJECT #platformhidden').val(a[6]);
                            $('#THK_PROJECT #nameplatehidden').val(a[7]);
                            sendRequest('/thk/partName', {
                                data: {
                                    "vbidhidden": $('#THK_PROJECT #vbidhidden').val(),
                                    "designplant": $('#THK_PROJECT #designplant').val(),
                                    "oemgrouphidden": $('#THK_PROJECT #oemgrouphidden').val(),
                                    "oemhidden": $('#THK_PROJECT #oemhidden').val(),
                                    "badgehidden": $('#THK_PROJECT #badgehidden').val(),
                                    "platformfamilyhidden": $('#THK_PROJECT #platformfamilyhidden').val(),
                                    "platformhidden": $('#THK_PROJECT #platformhidden').val(),
                                    "nameplatehidden": $('#THK_PROJECT #nameplatehidden').val()
                                }
                            }, function(e) {
                                $("#THK_PROJECT #undo_redo,#THK_PROJECT #undo_redo_to,#THK_PROJECT #part").empty();
                                var tr = '<tr><td>' + e.data[1][0] + '</td><td>' + e.data[1][1] + '</td><td>' + e.data[1][2] + '</td><td>' + e.data[1][3] + '</td><td>' + e.data[1][4] + '</td><td>' + e.data[1][5] + '</td><td>' + e.data[1][6] + '</td><td>' + e.data[1][7] + '</td></tr>'
                                $("#THK_PROJECT  #tbodyTableDynamic2").html(tr)
                                $("#THK_PROJECT #input_tbody").html(tr);
                                if (e.data[0].hasOwnProperty("partName")) {
                                    $.each(e.data[0].partName, function(i, d) {
                                        $("#THK_PROJECT #undo_redo").append('<option value="' + d.id + '">' + d.value + '</option>');
                                    })
                                }
                                if (e.data[0].hasOwnProperty("partNameByVbId")) {
                                    $.each(e.data[0].partNameByVbId, function(i, d) {
                                        $("#THK_PROJECT #undo_redo_to").append('<option value="' + d.id + '">' + d.value + '</option>');
                                    })
                                }
								$("#THK_PROJECT").unblock();
                            }, function(e) {
                                console.error(e);
                            })
                            $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('select#undo_redo'));
                            $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('select#undo_redo_to'));
                        } else if (to.index == '2') { 
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
							var opt = [];
                            $("#THK_PROJECT #undo_redo_to option").each(function() {
                                opt.push($(this).val())
                            });
                            if (opt.length) {
                                $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").show();
								$("#THK_PROJECT #thk_footer").css('margin-top','40px');
                                $("#THK_PROJECT #right_panel").removeClass("col-md-12");
                                $("#THK_PROJECT #right_panel").addClass("col-md-1-80");
                                $("#THK_PROJECT #inc_height").addClass("rowheight");
                                $("#THK_PROJECT #part").empty('');
                                sendRequest("/thk/inputScreen", {
                                        data: {
                                            "to[]": opt
                                        }
                                    }, function(e) {
                                        $.each(e.data[17].partNames, function(i, j) {
                                            $("#THK_PROJECT #part").append("<tr><td data-id='" + (i + 1) + "'>" + this.value + "</td><td><input type='radio' name='partnames' value=" + this.id + " style='float:right'/></td></tr></br	>")
                                        });
                                        $("#part").find("input").off().on("click", function(e) {
                                            var ele = $(this).parents("tr").find("td:first-child");
                                            var chck_val = $(this).parents("tr").find("input").val()
                                            $("#part_select").val(ele.text());
                                            $("#part_select").attr("value", chck_val);
                                            sendRequest("/thk/planPartId", {
                                                    data: {
                                                        id: chck_val,
                                                        vbId: $("#THK_PROJECT #vbIdHidden").val()
                                                    }
                                                },
                                                function(e) {
                                                    $("#THK_PROJECT #partId").val(e.data.PartPlanId[0].id);
                                                    $("#THK_PROJECT #partId").parent().removeClass("has-error");
                                                    $("#THK_PROJECT #partId")[0].removeAttribute("required")
                                                    $("#THK_PROJECT #partId")[0].removeAttribute("data-fv-field");
                                                    sendRequest("/thk/productPartDesc", {
                                                            data: {
                                                                partId: $("#THK_PROJECT #part_select").attr("value")
                                                            }
                                                        },
                                                        function(e) {
                                                            $("#THK_PROJECT #partDesc").val(e.data.partDesc[0].value);
                                                        }
                                                    )
                                                    $("#THK_PROJECT #partId").siblings()[1].remove();
                                                },
                                                function(e) {
                                                    console.error(e)
                                                }
                                            )
                                            sendRequest("/thk/productName", {
                                                    data: {
                                                        partId: ele.data('id')
                                                    }
                                                },
                                                function(e) {
                                                    $("#THK_PROJECT #productName").val(e.data.productName[0].value);
                                                    $("#THK_PROJECT #" + "productName").attr("thkproductnamepid", e.data.productName[0].id);
                                                    sendRequest("/thk/productGroupName", {
                                                            "data": {
                                                                productId: e.data.productName[0].id
                                                            }
                                                        },
                                                        function(e) {
                                                            $("#THK_PROJECT #" + "productGroupName").val(e.data.productGroupName[0].value);
                                                        },
                                                        function(e) {
                                                            console.error(e)
                                                        })

                                                },
                                                function(e) {
                                                    console.error(e)
                                                }
                                            )

                                        });
                                        $("#THK_PROJECT #oemGroup_screen2").val(e.data[0].oemGroup.value)
                                        $("#THK_PROJECT #oemGroup_screen2")[0].setAttribute("hiddenId", e.data[0].oemGroup.id)
                                        $("#THK_PROJECT #oem").val(e.data[1].oem.value)
                                        $("#THK_PROJECT #oem")[0].setAttribute("hiddenId", e.data[1].oem.id)
                                        $("#THK_PROJECT #badge").val(e.data[2].badge.value)
                                        $("#THK_PROJECT #badge")[0].setAttribute("hiddenId", e.data[2].badge.id)
                                        $("#THK_PROJECT #platfromFamily").val(e.data[3].platformFamily.value)
                                        $("#THK_PROJECT #platfromFamily")[0].setAttribute("hiddenId", e.data[3].platformFamily.id)
                                        $("#THK_PROJECT #platfrom").val(e.data[4].platform.value)
                                        $("#THK_PROJECT #platfrom")[0].setAttribute("hiddenId", e.data[4].platform.id)
                                        $("#THK_PROJECT #namePlate").val(e.data[5].namePlate.value)
                                        $("#THK_PROJECT #namePlate")[0].setAttribute("hiddenId", e.data[5].namePlate.id)
                                        $("#THK_PROJECT #regionName").val(e.data[6].regionName.value)
                                        $("#THK_PROJECT #regionName")[0].setAttribute("hiddenId", e.data[6].regionName.id)
                                        $("#THK_PROJECT #countryName").val(e.data[7].countryName.value)
                                        $("#THK_PROJECT #countryName")[0].setAttribute("hiddenId", e.data[7].countryName.id)
                                        $("#THK_PROJECT #sopVal").val(e.data[8].sop.value)
                                        $("#THK_PROJECT #sopVal")[0].setAttribute("hiddenId", e.data[8].sop.id)
                                        $("#THK_PROJECT #eopVal").val(e.data[9].eop.value)
                                        $("#THK_PROJECT #eopVal")[0].setAttribute("hiddenId", e.data[9].eop.id)
                                        $("#THK_PROJECT #year1Val").val(e.data[10].year1.value)
                                        $("#THK_PROJECT #year1Val")[0].setAttribute("hiddenId", e.data[10].year1.id)
                                        $("#THK_PROJECT #year2Val").val(e.data[11].year2.value)
                                        $("#THK_PROJECT #year2Val")[0].setAttribute("hiddenId", e.data[11].year2.id)
                                        $("#THK_PROJECT #year3Val").val(e.data[12].year3.value)
                                        $("#THK_PROJECT #year3Val")[0].setAttribute("hiddenId", e.data[12].year3.id)
                                        $("#THK_PROJECT #year4Val").val(e.data[13].year4.value)
                                        $("#THK_PROJECT #year4Val")[0].setAttribute("hiddenId", e.data[13].year4.id)
                                        $("#THK_PROJECT #year5Val").val(e.data[14].year5.value)
                                        $("#THK_PROJECT #year5Val")[0].setAttribute("hiddenId", e.data[14].year5.id)
                                        $("#THK_PROJECT #year6Val").val(e.data[15].year6.value)
                                        $("#THK_PROJECT #year6Val")[0].setAttribute("hiddenId", e.data[15].year6.id)
                                        $("#THK_PROJECT #vbIdHidden").val(e.data[16].vbId.value)
                                        var tr = '<tr><td>' + e.data[16].vbId.value + '</td><td>' + e.data[0].oemGroup.value + '</td><td>' + e.data[1].oem.value + '</td><td>' + e.data[2].badge.value + '</td><td>' + e.data[3].platformFamily.value + '</td><td>' + e.data[4].platform.value + '</td><td>' + e.data[5].namePlate.value + '</td><td>' + e.data[6].regionName.value + '</td></tr>'
                                        $("#THK_PROJECT  #tbodyTableDynamic2").html(tr)
                                        $("#THK_PROJECT #input_tbody").html(tr);
										$("#THK_PROJECT").unblock();
                                    }, function(e) {
                                        console.error(e)
                                    })
									$("#THK_PROJECT #left_panel").show();
									$("#THK_PROJECT #right_panel").removeClass("col-md-12").addClass("col-md-1-80");
                            } else {
								$("#THK_PROJECT #left_panel").hide();
								$("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
								var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
								x.goTo(1);
								$("#THK_PROJECT").unblock();
                                noty({
                                    text: 'Please select part name properly',
                                    type: 'error',
                                    layout: 'topRight',
                                    timeout: 3000
                                });
                            }
                            
							return false;
                        } else if (to.index == '3') {
							url = "/thk/saveVehicle ";
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                            data.data["partName"] = $("#THK_PROJECT #part_select").val();
                            data.data["partId"] = $("#THK_PROJECT #partId").val();
                            data.data["oemGroup"] = $("#THK_PROJECT #oemGroup").val();
                            data.data["oem"] = $("#THK_PROJECT #oem")[0].getAttribute("hiddenId");
                            data.data["badge"] = $("#THK_PROJECT #badge")[0].getAttribute("hiddenId");
                            data.data["platfromFamily"] = $("#THK_PROJECT #platfromFamily")[0].getAttribute("hiddenId");
                            data.data["platfrom"] = $("#THK_PROJECT #platfrom")[0].getAttribute("hiddenId");
                            data.data["namePlate"] = $("#THK_PROJECT #namePlate")[0].getAttribute("hiddenId");
                            data.data["countryName"] = $("#THK_PROJECT #countryName")[0].getAttribute("hiddenId");
                            data.data["regionName"] = $("#THK_PROJECT #regionName")[0].getAttribute("hiddenId");
                            data.data["sopVal"] = $("#THK_PROJECT #sopVal").val();
                            data.data["eopVal"] = $("#THK_PROJECT #eopVal").val();
                            data.data["year1Val"] = $("#THK_PROJECT #year1Val").val();
                            data.data["year2Val"] = $("#THK_PROJECT #year2Val").val();
                            data.data["year3Val"] = $("#THK_PROJECT #year3Val").val();
                            data.data["year4Val"] = $("#THK_PROJECT #year4Val").val();
                            data.data["year5Val"] = $("#THK_PROJECT #year5Val").val();
                            data.data["year6Val"] = $("#THK_PROJECT #year6Val").val();
                            data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                            //-------------Supplier data Load-------------------
                            bind_drop_downs(["supplier", "supplierPlant", "supplierShipTo", "supplierSoldTo"], "/thk/displaySupplierData");
                            $('#THK_PROJECT #part').find('input[type=radio]').attr('disabled', 'disabled')
                        } else if (to.index == '4') {
                            url = "/thk/saveSupplier";
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                            data.data["supplier"] = $("#THK_PROJECT #supplier").val();
                            data.data["supplierPlant"] = $("#THK_PROJECT #supplierPlant").val();
                            data.data["supplierShipTo"] = $("#THK_PROJECT #supplierShipTo").val();
                            data.data["supplierSoldTo"] = $("#THK_PROJECT #supplierSoldTo").val();
                            data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                            data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                            //---------Product Info Load----------------------------
                            bind_drop_downs(["techLevelOne", "techLevelTwo", "houseDesc", "prob", "opportunityPipeline"], "/thk/displayProductBindData");
                            bind_textbox(["thkPartName", "customerPartNo", "partDescLong"], "/thk/displayProductTextBoxes");
                            bind_drop_downs(["currency"], "/thk/currencyPricing");
                            bind_drop_downs(["currencyFormat"], "/thk/currencyFormatPricing");
                            bind_textbox(["xRate", "startPriceLc"], "/thk/startLcPricingAndXRate");
                        } else if (to.index == '5') {
                            url = "/thk/saveProduct";
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                            data.data["productGroupName"] = $("#THK_PROJECT #productGroupName").val();
                            data.data["productName"] = $("#THK_PROJECT #productName").val();
                            data.data["partDesc"] = $("#THK_PROJECT #partDesc").val();
                            data.data["techLevelOne"] = $("#THK_PROJECT #techLevelOne").val();
                            data.data["techLevelTwo"] = $("#THK_PROJECT #techLevelTwo").val();
                            data.data["houseDesc"] = $("#THK_PROJECT #houseDesc").val();
                            data.data["thkPartName"] = $("#THK_PROJECT #thkPartName").val();
                            data.data["customerPartNo"] = $("#THK_PROJECT #customerPartNo").val();
                            data.data["partPerVehicle"] = $("#THK_PROJECT #partPerVehicle").val();
                            data.data["prob"] = $("#THK_PROJECT #prob").val();
                            data.data["opportunityPipeline"] = $("#THK_PROJECT #opportunityPipeline").val();
                            data.data["partDescLong"] = $("#THK_PROJECT #partDescLong").val();
                            data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                            data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                            sendRequest("/thk/fetchPricingTableData", {
                                data: {
                                    "partPlanId": $('#partId').val()
                                }
                            }, function(e) {
                                $('#THK_PROJECT #myTable').empty();
                                e = e.data;
                                if (typeof e === 'object') {
                                    for (var i = 0, j = e.length; i < j; i++) {
                                        var ele = $('<tr><td><input type="text"  value="' + e[i][1] + '" readonly class="form-control test-control" style="width: 66px;" name="pricechange"/></td><td><div id="datepicker3" class="input-group date" ><input class="form-control test-control" style="width:154px;" type="date" readonly value="' + e[i][1] + '" name="monthYear"/></div></td><td><select class="form-control test-control" style="width: 120px;" disabled="true" name="reason"><option id="1" value="1">Contractual</option><option id="2" value="2">Non Contractual Committed</option><option id="3" value="3"> Non-Contractual Non Committed</option><option id="4" value="4">Material Inflation/Deflation</option><option id="5" value="5"> Tooling, Amortization, Packaging, Others</option><option id="6" value="6">VAVE (Value Add Value Engineering)</option></select></td><td ><fieldset class="test-control"><input type="radio" checked name="ChangeType' + i + '"data-type="abs">Absolute Value<br><input type="radio" name="ChangeType' + i + '" class="group12" data-type="percent">%Change</fieldset></td><td><div class="form-group"><input value="' + e[i][4] + '" type="text" class="form-control test-control" name="itemValue" style="width: 100px;"></div></td><td><input value="' + e[i][6] + '" type="number" readonly class="form-control test-control" style="width: 98px; cursor: not-allowed;" name="priceInclude" readonly/></td><td><input type="number" class="form-control test-control" style="width: 80px ;cursor: not-allowed;" name="variance" readonly/></td><td><i id="del_row" class="material-icons" style="cursor:pointer;"  aria-hidden="true">delete_forever</i></td></tr>')
                                        $('#THK_PROJECT #myTable').append(ele);
                                        ele.find('[name=reason]').val(e[i][2]);
                                        if (e[i][3].toUpperCase() == 'P') {
                                            ele.find('[data-type=percent]').prop('checked', true)
                                            ele.find('[name="itemValue"]').val(e[i][5]);
                                        } else {
                                            ele.find('[data-type=abs]').prop('checked', true)
                                            ele.find('[name="itemValue"]').val(e[i][4]);
                                        }
                                        var format = $('#currencyFormat').val()
                                        if (format == 1) {
                                            $(ele).find('[name=itemValue]').autoNumeric('init', {
                                                aSep: ",",
                                                dGroup: "3",
                                                aDec: "."
                                            });
                                        } else {
                                            $(ele).find('[name=itemValue]').autoNumeric('init', {
                                                aSep: ".",
                                                dGroup: "3",
                                                aDec: ","
                                            });

                                        }
                                        ele.find('[name=itemValue]').on('keyup change', function(e) {
                                            calculatePC();
                                        });
                                        ele.find("[name='ChangeType" + i + "']").on('change', function(e) {
                                            calculatePC();
                                        });

                                        $("#THK_PROJECT #del_row").on('click', function() {
                                            $(this).parent().parent().remove();
                                            calculatePC();
                                        })
                                    }
                                }
                            }, function(e) {
                                console.error(e);
                            })
                            sendRequest("/thk/xRate", {
                                data: {
                                    "id": this.value,
                                    "currencyId": $('#THK_PROJECT #currency').val()
                                }
                            }, function(e) {
                                $("#THK_PROJECT #xRate").val(e.data.xRate[0].value);
                            }, function(e) {
                                console.error(e);
                            })
                        } else if (to.index == '6') {
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                            data.data["currency"] = $("#THK_PROJECT #currency").val();
                            data.data["currencyFormat"] = $("#THK_PROJECT #currencyFormat").val();
                            data.data["xRate"] = $("#THK_PROJECT #xRate").val();
                            data.data["startPriceLc"] = $("#THK_PROJECT #startPriceLc").autoNumeric('get');
                            data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                            data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                            url = "/thk/savePricing";
                            var y = $('#THK_PROJECT #myTable');
                            var dataTab = getTableData(y);
                            var i;
                            var finalArray = [];
                            for (i = 0; i < dataTab.length; i++) {
                                if (!dataTab[i][0] && !dataTab[i][3]) {
                                    continue;
                                }
                                var result = {};
                                var result2 = {};
                                result.priceChange = dataTab[i][0];
                                result.monthYear = dataTab[i][1];
                                result.reason = dataTab[i][2];
                                result.reason = dataTab[i][2];
                                result.radioAbsolute = dataTab[i][3];
                                result.absoluteValue = dataTab[i][4];
                                result.priceInc = dataTab[i][5];
                                //result.priceInc = dataTab[i][6];
                                finalArray.push(result);
                                result2 = finalArray;
                            }
                            data.data["pricingTable"] = result2;
                            bind_textbox(["allocationRateYear1", "allocationRateYear2",
                                    "allocationRateYear3", "allocationRateYear4",
                                    "allocationRateYear5", "allocationRateYear6",
                                    "applicationRateYear1", "applicationRateYear2",
                                    "applicationRateYear3", "applicationRateYear4",
                                    "applicationRateYear5", "applicationRateYear6", "quotedDate", "awardDate"
                                ],
                                "/thk/applicationAndAllocation");
                        } else if (to.index == '7') {
							$("#THK_PROJECT").block({message:' <svg version = "1.1" id = "Layer_1" xmlns = "http://www.w3.org/2000/svg" xmlns : xlink = "http://www.w3.org/1999/xlink" x = "0px" y = "0px" width = "36px" height = "42px" viewBox = "0 0 24 30" style = "enable-background:new 0 0 50 50;" xml : space = "preserve"><rect x = "0" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "10" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.15s" dur = "0.6s" repeatCount ="indefinite"/><animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.15s" dur = "0.6s" repeatCount = "indefinite"/></rect><rect x = "20" y = "13" width = "4" height = "5" fill = "#333"><animate attributeName = "height" attributeType = "XML" values = "5;21;5" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/>< animate attributeName = "y" attributeType = "XML" values = "13; 5; 13" begin = "0.3s" dur = "0.6s" repeatCount = "indefinite"/></rect></svg>',css:{"background-color": "transparent",    "border": "none"}});
                            url = "/thk/saveApplicationAndAllocation";
                            sendRequest('/single/get-KettleData', {
                                "data": {
                                    "businessobject_id": "677",
                                    "params": {
                                        "P_PLAN_PART_ID": [Number($("#THK_PROJECT #partId").val())],
                                        "P_THK_ISSUE_PLAN_ID": [2],
                                        "P_VBID": [Number($("#THK_PROJECT #vbIdHidden").val())]
                                    }
                                }
                            }, function(e) {

                                $("#THK_PROJECT #multifun").val(e.data[677].resultSet[0][0]);
                                $("#THK_PROJECT #multifun2").val(e.data[677].resultSet[0][1]);
                                $("#THK_PROJECT #multifun3").val(e.data[677].resultSet[0][2]);
                                $("#THK_PROJECT #multifun4").val(e.data[677].resultSet[0][3]);
                                $("#THK_PROJECT #multifun5").val(e.data[677].resultSet[0][4]);
                                $("#THK_PROJECT #multifun6").val(e.data[677].resultSet[0][5]);
                                $("#THK_PROJECT #sales1").val(e.data[677].resultSet[0][6]);
                                $("#THK_PROJECT #sales2").val(e.data[677].resultSet[0][7]);
                                $("#THK_PROJECT #sales3").val(e.data[677].resultSet[0][8]);
                                $("#THK_PROJECT #sales4").val(e.data[677].resultSet[0][9]);
                                $("#THK_PROJECT #sales5").val(e.data[677].resultSet[0][10]);
                                $("#THK_PROJECT #sales6").val(e.data[677].resultSet[0][11]);

                            }, function() {});
                            data.data["allocationRateYear1"] = $("#THK_PROJECT #allocationRateYear1").val();
                            data.data["allocationRateYear2"] = $("#THK_PROJECT #allocationRateYear2").val();
                            data.data["allocationRateYear3"] = $("#THK_PROJECT #allocationRateYear3").val();
                            data.data["allocationRateYear4"] = $("#THK_PROJECT #allocationRateYear4").val();
                            data.data["allocationRateYear5"] = $("#THK_PROJECT #allocationRateYear5").val();
                            data.data["allocationRateYear6"] = $("#THK_PROJECT #allocationRateYear6").val();
                            data.data["applicationRateYear1"] = $("#THK_PROJECT #applicationRateYear1").val();
                            data.data["applicationRateYear2"] = $("#THK_PROJECT #applicationRateYear2").val();
                            data.data["applicationRateYear3"] = $("#THK_PROJECT #applicationRateYear3").val();
                            data.data["applicationRateYear4"] = $("#THK_PROJECT #applicationRateYear4").val();
                            data.data["applicationRateYear5"] = $("#THK_PROJECT #applicationRateYear5").val();
                            data.data["applicationRateYear6"] = $("#THK_PROJECT #applicationRateYear6").val();
                            data.data["awardDate"] = $("#THK_PROJECT #awardDate").val();
                            data.data["quotedDate"] = $("#THK_PROJECT #quotedDate").val();
                            data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                            data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                        } else if (to.index == '8') {							
                            url = "/thk/finalUpdate";
                            data.data["part"] = $("#THK_PROJECT #part").val();
                            data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                            data.data["planPartId"] = $("#THK_PROJECT #partId").val();
						}
                        if (url.trim().length) {
                            sendRequest(url, data, function(e) {
                                if (e.data == 1) {
                                    noty({
                                        text: 'Vehicle Information Saved Successfully',
                                        type: 'success',
                                        layout: 'topRight',
                                        timeout: 3000
                                    });
									$("#THK_PROJECT").unblock();
                                } else if (e.data == 2) {
                                    noty({
                                        text: 'Supplier Information Saved Successfully',
                                        type: 'success',
                                        layout: 'topRight',
                                        timeout: 3000
                                    });
									$("#THK_PROJECT").unblock();
                                } else if (e.data == 3) {
                                    noty({
                                        text: 'Product Information Saved Successfully',
                                        type: 'success',
                                        layout: 'topRight',
                                        timeout: 3000
                                    });
									$("#THK_PROJECT").unblock();
                                } else if (e.data == 4) {
                                    noty({
                                        text: 'Pricing Information Saved Successfully',
                                        type: 'success',
                                        layout: 'topRight',
                                        timeout: 3000
                                    });
									$("#THK_PROJECT").unblock();
                                } else if (e.data == 5) {
                                    noty({
                                        text: 'Application and Allocation Saved Successfully',
                                        type: 'success',
                                        layout: 'topRight',
                                        timeout: 3000
                                    });
									$("#THK_PROJECT").unblock();
                                } else if (e.data == null) {
                                    noty({
                                        text: 'Mandatory Data is missing',
                                        type: 'error',
                                        layout: 'topRight',
                                        timeout: 3000
                                    });
									$("#THK_PROJECT").unblock();
                                }
                            }, function(e) {
                                console.error(e);
                            })
                        }
                        return true;
                    },
                    onFinish: function() {
                        $('#THK_PROJECT #exampleWizardFormContainer').find('[data-fv-field]').val('')
                        $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled');
                        $('input[name=radio]').prop('checked', false);
                        $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                        $("#THK_PROJECT #undo_redo,#THK_PROJECT #undo_redo_to").empty();
                        $("#THK_PROJECT #part").empty('');
                        $("#THK_PROJECT #partId").val('');
                        $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                        $("#THK_PROJECT #inc_height").removeClass("rowheight");
                        var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
                        x.goTo(0);
                        x.reset();
						$("#THK_PROJECT #tbodyTableDynamic").hide();
						$("#THK_PROJECT #myVBTable").dataTable({
						  "ordering": false,
						  "retrieve": true,
						  "language": {
										"lengthMenu": 'Display <select>'+
										  '<option value="5">5</option>'+
										  '<option value="10">10</option>'+
										  '<option value="15">15</option>'+
										  '<option value="20">20</option>'+
										  '<option value="25">25</option>'+
										  '<option value="-1">All</option>'+
										  '</select> records'
									  },
									  "infoEmpty": "No entries to show"
						} );
					},
                    onBack: function(from, to, index) {
                        if (to.index == '1') {
							$("#THK_PROJECT #thk_footer").css('margin-top','40px');
                            $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                            $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                        } else if (to.index == '2') {
                            $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled')
                        }

                        return validateForm(index + 1);
                    },
                    onPrevious: function(tab, navigation, index) {
                        return validateForm(index + 1);
                    },
                    buttonsAppendTo: '.panel-body'
                });
				function validateForm(index) {
					var fv = $('#THK_PROJECT #exampleWizardFormContainer').data('formValidation');
                    var $tab = $('#THK_PROJECT #exampleWizardFormContainer').find('.wizard-pane').eq(index);
                    try{
						$('#THK_PROJECT #exampleWizardFormContainer').formValidation('revalidateField', $tab.find('[data-fv-field]'));
					}catch(e){
						
					}finally{
						fv.validateContainer($tab);
						var isValidStep = fv.isValidContainer($tab);
						if (isValidStep === false || isValidStep === null) {
							return false;
						}
						return true;
					}
                }
                $('#THK_PROJECT #vehicle_icon').on('click', function(e) {
                    $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled');
                    $('input[name=radio]').prop('checked', false);
                })
                $('#THK_PROJECT #partname_icon').on('click', function(e) {
                    $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                    $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                })
                $('#THK_PROJECT #planner_icon').on('click', function(e) {
                    $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                    $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                })
				
                var configuration = [{
                    "name": "THK Plan Review",
                    "printFooter": ["Date of print: &D &T", "&A", "Page &P of &N"],
                    "printHeader": ["Date of print: &D &T", "&A", "Page &P of &N"],
                    "worksheet": [{
                        "name": " Plan review",
                        "column": [{
                            "width": 30,
                            "hidden": false,
                            "index": 0

                        }, {
                            "width": 40,
                            "index": 1

                        }, {
                            "width": 50,
                            "index": 2
                        }]
                    }]
                }];
                var originalData = [
                    ['Part Id', 'Part Name', 'Price'],
                    ['1', 'Albino Slug', 34.345],
                    ['2', 'Electric Tears', 12.345],
                    ['3', 'Colma', 34723],
                    ['4', 'Vegas', 293479],
                    ['5', 'Tweekend', 23409.23],
                    ['6', 'Divided By Night', 23498.234]
                ];
				/*var originalData;
				originalData=[];*/
                $('#THK_PROJECT #export_btn').on('click', function(e) {
                    e.preventDefault();
					/*var originalData;
					originalData=[];
					sendRequest('/single/get-KettleData', {
						"data": {
							"businessobject_id": "677",
							"params": {
								"P_PLAN_PART_ID": [Number($("#THK_PROJECT #partId").val())],
								"P_THK_ISSUE_PLAN_ID": [2],
								"P_VBID": [Number($("#THK_PROJECT #vbIdHidden").val())]
							}
						}
					}, function(e) {
						originalData=e.data[677].resultSet
					}, 
					function() {});
					console.log(originalData);
				*/
                    /*sendRequest('/single/get-KettleData',{
						"data": {
							"businessobject_id": "677",
							"params": {
								"P_PLAN_PART_ID": [Number($("#THK_PROJECT #partId").val())],
								"P_THK_ISSUE_PLAN_ID": [2],
								"P_VBID": [Number($("#THK_PROJECT #vbIdHidden").val())]
							}
						},function(originalData){
						                  /*Loop To every objects in configuration 
						                  
						                 },function(e){
						                  console.error(e);
						                 }); */
                    for (var i = 0, j = configuration.length; i < j; i++) {
                        var currentWorkbook = configuration[i],
                            workbook = ExcelBuilder.Builder.createWorkbook(); /*Create Workbook*/
                        /*Create Design*/
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
                                /*Create SHEET*/
                                var worksheet = workbook.createWorksheet({
                                    name: currentWorksheet.name
                                });
                                /*Create SHEET ENDS*/
                                /*Get Column Options and index*/
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
                                /*Get Column Options and index ends*/
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
                                /*Set Data ENDS*/
                                /*Set Columns Property*/
                                worksheet.setColumns(columnConfig);
                                /*Set Columns Property*/
                                /*Sheet Print Header Footer*/
                                if (currentWorkbook.hasOwnProperty('printFooter')) {
                                    worksheet.setFooter(currentWorkbook.printFooter);
                                }
                                if (currentWorkbook.hasOwnProperty('printHeader')) {
                                    worksheet.setHeader(currentWorkbook.printHeader);
                                }
                                /*Sheet Print Header Footer ENDS*/
                                /*Table*/

                                /*Table End*/
                                /*Add Sheet to workbook*/
                                workbook.addWorksheet(worksheet);
                                /*Add Sheet to workbook ENDS*/
                                if (currentWorksheet.hasOwnProperty("table") && currentWorksheet.table.enabled === true) {
                                    /*var Table = new ExcelBuilder.Table();
                                    Table.styleInfo.themeStyle = currentWorksheet.table.theme;
                                    Table.totalsRowCount = 1;
                                    Table.setReferenceRange([1, 1], [data[0].length, data.length]);
                                    Table.setTableColumns([
                                      {name: 'Artist', totalsRowLabel: 'Highest Price'},
                                      {name: 'Art', totalsRowLabel: 'Lowest Price'}
                                    ]);
                                    //Table.setTableColumns(currentWorksheet.table.header);
                                    worksheet.addTable(Table);
                                    workbook.addTable(Table); */
                                }
                            }
                        }
                    }
                    ExcelBuilder.Builder.createFile(workbook).then(function(data) {
                        window.open("data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64," + data)
                    });
                });



            });
        </script>
