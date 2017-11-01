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
<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> -->
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
                height: 0px;
            }

            .col-md-1-80 {
                width: 80%;
                <!--margin-top: -520px;
                -->
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

            .step-number~.step-desc {
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

            .steps-lg .step-number~.step-desc {
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

            .steps-sm .step-number~.step-desc {
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

            .steps-xs .step-number~.step-desc {
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
                <!--border-bottom: 1px solid rgba(0, 0, 0, .1);
                -->
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

            .thbgcolor {
                background-color: #333;
                color: #fff !important;
                border-right: 1px solid #818181;
                box-sizing: border-box;
            }

            table,
            th,
            {
                border: 1px solid rgba(230, 230, 230, 0.18);
            }

            .thk--top-header,
            .thk--buttons-footer {
                position: relative;
                padding: 7px 0;
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

            .thk--top-header>h2 {
                margin: 0;
                margin-left: 15px;
                font-size: 24px;
                font-weight: 600
            }

            .thk--top-header>h2 span.light {
                font-weight: 300 !important;
                font-size: 18px;
                margin-left: 20px;
            }

            .thk--inner-heading.no-border>h4 {
                margin: 0;
                margin-left: 15px;
                font-size: 16px;
                font-weight: 600
            }

            .thk--inner-heading.no-border:after {
                background: transparent
            }

            .thk--top-header.no-bg>h3 {
                margin: 0;
                font-size: 20px;
                font-weight: 300
            }

            .thk--inner-heading {
                position: relative;
                padding-bottom: 1px;
                margin: 7px 0 17px 0
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

            .thk--inner-heading>h2,
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

            .thk-step-heading>h4 {
                color: #f9a736;
                font-size: 24px;
            }

            .thk-step-heading.top-lables>h4 {
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

            .thk-step-title>h3 {
                display: block;
                padding: 20px 30px;
                font-size: 11px;
                color: #a3afb7;
                text-align: -webkit-right;
                font-style: italic;
            }

            .thk-step-title>h4 {
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

            .thk-step-heading>h4 {
                color: #f9a736;
                font-size: 24px;
            }

            .thk-step-heading.top-lables>h4 {
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

            .thk-step-title>h3 {
                display: block;
                padding: 20px 30px;
                font-size: 11px;
                color: #a3afb7;
                text-align: -webkit-right;
                font-style: italic;
            }

            .thk-step-title>h4 {
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
                padding-left: 15px;
            }

            .p-0 {
                padding: 0px
            }

            .m-top {
                margin-top: -50px
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

            .thk-multi>h4 {
                text-align: center;
                font-size: 18px;
                color: #b70025;
                margin: 6px 0 6px 0;
            }

            .thk-buttons {}

            .thk-buttons-footer .wizard-buttons {}

            <!-- BUTTONS -->.wizard-buttons .btn-thk {
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
                padding: 15px 0px 10px 5px;
                background: rgba(0, 0, 0, .03);
                position: relative;
                min-height: 490px;
                height: 490px;
                width: 250px;
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
                max-height: 400px;
                overflow-y: auto;
                margin-top: 0;
                top: 90px;
                position: absolute;
                width: 245px;
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
            

            .page {
                overflow: hidden;
            }

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
                background: rgba(0, 0, 0, .05)
            }

            .thk-forms-label .form-group {
                margin: 8px 0;
            }

            .m-b-5 {
                margin-bottom: 5px !important;
            }

            span.top-note {
                position: absolute;
                right: 12px;
                top: 5px;
                font-size: 12px;
                font-weight: 600;
            }

            .wizard-pane {
                top: 16px
            }

            .wizard-content {
                padding: 0 30px 0 5px
            }

            .thk--home-wrap {
                padding-top: 5px
            }

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

            .downloadbtn:hover {
                box-shadow: 0 3px 0 0 #9b0624;
                background-color: #b70025;
                border-color: #b70025;
            }

            .downloadbtn {
                box-shadow: 0 3px 0 0 #9b0624;
                background-color: #b70025;
                border-color: #b70025;
            }

            .downloadbtn:focus {
                box-shadow: 0 3px 0 0 #9b0624;
                background-color: #b70025;
                border-color: #b70025;
            }

            .downloadbtn:active {
                background: #b70025;
                box-shadow: none;
                margin-bottom: -3px;
                margin-top: 3px;
            }

            .rowheight {
                height: 450px;
            }

            field {
                min-width: 88px !important;
                padding: 0;
                margin: 0;
                border: 0;
            }

            .dataTables_length {
                padding: 7px;
            }

            .dataTables_filter {
                padding: 3px;
            }
            
            .table>tbody>tr>td,
            .table>tbody>tr>th,
            .table>tfoot>tr>td,
            .table>tfoot>tr>th,
            .table>thead>tr>td,
            .table>thead>tr>th {
                padding: 8px;
                line-height: 1.42857143;
                /* vertical-align: top; */
                border-top: 1px solid #ddd;
            }

            input[type=date]::-webkit-outer-spin-button,
            input[type=date]::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            input[type=date] {
                -moz-appearance: textfield;
            }

            .ui-datepicker {
                width: 20em !important;
                padding: .2em .2em 0;
                display: none;
            }

            .ui-datepicker-calendar .ui-state-active {
                color: #000;
                font-weight: 600;
                font-size: 16px;
            }

            .thprice {
                font-weight: bold;
                width: 12.5%;
                text-align: center
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

            /* ======== NEW CSS CHOOSE OWNER ============ */

            /*CSS for Summary Page*/
            .overlay {
                position: fixed;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                /* background-color: rgba(0,0,0,0.5);*/
                background-color: #fafafa;
                z-index: 2;
                overflow-y:auto;
                overflow-x:hidden;
            }
            .overlay-container{
                position: absolute;    
                color: white; 
                width: 100%;
            }

            body11 {margin: 0; padding: 0}
            .thk-container-summary{
                margin: 0;
                padding: 0;
                font-family: 'Open Sans', sans-serif;
            }            
            .thk-summary-header h4{
                padding: 0 10px;
                background: #b70025;
                font-size: 14px;
                font-weight: 600;
                margin: 0;
                color: #fff;
                height: 30px;
                line-height: 30px;
            }

            .thk-summary-body{
                background: #fafafa;
                padding:0 30px;                
                left: 0;
                right: 0;                
            }
            .thk-summary-footer{
                background: #fafafa;
                height: 35px;
                padding: 5px 30px;
            }

            /* =========== Vertical Icon Design ============= */
            .thk-summary-line {
                position: relative;
                padding:0;
                margin:0 ;
                background: none;
            }

            .thk-summary-line::before {
                content: '';
                position: absolute;
                top: 12px;
                left: 18px;
                height: 98%;
                width: 3px;
                background: #f1f1f1;
            }

            .thk-summary-line-block {
                position: relative;
                margin: .35em 0;
            }

            .thk-summary-line-icon {
                position: absolute;
                top: 0;
                left: 10px;
                width: 18px;
                height: 18px;
                border-radius: 50%;
                border: 1px solid #b70025;
                background: #b70025;
                /* box-shadow: 0 0 0 2px rgba(0, 0, 0, 0.1);*/
            }

            .thk-summary-line-icon-one,
            .thk-summary-line-icon-two,
            .thk-summary-line-icon-three,
            .thk-summary-line-icon-four,
            .thk-summary-line-icon-five,
            .thk-summary-line-icon-six,{
                display: block;                
                position: absolute;
                left: 0;
                top: 0;                
            }

            .thk-summary-line-icon.thk-summary-line-icon-one:before {
                content: '1';
                top: -3px;
                left: 5px;
                position: relative;
                color: #fff;
                font-size: 13px;
                align-items: center;
                justify-content: center;
                font-weight: 700;
            }
            .thk-summary-line-icon.thk-summary-line-icon-two:before {
                content: '2';
                top: -3px;
                left: 5px;
                position: relative;
                color: #fff;
                font-size: 13px;
                align-items: center;
                justify-content: center;
                font-weight: 700;
            }
            .thk-summary-line-icon.thk-summary-line-icon-three:before {
                content: '3';
                top: -3px;
                left: 5px;
                position: relative;
                color: #fff;
                font-size: 13px;
                align-items: center;
                justify-content: center;
                font-weight: 700;
            }
            .thk-summary-line-icon.thk-summary-line-icon-four:before {
                content: '4';
                top: -3px;
                left: 5px;
                position: relative;
                color: #fff;
                font-size: 13px;
                align-items: center;
                justify-content: center;
                font-weight: 700;
            }
            .thk-summary-line-icon.thk-summary-line-icon-five:before {
                content: '5';
                top: -3px;
                left: 5px;
                position: relative;
                color: #fff;
                font-size: 13px;
                align-items: center;
                justify-content: center;
                font-weight: 700;
            }
            .thk-summary-line-icon.thk-summary-line-icon-six:before {
                content: '6';
                top: -3px;
                left: 5px;
                position: relative;
                color: #fff;
                font-size: 13px;
                align-items: center;
                justify-content: center;
                font-weight: 700;
            }

            .thk-summary-line-content{
                position: relative;
                margin-left: 45px;
            }
            .thk-summary-line-content h5{
                font-size: 13px;
                color: #c12545;
                font-weight: 600;
                letter-spacing: .04em;
                margin: 0 0 4px 0;
            }
            .thk-summary-line-content-box {
                background: #f7f7f7;
                border-radius: 2px;
                padding: 5px;
                box-shadow: 0 0 0 2px rgba(0,0,0,.03);
            }
            .thk-summary-line-content-box span{
                display: block;
                font-size: 11px;
                color: #343333;
                font-weight: 600;
            }
            .thk-summary-line-content-box label{
                display: block;
                font-size: 11px;
                color: #7d7c7c;
                font-weight: 500;
                overflow:hidden;
                text-overflow:ellipsis;
            }

            .thk-summary-line-content:before,
            .thk-summary-line-content:after {
                content: "";
                /* display: table; */
            }

            .thk-summary-bttn a{
                padding: 7px 20px;
                border: transparent;
                line-height: 30px;
                margin: 0;
                font-size: 13px;
                color: #575555;
                font-weight: 600;
                border-radius: 2px;
                background: #eeeded;
                text-decoration: none;
                border:1px solid rgba(158, 158, 158, 0.25);
            }
            .thk-summary-bttn a.red{
                background: #b70025 !important;
                color: #fff;
            }
            .table-pricing table{
                font-size: 10px ;
                width: 100%;
                margin: 5px auto;
            }
            .table-pricing table th{
                padding: 0 2px;
                color: #343333;
                height: 20px;
            }
            .table-pricing table td{
                padding:0 3px;
                color: #7d7c7c;
                /*white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis; */
                max-width: 120px;
                height: 20px;
            } 

            .table-annual table{
                font-size: 11px ;
                width: 97%;
                margin: 5px auto;
            }
            .table-annual table th{
                padding:0 3px;
                color: #343333;
                background: #e4e2e2;
                height: 23px;
            }
            .table-annual table td{
                padding:0 3px;
                color: #7d7c7c;
                /* white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis; */
                height: 21px;
            }
            .p-0{
                padding: 0;
            }
            #cc_Loader_Body_Appended {
                background: rgba(255,255,255, .5); 
                position: fixed; 
                top: 0; 
                left: 0; 
                right: 0; 
                bottom: 0; 
                width: 100%; 
                height: 100%; 
                z-index: 4;
            }

            /*CSS for Summary Page END*/

            .filter-container {
                position: absolute;
                margin: 0;
                padding: 8px;
                box-sizing: border-box;
                background: #ffffff;
                display: none;
                box-shadow: 0 0 3px 0 rgba(0, 0, 0, 0.4);
                top: 57px;
                right: 7px;
                width: 238px;
                z-index: 4;
                border-radius: 3px;
            }
            .filter-container::after {
                content: "";
                position: absolute;
                width: 0;
                height: 0;
                margin-left: -0.9em;
                top: 0px;
                left: 100%;
                box-sizing: border-box;
                border: 5px solid rgba(0, 0, 0, 0.23);
                transform-origin: 0 0;
                transform: rotate(136deg);
                box-shadow: -2px 2px 1px 0px rgba(0, 0, 0, 0.15);
                border-color: transparent transparent #ffffff #ffffff;
            }
            .filter-text{                
                border: 1px solid rgb(51, 51, 51);
                background: rgb(51, 51, 51);                
                border-radius: 50px;
                position: absolute;
                top: 24px;
                left: 160px;
                padding: 2px 14px; 
                text-decoration: none !important;
                color: #e0dcdc;
                font-size: 13px;
            }
            .filter-text a{                
                color: #e0dcdc !important;  
                text-decoration: none !important;
            }
            .filter-text.active{                
                background: #666;
                border: 1px solid #666;              
            }
            .filter-container-bttn{
                background: #f9859c;
                padding: 8px;
                border-radius: 3px;
                text-align: center;
                margin: 10px 0 0 0;
                cursor: pointer;
            }
            .filter-container-bttn a{
                color: #f5f3f3;
                font-weight: 700;
                text-decoration: none !important;
            }
            .filter-container-bttn:hover{
                background: #f75e7c;
            }
            
            .filter-label-color ul{
                display: flex;
                font-size: 11px;
                font-weight: 600;
                color: #666666;
            }
            .filter-label-color ul li{
                padding: 0 2px;
            }
            .filter-label-color ul li .blank-yetostart{
                color: #ebe8e8;
                font-size: 15px;
                vertical-align: middle;
            }
            .filter-label-color ul li .yellow-inprogress{
                color: #ffc004;
                font-size: 15px;
                vertical-align: middle;
            }
            .filter-label-color ul li .green-complete{
                color: #73bd5f;
                font-size: 15px;
                vertical-align: middle;
            }
            .part-table .tdborder-yetostart{
                border-left: 2px solid #ebe8e8;
            }
            .part-table .tdborder-inprogress{
                border-left: 2px solid #ffc004;
            }
            .part-table .tdborder-complete{
                border-left: 2px solid #73bd5f;
            }
            input[type="text"].textbox-newvalue {
                background: rgba(3, 169, 244, 0.13);
                border: 1px solid rgba(3, 169, 244, 0.47);
            }
            .select-newvalue{
                background: url(../assets/images/select-bg.png);         
                border: 1px solid rgba(3, 169, 244, 0.03);
                border-style: none;
            }
            .prepopulated-color{
                font-size: 12px;
                font-weight: 600;
                vertical-align: sub;
                right: 365px;
                position: absolute;
            }
            .prepopulated-color i{
                color: rgba(221, 239, 250, 1);
                font-size: 18px;
                vertical-align: inherit;
            }

        </style>
        <div id="THK_PROJECT">
            <div class="page" id="Second">
                <div class="page-content container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <form class="panel thk-body" id="exampleWizardFormContainer">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="pearls row row-bdernone thk-steps" style="width:100%">
                                            <div class="pearl-top pearl current col-md-1-9 col-p" id="planner_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" data-original-title="Planner" title="Planner">
                                                    <i class="material-icons">card_travel</i>
                                                </div>
                                                <span class="pearl-title">Planner</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="partname_icon" >
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" data-original-title="Part Name" title="Part Name">
                                                    <i class="material-icons">view_list</i>
                                                </div>
                                                <span class="pearl-title">Part Name</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="vehicle_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" data-original-title="Vehicle Information" title="Vehicle Information">
                                                    <i class="material-icons">directions_car</i>
                                                </div>
                                                <span class="pearl-title">Vehicle</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="supplier_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top " data-original-title="Supplier Information" title="Supplier Information">
                                                    <i class="material-icons">people</i>
                                                </div>
                                                <span class="pearl-title">Supplier</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="product_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" title="Product Information">
                                                    <i class="material-icons">settings</i>
                                                </div>
                                                <span class="pearl-title">Product</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="pricing_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top " data-original-title="Pricing Information" title="Pricing Information">
                                                    <i class="material-icons">local_play</i>
                                                </div>
                                                <span class="pearl-title">Pricing</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="application_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top " data-original-title="Application Rates/Allocation Rates" title="Application/Allocation">
                                                    <i class="material-icons">assignment</i>
                                                </div>
                                                <span class="pearl-title">Application/Allocation</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="volume_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" title="Volume">
                                                    <i class="material-icons">show_chart</i>
                                                </div>
                                                <span class="pearl-title">Volume</span>
                                            </div>
                                            <div class="pearl-top pearl col-md-1-9 col-p" id="preview_icon">
                                                <div class="pearl-icon" data-toggle="tooltip" data-placement="top" title="Preview and Save">
                                                    <i class="material-icons">insert_chart</i>
                                                </div>
                                                <span class="pearl-title">Preview and Save</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 thk--top-header" id="thk_header">
                                    <div class="col-md-3">
                                        <h2 style="font-size:20px; margin:3px; p-0">
                                            Planner -<span style="font-size:18px"> Vehicle Build ID</span>
                                        </h2>
                                    </div>
                                    <div class="col-md-6">
                                        <div style="display: inline-flex;position: absolute;z-index: 1;top:0px;">
                                            <label style="font-size: 14px;font-weight:600;margin-top:4px" class="control-label" for="inputUserNameOne">Please Select An OEM Group </label>&nbsp;&nbsp;
                                            <select class="form-control" id="oemGroup" name="oemSelect" placeholder="Select" style="width:300px;margin-top:-4px">
                                                <option value="" disabled selected>Select</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <span class="top-note">
                                            Disabled Fields are Auto Populated  <sup style="color: red"><large>*</large></sup>Mandatory
                                            Fields
                                        </span>
                                    </div>
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
                                                    <th>Platform</th>
                                                    <th>Program</th>
                                                    <th>Production Nameplate</th>
                                                    <th>Vehicle Build Region</th>
                                                    <th>S.O.P (MM-DD-YYYY)</th>
                                                    <th>E.O.P (MM-DD-YYYY)</th>
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
                                                    <h4>Part Names<span style="color:red">*</span></h4>
                                                </div>
                                                <div class="filter-label-color">
                                                    <ul>
                                                        <li><span class="mdi mdi-checkbox-blank blank-yetostart"></span>&nbsp;Yet To Start</li>
                                                        <li><span class="mdi mdi-checkbox-blank yellow-inprogress"></span>&nbsp;In Progress</li>
                                                        <li><span class="mdi mdi-checkbox-blank green-complete"></span>&nbsp;Complete</li>
                                                    </ul>
                                                </div>
                                                    <div id="thk_filters" class="filter-text" style="curson:pointer">
                                                        <a href="#"><span>Filters</span> 
                                                            <i class="mdi mdi-filter-outline"></i>
                                                        </a>
                                                    </div>
                                                    <div class="filter-container">
                                                        <div style="padding:0;font-size:12px;color:#212121;font-weight:400">
                                                            <div class="form-group" style="margin-bottom:3px">
                                                                <label for="">Supplier Name</label>
                                                                <select class="form-control" id="supplierfilter" style="font-size:12px;color:#212121;background: rgba(0,0,0,.05);border: rgba(0,0,0,1);">
                                                                        <option>All</option>
                                                                        <option>THK</option>
                                                                        <option>Competitor</option>
                                                                    </select>
                                                                </div>

                                                                <div class="form-group" style="margin-bottom:3px">
                                                                    <label for="">Planning Status</label>
                                                                    <select class="form-control" id="statusfilter" style="font-size:12px;color:#212121;background: rgba(0,0,0,.05);border: rgba(0,0,0,1);">
                                                                        <option>All</option>
                                                                        <option>Yet to start</option>
                                                                        <option>In progress</option>
                                                                        <option>Completed</option>
                                                                    </select>
                                                                </div>

                                                                <div class="form-group" style="margin-bottom:3px">
                                                                    <label for="">Part Type</label>
                                                                    <select class="form-control" id="typefilter" style="font-size:12px;color:#212121;background: rgba(0,0,0,.05);border: rgba(0,0,0,1);">
                                                                        <option>All</option>
                                                                        <option>New</option>
                                                                        <option>Existing</option>
                                                                    </select>
                                                                </div>
                                                                <div class="filter-container-bttn" id="filterbtn">
                                                                    <a href="#">OK</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    
                                                <div class="part-names scrollbar">
                                                    <div class="part-table">
                                                        <table class="table">
                                                            <tbody id="part" name="part">
                                                                <!-- <c:forEach var="display " items="${partName} ">
                                                                    <tr>
                                                                        <td>${display.value}</td>
                                                                    </tr>
                                                                    </br>
                                                                </c:forEach> -->
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                <!-- <div class="row hide">
                                    <div class="col-md-12">
                                        <h4 style="color: grey">
                                            ${oemGroup}
                                        </h4>
                                    </div>
                                </div> -->
                                <div class="" id="right_panel">
                                    <div class="wizard-content" id="exampleFormContainer">
                                        <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url0a" role="tabpanel">
                                            <div id="VBID">
                                                <div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="wizard-content no-padding" id="formid" action="urlSample">
                                                                <div class="p-0 m-top">
                                                                    <div class="row">
                                                                        <div class="col-md-4 col-md-offset-4">
                                                                            <div class="thk--home-wrap">
                                                                                <div class="form-group">
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
                                                                                            <div class="thk-datagrid">
                                                                                                <div class="datagrid" style="overflow-x: hidden;">
                                                                                                    <a id="export_btn" style="display:none; font-size: 25px;color: #337ab7;border-radius: 2px;padding: 3px;
                                margin-top: -11px; margin-left: 10px;cursor: pointer;" title="Excel">
                                <i class="mdi mdi-file-excel"></i></a>
                                                                                                    <table id="myVBTable">
                                                                                                        <thead>
                                                                                                            <tr>
                                                                                                                <th>Vehicle Build ID</th>
                                                                                                                <th>Mnemoic Vehicle Plant</th>
                                                                                                                <th>Design Parent</th>
                                                                                                                <th>OEM Group</th>
                                                                                                                <th>OEM</th>
                                                                                                                <th>Region</th>
                                                                                                                <th>Country</th>
                                                                                                                <th>Badge</th>
                                                                                                                <th>Platform</th>
                                                                                                                <th>Program</th>
                                                                                                                <th>Production Nameplate</th>
                                                                                                                <th>SOP </br>(YYYY-MM-DD)</th>
                                                                                                                <th>EOP </br>(YYYY-MM-DD)</th>
                                                                                                                <th>Planning Status</th>
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
                                                        <div class="row">
                                                            <div class="col-md-12">
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
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="wizard-content no-padding" id="partNameForm" method="post" action="/thk/inputScreen">
                                                                <div class="thk-inner-content p-0">
                                                                    <div class="row" style="position:relative; left: 20px;">
                                                                        <div class="col-md-12 p-0">
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
                                                                                                <th>Platform</th>
                                                                                                <th>Program</th>
                                                                                                <th>Production Nameplate</th>
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

                                                                        <!-- <button type="button" id="undo_redo_rightAll" class="btn btn-default btn-block">
<i class="material-icons">fast_forward</i>
</button> -->
                                                                        <button type="button" style="margin-top:100px;" id="undo_redo_rightSelected" class="btn btn-default btn-block">
                                                                            <i class="material-icons">keyboard_arrow_right</i>
                                                                        </button>
                                                                        <button type="button" id="undo_redo_leftSelected" class="btn btn-default btn-block">
                                                                            <i class="material-icons">keyboard_arrow_left</i>
                                                                        </button>
                                                                        <!--<button type="button" id="undo_redo_leftAll" class="btn btn-default btn-block">
<i class="material-icons">fast_rewind</i>
</button>-->

                                                                    </div>
                                                                    <div class="col-xs-3">
                                                                        <div class="thk-multi">
                                                                            <h4>Added Part Name</h4>
                                                                            <select id="undo_redo_to" style="height:310px;" class="form-control" size="10" multiple="multiple">
                                                                                <!-- <c:forEach var="display" items="${partById}">
                                                                                    <option value=" ${display.key}" name="toOption[]">
                                                                                        ${display.value}</option>
                                                                                </c:forEach> -->
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
                                            <div class="col-md-12 p-0">
                                                <div class="col-md-6 p-0">
                                                    <div class="thk--inner-heading">
                                                        <h2>Vehicle</h2>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <span class="prepopulated-color">
                                                        <i class="mdi mdi-checkbox-blank"></i>&nbsp;Prepopulated</span>
                                                    <span class="top-note">
                                                        Disabled Fields are Auto Populated &nbsp;&nbsp;<sup style="color: red"><large>*</large></sup>Mandatory
                                                        Fields
                                                    </span>
                                                </div>
                                            </div>

                                            <div class="row row-margin">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Part Name<sup style="color: red"><small style="font-size:14px">*</small></sup>
                                                        </label>
                                                        <input type="text" style="cursor: not-allowed; background: rgba(0,0,0,.05);" class="form-control form-control-yellow selectpartName" id="part_select" readonly required="required">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Part ID<sup style="color: red"><small style="font-size:14px;cursor:not-allowed"></small></sup>
                                                        </label>
                                                        <input type="text" style="cursor: not-allowed; background: rgba(0,0,0,.05);" class="form-control form-control-yellow" id="partId" readonly required="required">
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
                                                        <label class="control-label" for="inputUserNameOne">OEM<sup style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control form-control-yellow" id="oem" name="Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row row-margin">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Badge<sup
                                                                                                                      style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control" id="badge" name="Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Platform<sup style="color: red"><small style="font-size:14px"></small></sup>
                                                        </label> <input type="text" class="form-control" id="platfromFamily" name="Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Program<sup
                                                                                                                        style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control form-control-yellow" id="platfrom" name="Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Production Nameplate<sup                                                                                                                                     style="color: red"><small style="font-size:14px"></small></sup></label> <input type="text" class="form-control form-control-yellow" id="namePlate" name="Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row row-margin">
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label" for="inputUserNameOne">Vehicle Build Region<sup style="color: red"><small style="font-size:14px"></small></sup>
                                                        </label> <input type="text" class="form-control" id="regionName" name="Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label class="control-label " for="inputUserNameOne">Vehicle Build Country<sup style="color: red"><small style="font-size:14px "></small></sup>
                                                        </label> <input type="text" class="form-control" id="countryName" name=" Info Required" disabled required="required" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Vehicle SOP (MM-DD-YYYY) </label>
                                                        <div class="date" id="datepicker1">
                                                            <input class="form-control" type="text" data-date-format="mm-dd-yyyy" value="" id="sopVal" disabled required="required" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Vehicle EOP (MM-DD-YYYY) </label>
                                                        <div id="datepicker2" class="date">
                                                            <input class="form-control" type="text" data-date-format="mm-dd-yyyy" value="" id="eopVal" name="Info Required" disabled required="required" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row row-margin">
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label class="control-label curryear1" for="inputUserNameOne"></label>
                                                        <label class="control-label">	Volumes </label> <sup style="color: red"><small style="font-size:14px"></small></sup>
                                                        </label> <input type="text" class="form-control" id="year1Val" name="Info Required" disabled required="required" value="">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label class="control-label curryear2" for="inputUserNameOne"></label>
                                                    <label class="control-label">	Volumes </label><sup style="color: red"><small style="font-size:14px"></small></sup>
                                                    </label> <input type="text" class="form-control" id="year2Val" name="Info Required" disabled required="required" value="">
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="control-label curryear3" for="inputUserNameOne"></label>
                                                <label class="control-label">	Volumes </label> <sup style="color: red"><small style="font-size:14px"></small></sup>
                                                </label> <input type="text" class="form-control form-control-yellow" id="year3Val" name="Info Required" disabled required="required" value="">
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label class="control-label curryear4" for="inputUserNameOne"></label>
                                            <label class="control-label">	Volumes </label> <sup style="color: red"><small style="font-size:14px"></small></sup>
                                            </label> <input type="text" class="form-control form-control-yellow" id="year4Val" name="Info Required" disabled required="required" value="">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label class="control-label curryear5" for="inputUserNameOne"></label>
                                        <label class="control-label">	Volumes </label> <sup style="color: red"><small style="font-size:14px"></small></sup>
                                        </label> <input type="text" class="form-control form-control-yellow" id="year5Val" name="Info Required" disabled required="required" value="">
                                </div>
                                </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label class="control-label curryear6" for="inputUserNameOne"></label>
                                    <label class="control-label">	Volumes </label> <sup style="color: red"><small style="font-size:14px"></small></sup>
                                    </label> <input type="text" class="form-control form-control-yellow" id="year6Val" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="form-group hide">
                            <label class="control-label" for="inputUserNameOne"><sup                                                      style="color: red"><small></small></sup></label> 
                            <input type="hidden" class="form-control form-control-yellow" id="vbIdHidden" name="Info Required" disabled required="required" value="">
                        </div>

                        <div class="col-md-2">
                            <div class="form-group hide">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="regionNameHidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="countryNameHidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="sopHidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="eopHidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year1Hidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year2Hidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year3Hidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year4Hidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year5Hidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                        <div class="col-md-2 hide">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne"><sup
                                                                                         style="color: red"><small></small></sup></label> <input type="hidden" class="form-control form-control-yellow" id="year6Hidden" name="Info Required" disabled required="required" value="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wizard-pane thk-forms-label" id="exampleBillingOnel" url="url2" role="tabpanel">
                    <div class="col-md-12 p-0">
                        <div class="col-md-6 p-0">
                            <div class="thk--inner-heading">
                                <h2>Supplier</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <span class="prepopulated-color">
                                <i class="mdi mdi-checkbox-blank"></i>&nbsp;Prepopulated</span>
                            <span class="top-note">
                                Disabled Fields are Auto Populated &nbsp;&nbsp;<sup style="color: red"><large>*</large></sup>Mandatory
                                Fields
                            </span>
                        </div>
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
                                <input type="hidden" class="form-control" id="vbIdHidden_Supplier" value="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">
                                    <sup style="color: red"><small style="font-size:14px"></small></sup>
                                </label> <input type="hidden" class="form-control" id="partPlanId_Supplier" value="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="wizard-pane thk-forms-label" id="exampleGettingOne" url="url3" role="tabpanel">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <div class="thk--inner-heading">
                                <h2>Product</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <span class="prepopulated-color">
                                <i class="mdi mdi-checkbox-blank"></i>&nbsp;Prepopulated</span>
                            <span class="top-note">
                                Disabled Fields are Auto Populated &nbsp;&nbsp;<sup style="color: red"><large>*</large></sup>Mandatory
                                Fields
                            </span>
                        </div>
                    </div>
                    <div class="row row-margin">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Product
                                    Group<sup style="color: red"><small style="font-size:14px"></small></sup>
                                </label> <input type="text" style="cursor:not-allowed;" class="form-control" maxlength="1800" id="productGroupName" disabled readonly name="Info Required" value="">
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Product<sup
                                                                                                style="color: red"><small style="font-size:14px;"></small></sup></label>
                                <input type="text" style="cursor:not-allowed" class="form-control" maxlength="1800" id="productName" disabled readonly name="Info Required" value="">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Part
                                    Description<sup style="color: red"><small style="font-size:14px"></small></sup>
                                </label> <input type="text" class="form-control form-control-yellow" maxlength="1800" id="partDesc" name="Info Required" value="" disabled required="required">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Tech
                                    Level 1<sup style="color: red"><small style="font-size:14px">*</small></sup>
                                </label> <select class="form-control" id="techLevelOne" name="Info Required" required="required">
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
                                </label> <select class="form-control" id="techLevelTwo" name="Info Required" required="required">
                                <option></option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Housing
                                    Description<sup style="color: red"><small style="font-size:14px">*</small></sup>
                                </label> <select class="form-control" id="houseDesc" name="Info Required" required="required">
                                <option></option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">THK
                                    Part Number<sup style="color: red"><small style="font-size:14px"></small></sup>
                                </label> <input type="text" class="form-control" maxlength="30" id="thkPartName">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Customer
                                    Part Number<sup style="color: red"><small style="font-size:14px"></small></sup>
                                </label> <input type="text" class="form-control" maxlength="30" id="customerPartNo">
                            </div>
                        </div>
                    </div>
                    <div class="row row-margin">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Parts
                                    Per Vehicle<sup style="color: red"><small style="font-size:14px">*</small></sup>
                                </label> <select class="form-control" id="partsPerVehicle" name="Info Required" required="required">
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Probability
                                    Code<sup style="color: red"><small style="font-size:14px">*</small></sup>
                                </label> <select class="form-control" id="prob" name="Info Required" required="required">
                                <option></option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">Opportunity Pipeline THK<sup style="color: red"><small style="font-size:14px">*</small></sup>
                                </label> <select class="form-control" id="opportunityPipeline" name="Info Required" required="required">
                                <option></option>
                                </select>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">
                                    <sup style="color: red"><small></small></sup>
                                </label> <input type="hidden" class="form-control" value="" id="hiddenProductGroupNameId">
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="control-label" for="inputUserNameOne">
                                    <sup style="color: red"><small></small></sup>
                                </label> <input type="hidden" class="form-control" value="" id="vbIdHidden">
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
                    <div class="col-md-12 p-0">
                        <div class="col-md-6 p-0">
                            <div class="thk--inner-heading">
                                <h2>Pricing</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <span class="prepopulated-color">
                                <i class="mdi mdi-checkbox-blank"></i>&nbsp;Prepopulated</span>
                            <span class="top-note">
                                Disabled Fields are Auto Populated &nbsp;&nbsp;<sup style="color: red"><large>*</large></sup>Mandatory
                                Fields
                            </span>
                        </div>
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
                                    <th class="thprice">Price Change</th>
                                    <th class="thprice">Month/Years<sup style="color: red"><small style="font-size:14px">*</small></sup></th>
                                    <th class="thprice">Reason<sup style="color: red"><small style="font-size:14px">*</small></sup></th>
                                    <th class="thprice">Price Change Type</th>
                                    <th class="thprice">Change Value<sup style="color: red"><small style="font-size:14px">*</small></sup></th>
                                    <th class="thprice">Price Incl.Price Change</th>
                                    <th class="thprice">Variance</th>
                                    <th class="thprice">Remove</th>
                                </tr>
                            </thead>
                            <tbody id="myTable">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="wizard-pane thk-forms-label" id="exampleBillingOne" url="url5" role="tabpanel">
                <div class="col-md-12 p-0">
                    <div class="col-md-6 p-0">
                        <div class="thk--inner-heading">
                            <h2>Application/Allocation Rate and RFQ</h2>
                        </div>
                    </div>
                    <div class="col-md-6">
                            <span class="prepopulated-color">
                                <i class="mdi mdi-checkbox-blank"></i>&nbsp;Prepopulated</span>
                            <span class="top-note">
                                Disabled Fields are Auto Populated &nbsp;&nbsp;<sup style="color: red"><large>*</large></sup>Mandatory
                                Fields
                            </span>
                        </div>
            </div>
            <div class="row row-margin">
                <div class="thk--inner-heading no-border">
                    <h4>Application Rate %</h4>
                    <span style="font-size: 10px;margin-left: 15px;color: #b70025;"> Describes the number of vehicles, divided by complete volume of vehicles equipped with a specific part
                        e.g. : 75000 vehicles out of 125000 vehicles use a specific SBJ: 75000/125000=0,6 --> application rate = 60 %</span>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear1" for="inputUserNameOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label>
                        <input type="number" class="form-control calcpercentage checksymbol" id="applicationRateYear1" value="" placeholder="% between 0-100" required="required">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear2" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label>
                        <input type="number" class="form-control calcpercentage checksymbol" id="applicationRateYear2" value="" placeholder="% between 0-100"required="required">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear3" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label>
                        <input type="number" class="form-control calcpercentage checksymbol" id="applicationRateYear3" value="" placeholder="% between 0-100" required="required">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear4" for="inputUserNameOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="applicationRateYear4" value="" placeholder="% between 0-100" required="required">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear5" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="applicationRateYear5" value="" placeholder="% between 0-100" required="required">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear6" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="applicationRateYear6" value="" placeholder="% between 0-100" required="required">
                    </div>
                </div>
            </div>
            <div class="row row-margin">
                <div class="thk--inner-heading no-border">
                    <h4>Allocation Rate %</h4>
                    <span style="font-size: 10px;margin-left: 15px;color: #b70025;">Describes the number of vehicles, divided by the complete volume of vehicles supplied by a specific supplier e.g. : 75000 vehicles out of 125000 vehicles are supplied by THK: 75000/125000=0,6 --> allocation rate = 60 %	</span>						
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear1" for="inputUserNameOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="allocationRateYear1" placeholder="% between 0-100" required="required" value="">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear2" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="allocationRateYear2" placeholder="% between 0-100" required="required" value="">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear3" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="allocationRateYear3" placeholder="% between 0-100" required="required" value="">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear4" for="inputUserNameOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="allocationRateYear4" placeholder="% between 0-100" required="required" value="">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear5" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="allocationRateYear5" placeholder="% between 0-100" required="required" value="">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label curryear6" for="inputPasswordOne"><sup style="color: red"><small style="font-size:14px;cursor:not-allowed">*</small></sup></label> <input type="number" class="form-control calcpercentage checksymbol" id="allocationRateYear6" value="" placeholder="% between 0-100" required="required" min="0" data-fv-greaterthan-inclusive="true" data-fv-greaterthan-message=" " max="100" data-fv-lessthan-inclusive="false"data-fv-lessthan-message=" "  >
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
                        <div class="input-group date" style="width: 97%">
                            <input class="form-control" type="date" id="quotedDate" data-date-format="mm-dd-yyyy" />
                            <!-- <span style="padding: 0px;" class="input-group-addon">
<i class="material-icons">date_range</i>
</span> -->
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Award (RFQ) date</label>
                        <div class="input-group date" style="width: 97%">
                            <input class="form-control" type="date" data-date-format="mm-dd-yyyy" id="awardDate" /> <!-- <span style="padding: 0px;" class="input-group-addon"><i class="material-icons">date_range</i></span> -->
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label" for="inputPasswordOne"><sup style="color: red"><small></small></sup></label> <input type="hidden" class="form-control Percent" id="vbIdHidden" value="" name="Info Required" required="required">
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label class="control-label" for="inputPasswordOne"><sup style="color: red"><small></small></sup></label> <input type="hidden" class="form-control Percent" id="thkissueplanidhidden" name="Info Required" required="required">
                    </div>
                </div>
            </div>

        </div>
        <div class="wizard-pane thk-forms-label" id="exampleBillingtree" url="url6" role="tabpanel">
            <div class="thk--inner-heading">
                <h2>Annual Product Volume / Sales</h2>														
            </div>
            <div style="float: right;margin-top:-10px;font-size: 13px;padding-right: 105px;color:#b70025;font-weight:600">
                Annual Volume and Sales is in USD $
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
                                        <td class="curryear1"></td>
                                        <td><input type="text" class="form-control" id="multifun" name="Info Required" disabled required="required"></td>
                                        <td><input type="text" class="form-control" id="sales1" name="Info Required" disabled required="required"></td>

                                    </tr>
                                    <tr class="alt">
                                        <td class="curryear2"></td>
                                        <td><input type="text" class="form-control" id="multifun2" name="Info Required" disabled required="required"></td>
                                        <td><input type="text" class="form-control" id="sales2" name="Info Required" disabled required="required"></td>

                                    </tr>
                                    <tr>
                                        <td class="curryear3"></td>
                                        <td><input type="text" class="form-control" id="multifun3" name="Info Required" disabled required="required"></td>
                                        <td><input type="text" class="form-control" id="sales3" name="Info Required" disabled required="required"></td>

                                    </tr>
                                    <tr>
                                        <td class="curryear4"></td>
                                        <td><input type="text" class="form-control" id="multifun4" name="Info Required" disabled required="required"></td>
                                        <td><input type="text" class="form-control" id="sales4" name="Info Required" disabled required="required"></td>

                                    </tr>
                                    <tr>
                                        <td class="curryear5"></td>
                                        <td><input type="text" class="form-control" id="multifun5" name="Info Required" disabled required="required"></td>
                                        <td><input type="text" class="form-control" id="sales5" name="Info Required" disabled required="required"></td>

                                    </tr>
                                    <tr>
                                        <td class="curryear6"></td>
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
        <!-- <div class="wizard-pane thk-forms-label" id="exportBill" role="tabpanel">
            <div>
                <button class="btn btn-primary downloadbtn" style="box-shadow: 0 3px 0 0 #9b0624;background-color: #b70025; border-color: #b70025;">
                    <i aria-hidden="true"></i>Download Data
                </button>
            </div>
        </div> -->
        </div>
    </div>
</div>
</div>
</form>
</div>
<!-- pearl row -->
</div>
</div>
</div>
<div class="overlay" id="summarypage" style="display:none">
    <div class="overlay-container">   
        <div class="thk-summary-header">
            <!-- <button type="button" class="close" data-dismiss="modal">&times;</button>                        
<span style="position: absolute;color: white;right: 15px;top: 9px;font-size: 23px;">
<i class="mdi mdi-close-circle"></i></span>  -->
            <h4>Summary Details</h4>                        
        </div>

        <div class="thk-container-summary">
            <div class="thk-summary-body">
                <!-- ********** SUMMARY CONTAINER ********** -->
                <div class="thk-summary-line"> 
                    <div class="row">
                        <div class="col-md-12">                                        
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="thk-summary-line">
                                        <div class="thk-summary-line-block">
                                            <div class="thk-summary-line-icon thk-summary-line-icon-one"></div>
                                            <div class="thk-summary-line-content">
                                                <h5>Vehicle</h5>
                                                <div class="thk-summary-line-content-box">
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Part Name</span>
                                                            <label id="summary_part_name"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Part ID</span>
                                                            <label id="summary_part_id"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>OEM Group</span>
                                                            <label id="summary_oemgroup"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>OEM</span>
                                                            <label id="summary_oem"></label>
                                                        </div>
                                                    </div>

                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Badge</span>
                                                            <label id="summary_badge"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Platform</span>
                                                            <label id="summary_platform"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Program</span>
                                                            <label id="summary_program"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Production Nameplate</span>
                                                            <label id="summary_production_nameplate"></label>
                                                        </div>
                                                    </div>

                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Vehicle Build Region</span>
                                                            <label id="summary_vehicle_build_region"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Vehicle Build Country</span>
                                                            <label id="summary_vehicle_build_country"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Vehicle SOP</span>
                                                            <label id="summary_vehicle_sop"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Vehicle EOP</span>
                                                            <label id="summary_vehicle_eop"></label>
                                                        </div>
                                                    </div>

                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2017 Volumes</span>
                                                            <label id="summary_1year_volume"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2018 Volumes</span>
                                                            <label id="summary_2year_volume"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2019 Volumes</span>
                                                            <label id="summary_3year_volume"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2020 Volumes</span>
                                                            <label id="summary_4year_volume"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2021 Volumes</span>
                                                            <label id="summary_5year_volume"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2022 Volumes</span>
                                                            <label id="summary_6year_volume"></label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                        <div class="thk-summary-line-block">
                                            <div class="thk-summary-line-icon thk-summary-line-icon-two"></div>
                                            <div class="thk-summary-line-content">
                                                <h5>Supplier</h5>
                                                <div class="thk-summary-line-content-box" style="height:90px">
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Supplier</span>
                                                            <label id="summary_supplier"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Supplier Plant</span>
                                                            <label id="summary_supplier_plant"> </label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Ship To</span>
                                                            <label id="summary_ship_to"> </label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Sold To</span>
                                                            <label id="summary_sold_to"> </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                                 


                                        <div class="thk-summary-line-block">
                                            <div class="thk-summary-line-icon thk-summary-line-icon-three"></div>
                                            <div class="thk-summary-line-content">
                                                <h5>Product</h5>
                                                <div class="thk-summary-line-content-box">
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Product Group</span>
                                                            <label id="summary_product_group"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Product</span>
                                                            <label id="summary_product"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Part Description</span>
                                                            <label id="summary_part_description"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Tech Level 1</span>
                                                            <label id="summary_tech_level_1"></label>
                                                        </div>
                                                    </div>

                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Tech Level 2</span>
                                                            <label id="summary_tech_level_2"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Housing Description</span>
                                                            <label id="summary_housing_description"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>THK Part Number</span>
                                                            <label id="summary_thk_part_number"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Customer Part Number</span>
                                                            <label id="summary_customer_part_number"></label>
                                                        </div>
                                                    </div>

                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Parts Per Vehicle</span>
                                                            <label id="summary_parts_per_vechicle"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Probability Code</span>
                                                            <label id="summary_probability_code"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Opportunity Pipeline THK</span>
                                                            <label id="summary_opportunity_pipeline_thk"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Part Description Long</span>
                                                            <label id="summary_part_description_long"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                    </div>                                            
                                </div>                                            
                            </div>

                            <!-- ============ SECOND DIV ============-->                                        
                            <div class="col-md-6">  
                                <div class="row">   
                                    <div class="thk-summary-line">                                        
                                        <div class="thk-summary-line-block">
                                            <div class="thk-summary-line-icon thk-summary-line-icon-four"></div>
                                            <div class="thk-summary-line-content">
                                                <h5>Pricing</h5>
                                                <div class="thk-summary-line-content-box">
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Currency</span>
                                                            <label id="summary_currency"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Currency Format</span>
                                                            <label id="summary_currency_format"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>X-Rate</span>
                                                            <label id="summary_xrate"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Start Price LC</span>
                                                            <label id="summary_start_price_lc"></label>
                                                        </div>
                                                    </div>

                                                    <div class="row thk-summary-rowbottom table-pricing" style="max-height:200px;overflow-y:auto;width:100%;margin:0;height:200px">
                                                        <table class="table-bordered" id="summary_price_fulltable">
                                                            <tr>
                                                                <th>Price Change</th>
                                                                <th>Month/Years</th>
                                                                <th>Reason</th>
                                                                <th>Price Change Type</th>
                                                                <th>Change Value</th>
                                                                <th>Price Incl.Price Change</th>
                                                            </tr>

                                                            <tbody id="summary_pricing_table" style="height:50px;overflow-y:auto">

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                        
                                        <div class="thk-summary-line-block">
                                            <div class="thk-summary-line-icon thk-summary-line-icon-five"></div>
                                            <div class="thk-summary-line-content">
                                                <h5>Application/Allocation Rate and RFQ</h5>
                                                <div class="thk-summary-line-content-box">
                                                    <span style="color:#6a0101;margin-bottom:3px">Application Rate %</span>
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2017</span>
                                                            <label id="summary_application_2017"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2018</span>
                                                            <label id="summary_application_2018"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2019</span>
                                                            <label id="summary_application_2019"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2020</span>
                                                            <label id="summary_application_2020"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2021</span>
                                                            <label id="summary_application_2021"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2022</span>
                                                            <label id="summary_application_2022"></label>
                                                        </div>
                                                    </div>

                                                    <span style="color:#6a0101;margin-bottom:3px">Allocation Rate %</span>
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2017</span>
                                                            <label id="summary_allocation_2017"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2018</span>
                                                            <label id="summary_allocation_2018"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2019</span>
                                                            <label id="summary_allocation_2019"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2020</span>
                                                            <label id="summary_allocation_2020"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2021</span>
                                                            <label id="summary_allocation_2021"></label>
                                                        </div>
                                                        <div class="col-md-2 col-sm-2">
                                                            <span>2022</span>
                                                            <label id="summary_allocation_2022"></label>
                                                        </div>
                                                    </div>

                                                    <span style="color:#6a0101;margin-bottom:3px">RFQ</span>
                                                    <div class="row thk-summary-rowbottom">
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Quote (RFQ) Date</span>
                                                            <label id="summary_quote_date"></label>
                                                        </div>
                                                        <div class="col-md-3 col-sm-3">
                                                            <span>Award (RFQ) date</span>
                                                            <label id="summary_award_date"></label>
                                                        </div>     
                                                    </div>
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                            <div class="col-md-12">
                                <div class="thk-summary-line-block">
                                    <div class="thk-summary-line-icon thk-summary-line-icon-six"></div>
                                    <div class="thk-summary-line-content">
                                        <h5>Annual Product Volume/Sales</h5>
                                        <div class="thk-summary-line-content-box">
                                            <div class="row thk-summary-rowbottom table-annual">
                                                <table class="table-bordered">
                                                    <!--
<tr>
<th>Year</th>
<th>Volume</th>
<th>Sales</th>
</tr>

<tr>
<td>2017</td>
<td id="summary_volume_2017"></td>
<td id="summary_sales_2018"></td>
</tr>
<tr>
<td>2018</td>
<td id="summary_volume_2018"></td>
<td id="summary_sales_2018"></td>
</tr>
<tr>
<td>2019</td>
<td id="summary_volume_2019"></td>
<td id="summary_sales_2019"></td>
</tr>
<tr>
<td>2020</td>
<td id="summary_volume_2020"></td>
<td id="summary_sales_2020"></td>
</tr>
<tr>
<td>2021</td>
<td id="summary_volume_2021"></td>
<td id="summary_sales_2021"></td>
</tr>
<tr>
<td>2022</td>
<td id="summary_volume_2022"></td>
<td id="summary_sales_2022"></td>
</tr>
-->
                                                    <tr>
                                                        <td><strong>Year</strong></td>
                                                        <td><strong>2017</strong></td>
                                                        <td><strong>2018</strong></td>
                                                        <td><strong>2019</strong></td>
                                                        <td><strong>2020</strong></td>
                                                        <td><strong>2021</strong></td>
                                                        <td><strong>2022</strong></td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>Volume</strong></td>
                                                        <td id="summary_volume_2017"></td>
                                                        <td id="summary_volume_2018"></td>
                                                        <td id="summary_volume_2019"></td>
                                                        <td id="summary_volume_2020"></td>
                                                        <td id="summary_volume_2021"></td>
                                                        <td id="summary_volume_2022"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><strong>Sales</strong></td>
                                                        <td id="summary_sales_2017"></td>
                                                        <td id="summary_sales_2018"></td>
                                                        <td id="summary_sales_2019"></td>
                                                        <td id="summary_sales_2020"></td>
                                                        <td id="summary_sales_2021"></td>
                                                        <td id="summary_sales_2022"></td>
                                                    </tr>


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

        <div class="thk-summary-footer">
            <div class="thk-summary-bttn pull-right">

                <a href="#" id="summary_cancel" class="">Go Back</a>                
                <a href="#" id="summary_submit" class="red">Submit</a>
                <!-- <a href="#" id="export_btn" class="red">Download Data</a> -->
            </div>
        </div>

    </div>
</div>
</div>
</div>

<script src="<c:url value='/assets/libraries/date-input-polyfill.js'/>"></script>
<script>
    Promise.all([
        loader.js('./../assets/libraries/formValidation/formValidation.min.js')
    ]).then(function() {
        Promise.all([
            loader.js('./../assets/js/datatables.min.js'),
            loader.js('./../assets/js/excel-builder.min.js'),
            loader.js('./../assets/bower_components/jszip/dist/jszip.js'),
            loader.js('./../assets/libraries/wizard/jquery-wizard.min.js'),
            loader.js('./../assets/js/toastr.js'),
            loader.js('./../assets/js/filesaver.js'),
            loader.js('./../assets/js/ccloader.min.js'),
            loader.js('./../assets/libraries/multi-select/multi-select.js'),
            loader.js('./../assets/libraries/currencyFormatter/autoNumeric-min.js'),
            loader.js('./../assets/libraries/formValidation/bootstrap.min.js'),

            loader.css('./../assets/css/datatables.min.css'),
            loader.css('./../assets/css/ccloader.min.css'),
            loader.css('./../assets/libraries/wizard/jquery-wizard.min.css'),
            loader.css('./../assets/css/toastr.min.css'),
            loader.css('./../assets/libraries/formValidation/formValidation.min.css'),
            loader.css('./../assets/libraries/multi-select/multi-select.min.css'),
            loader.css('./../assets/css/bootstrap.css'),


        ]).then(function() {
            $(function() {

                var baseURL = (location.protocol + '//' + location.host) + '/v2';
                var priceChangeObject=[];
                var updateflag=0;
                var completedpart=0;
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
                                } else if (c.name == 'itemValue') {
                                    var changeval = $(c).autoNumeric('get');
                                    cols.push(changeval);
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
                            "partPlanId": $('#partId').val(),
                            "vbId": $('#vbidhidden').val().trim()
                        }
                    }, function(e) {
                        for (var i = 0, j = item.length; i < j; i++) {
                            $("#" + item[i]).html("");
                            var key = item[i];
                            $.each(e.data[key], function(k) {
                                $("#THK_PROJECT #" + key).append('<option value="' + e.data[key][k].id + '">' + e.data[key][k].value + '</option>');
                                if(e.data[key][k].type == 'P'){
                                    $("#THK_PROJECT #" + key).css({"background": "url(../assets/images/select-bg.png)","border": "1px solid rgba(3, 169, 244, 0.03)","border-style":"none"})
                                }else{
                                    
                                }
                            });
                        }
                    }, function(e) {
                        console.error(e);
                    });
                }

                function bind_drop_downs_oemgroup_planner(item, url) {
                    $('#THK_PROJECT').ccPageLoader();
                    sendRequest(url, {
                        "data": {
                            
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
                        $('#THK_PROJECT').ccPageLoader(false);
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
                    $('#THK_PROJECT').ccPageLoader(false);
                    sendRequest(url, {
                        "data": {
                            "partPlanId": $('#partId').val(),
                            "vbId": $('#vbidhidden').val().trim()
                        }
                    }, function(e) {
                        for (var i = 0; i < textbox.length; i++) {
                            var dd_key = textbox[i];
                            $("#THK_PROJECT" + dd_key).val('');   
                             if(e.data)
                                $.each(e.data[dd_key], function(j) {
                                    if (dd_key == 'startPriceLc') {
                                        $("#THK_PROJECT #" + dd_key).autoNumeric('set', e.data[dd_key][j].value);
                                    }else {
                                        $("#THK_PROJECT #" + dd_key).val(e.data[dd_key][j].value);
                                    }
                                    if(e.data[dd_key][j].type == 'P'){
                                        $("#THK_PROJECT #" + dd_key).css({"background": "rgb(221, 239, 250)","border": "1px solid rgb(221, 239, 250)"})
                                    }else{
                                        console.log('text')
                                        $("#THK_PROJECT #" + dd_key).css({"background":"#fff","border":"1px solid #d4d7da"})
                                    }
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
                    vMin: '0.0000',
                    aSep: ".",
                    dGroup: "3",
                    aDec: ","
                });

                $(function() {
                    $("form").submit(function() { return false; });
                });

                $('#currencyFormat').on('change', function() {
                    if ($(this).val() == 1) {
                        $("input#startPriceLc").autoNumeric('update', {
                            vMin: '0.0000',
                            aSep: ",",
                            dGroup: "3",
                            aDec: "."
                        });
                        $('[name="itemValue"]').autoNumeric('update', {
                            vMin:'-999999999.0000',
                            aSep: ",",
                            dGroup: "3",
                            aDec: "."
                        });
                    } else {
                        $("input#startPriceLc").autoNumeric('update', {
                            vMin: '0.0000',
                            aSep: ".",
                            dGroup: "3",
                            aDec: ","
                        });
                        $('[name="itemValue"]').autoNumeric('update', {
                            vMin:'-999999999.0000',
                            aSep: ".",
                            dGroup: "3",
                            aDec: ","
                        });
                    }
                });

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
                function partfilter(supplierfilter,statusfilter,typefilter){
                    var row=$("#THK_PROJECT #part > tr");
                    var filterjson={};
                    var filterstr="tr";
                    if(typefilter.toLowerCase() != 'all'){
                        filterjson['typefilter']=typefilter.toLowerCase();
                    }
                    if(supplierfilter.toLowerCase() != 'all'){
                        filterjson['supplierfilter']=supplierfilter.toLowerCase();
                    }
                    if(statusfilter.toLowerCase() != 'all'){
                        filterjson['statusfilter']=statusfilter.toLowerCase();
                    }                     
                    console.log(filterjson);  
                    if(filterjson.hasOwnProperty('typefilter')){
                        filterstr+='[data-type="'+filterjson.typefilter+'"]'
                    }     
                    if(filterjson.hasOwnProperty('supplierfilter')){
                        filterstr+= '[data-supplier="'+filterjson.supplierfilter+'"]'
                    }
                    if(filterjson.hasOwnProperty('statusfilter')){
                        filterstr+='[data-status="'+filterjson.statusfilter+'"]'
                    }      
                    $.each(row,function(i,e){
                        $(e).hide();
                    }) 
                    filterstr='#THK_PROJECT #part > '+filterstr;
                    console.log(filterstr)
                    $(filterstr).show()
                    //$(j).parent().css('display','table-row')
                }
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
                        var variance = lastValue - lc;
                        $(this).find('input[name=variance]').val(parseFloat(variance).toFixed(4));
                        $(this).find('input[name=priceInclude]').val(parseFloat(lastValue).toFixed(4));
                    })
                }

                function handleDate() {
                    var minDate = $('#THK_PROJECT #sopVal').val();
                    var maxDate = $('#THK_PROJECT #eopVal').val();
                    minDate = moment(minDate, "DD-MM-YYYY").format("YYYY-MM-DD");
                    maxDate = moment(maxDate, "DD-MM-YYYY").format("YYYY-MM-DD");
                    $('#THK_PROJECT #myTable tr').each(function() {
                        var currentRecord = $(this).find('input[name="monthYear"]');
                        currentRecord.attr('min', minDate);
                        currentRecord.attr('max', maxDate);
                        var prev = $(this).prev();
                        minDate = currentRecord.val();
                        if (prev.length) {
                            prev.find('input[name="monthYear"]').attr('max', minDate);
                        }
                    })
                }

                $("#THK_PROJECT #startPriceLc").on('keyup', function(e) {
                    calculatePC();
                })

                $('#THK_PROJECT #btnAddRow').off('click').on('click', function(e) {
                    e.preventDefault();
                    if(completedpart==1){
                        updateflag=1;
                    }
                    
                    var c = $('#THK_PROJECT #myTable').find('tr').length + 1;
                    var a = $('#myTable tr:last-child td:first-child').html()
                    if ($("#THK_PROJECT #myTable").find("input[type='date']").last().val() == "") {
                        toastr.error("Please Select Date before Add New Price Change", "", {
                            "positionClass": "toast-top-right",
                            "preventDuplicates": true,
                            "timeOut": "3000"
                        });
                    } else {
                        if (typeof a == "undefined") {
                            var ele = $('<tr><td><input type="text"  value="PC-' + c + '" disabled readonly class="form-control test-control" style="width: 100%;" name="pricechange"/></td><td><div class="form-group" style="width:100%;margin-top:0px;"><input  class="form-control test-control" style="width:100%;" data-fv-date="true" data-fv-notempty="true" id="test" type="date" onkeydown="return false" data-fv-date-format="yyyy-mm-dd" required="required" name="monthYear"/></div></td><td><select class="form-control test-control" style="width: 100%;" data-fv-notempty="true" name="reason"><option id="1" value="1">Contractual</option><option id="2" value="2">Non Contractual Committed</option><option id="3" value="3">Non-Contractual Non Committed</option><option id="4" value="4">Material Inflation/Deflation</option><option id="5" value="5">Tooling, Amortization, Packaging, Others</option><option id="6" value="6">VAVE (Value Add Value Engineering)</option></select></td><td ><fieldset class="test-control field"><input type="radio" checked name="ChangeType' + c + '" data-type="abs">Absolute Value<br><input type="radio" name="ChangeType' + c + '" class="group12" data-type="percent">%Change</fieldset></td><td><div class="form-group" style="width:100%; margin-top: 0px;" ><input type="text" class="form-control test-control changeVal" maxlength="14"  name="itemValue" data-fv-notempty="true" required="required"></div></td><td><input type="number" class="form-control test-control" style="width: 100%; cursor:not-allowed;" name="priceInclude" disabled readonly/></td><td><input type="number" class="form-control test-control" style="width: 100%; cursor:not-allowed;" name="variance" disabled readonly/></td><td><i id="del_row" class="material-icons" style="cursor:pointer; margin-left: 40%;" aria-hidden="true">delete_forever</i></td></tr>');
                        } else {
                            var x = parseInt(a.replace(/[^0-9\.]/g, ''), 10);
                            var y = Math.round((x / 1000 - 0.1) + 1);
                            var ele = $('<tr><td><input type="text"  value="PC-' + y + '" disabled readonly class="form-control test-control" style="width: 100%;" name="pricechange"/></td><td><div class="form-group" style="width:100%;margin-top:0px;"><input  class="form-control test-control" style="width:100%;" data-fv-date="true" data-fv-notempty="true" id="test" type="date" onkeydown="return false" data-fv-date-format="yyyy-mm-dd" required="required" name="monthYear"/></div></td><td><select class="form-control test-control" style="width: 100%;" data-fv-notempty="true" name="reason"><option id="1" value="1">Contractual</option><option id="2" value="2">Non Contractual Committed</option><option id="3" value="3">Non-Contractual Non Committed</option><option id="4" value="4">Material Inflation/Deflation</option><option id="5" value="5">Tooling, Amortization, Packaging, Others</option><option id="6" value="6">VAVE (Value Add Value Engineering)</option></select></td><td ><fieldset class="test-control field"><input type="radio" checked name="ChangeType' + y + '" data-type="abs">Absolute Value<br><input type="radio" name="ChangeType' + y + '" class="group12" data-type="percent">%Change</fieldset></td><td><div class="form-group" style="width:100%; margin-top: 0px;" ><input type="text" class="form-control test-control changeVal" maxlength="14" name="itemValue" data-fv-notempty="true" required="required"></div></td><td><input type="number" class="form-control test-control" style="width: 100%; cursor:not-allowed;" name="priceInclude" disabled readonly/></td><td><input type="number" class="form-control test-control" style="width: 100%; cursor:not-allowed;" name="variance" disabled readonly/></td><td><i id="del_row" class="material-icons" style="cursor:pointer; margin-left: 40%;" aria-hidden="true">delete_forever</i></td></tr>');
                        }
                    }
                    var lastrecord = $('#THK_PROJECT #myTable').find('tr:last-child');
                    $('#THK_PROJECT #myTable').append(ele);
                    handleDate();
                    $('#THK_PROJECT #exampleFormContainer').formValidation('addField', $('[name="itemValue"]'));
                    $('#THK_PROJECT #exampleFormContainer').formValidation('addField', $('[name="monthYear"]'));
                    var format = $('#currencyFormat').val()
                    if (format == 1) {
                        $(ele).find('[name="itemValue"]').autoNumeric('init', {
                            vMin:'-999999999.0000',
                            aSep: ",",
                            dGroup: "3",
                            aDec: "."
                        });
                    } else {
                        $(ele).find('[name="itemValue"]').autoNumeric('init', {
                            vMin:'-999999999.0000',
                            aSep: ".",
                            dGroup: "3",
                            aDec: ","
                        });
                    }
                    ele.find('[name="monthYear"]').on('change', function() {
                        handleDate();
                    });
                    ele.find('[name="monthYear"]').on('mousewheel.disableScroll', function(e) {
                        e.preventDefault()
                    })
                    ele.find('[name="itemValue"]').on('keyup change', function(e) {
                        calculatePC();
                    });
                    ele.find("[name='ChangeType" + c + "']").on('click', function(e) {
                        calculatePC();
                    });
                    $("#THK_PROJECT #del_row").on('click', function(evt) {
                        e.preventDefault();
                        if(completedpart==1){
                            updateflag=1;
                        }
                        sendRequest("/thk/updatePricingTable", {
                            data: {
                                "planPartId": $("#THK_PROJECT #partId").val(),
                                "priceChangeCode": $(evt.target).closest('tr').children('td:first').find('input').val(),
                                "vbId": $("#THK_PROJECT #vbidhidden").val().trim()
                            }
                        }, function(e) {
                            $('#THK_PROJECT').ccPageLoader();
                            $(evt.target).parent().parent().remove();
                            $("#THK_PROJECT").find('small[data-fv-for="monthYear"]').hide();
                            calculatePC();
                            handleDate();
                            $('#THK_PROJECT').ccPageLoader(false)
                            toastr.success("Price Change deleted Successfully", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        }, function(e) {
                            console.error(e);
                        })
                    })
                });

                $('#THK_PROJECT .checksymbol').on('keypress',function(e){
                    if(e.keyCode== 45 || e.keyCode== 43)
                    {
                        e.preventDefault()
                    }
                })



                $("#THK_PROJECT #awardDate,#THK_PROJECT #quotedDate").on('keypress', function(e) {
                    e.preventDefault();
                });

                bind_drop_downs_oemgroup_planner(["oemGroup"], "/thk/getOemGroupByUser");

                $('#THK_PROJECT select#oemGroup').on('change', function(e) {
                    $('#THK_PROJECT').ccPageLoader();
                    sendRequest("/thk/filterPlanner", {
                        data: {
                            id: $(this).val()
                        }
                    }, function(e) {
                        $('#THK_PROJECT #export_btn').show();
                        $('#THK_PROJECT #myVBTable').DataTable().destroy();
                        $("#THK_PROJECT #tbodyTableDynamic").show();
                        if (typeof e.data !== 'undefined') {
                            var tbody = '';
                            var thead = '';
                            $.each(e.data, function(i, k) {
                                thead += '';
                                tbody += '<tr><td style="padding-left:50px;"><label class="radio-inline"><input ' + ((k.activeFlagPlanner.id == 'N') ? ("disabled") : ("")) + ' type="radio" name="radiobutton" id="vbidRadio"> ' +
                                    k.vbIdPlanner.id +
                                    '</label></td><td>' +
                                    k.mnemoicVehiclePlantPlanner.value +
                                    '</td><td >' +
                                    k.designParentPlanner.value +
                                    '</td><td>' +
                                    k.oemGroupPlanner.value +
                                    '</td><td>' +
                                    k.oemPlanner.value +
                                    '</td><td>' +                                        
                                    k.regionNamePlanner.value +
                                    '</td><td>' +                                        
                                    k.countryNamePlanner.value +
                                    '</td><td>' +                                        
                                    k.badgePlanner.value +
                                    '</td><td>' +
                                    k.platformFamilyPlanner.value +            
                                    '</td><td>' +
                                    k.platformPlanner.value +
                                    '</td><td>' +
                                    k.namePlatePlanner.value +
                                    '</td><td>' +
                                    k.vbEopPlanner.value +
                                    '</td><td>' +
                                    k.vbSopPlanner.value +
                                    '</td><td><select id="planstatus" class=""><option value="1" ' + ((k.vbidPlanningPlanner.value == '1') ? ("selected") : ("")) + '>Yet to Start</option><option value="2" ' + ((k.vbidPlanningPlanner.value == '2') ? ("selected") : ("")) + '>In Progress</option><option value="3" ' + ((k.vbidPlanningPlanner.value == '3') ? ("selected") : ("")) + '>Planned</option></select></td><td><select id="status" class="state"><option value="Y" ' + ((k.activeFlagPlanner.id == 'Y') ? ("selected") : ("")) + '>Keep</option><option value="N" ' + ((k.activeFlagPlanner.id == 'N') ? ("selected") : ("")) + '>Exclude</option></select></td></tr>';
                                '</td><td></td></tr>';
                            });
                            $("#THK_PROJECT #tbodyTableDynamic").html(tbody);
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
                            $("#THK_PROJECT #vbidRadio").on('change',function(e){
                                var vbidData=$($(e.target).parent().parent()).siblings();
                                var tr = '<tr><td class="thbgcolor">' + $(e.target).parent().text().trim() + '</td><td class="thbgcolor">' + vbidData[1].textContent+ '</td><td class="thbgcolor">' + vbidData[2].textContent + '</td><td class="thbgcolor">' + vbidData[3].textContent + '</td><td class="thbgcolor">' + vbidData[4].textContent + '</td><td class="thbgcolor">' + vbidData[5].textContent + '</td><td class="thbgcolor">' + vbidData[6].textContent + '</td><td class="thbgcolor">' + vbidData[7].textContent + '</td></tr>'
                                    $("#THK_PROJECT  #tbodyTableDynamic2").html(tr)
                            })
                            $("#THK_PROJECT #planstatus").on('change', function(e) {
                                sendRequest("/thk/vbidStatusPlanner", {
                                    data: {
                                        vbId: $($(e.target).parent().siblings()[0]).find('label').text(),
                                        statusId: $(e.target).val()
                                    }
                                }, function(evt) {
                                    console.log("VBID"+$($(e.target).parent().siblings()[0]).find('label').text())
                                    console.log("statusId"+$(e.target).val())

                                }, function(e) {
                                    console.error(e)
                                })
                            })
                            $(".state").on('change', function(e) {
                                $(e.target).parent().siblings(':first').find('input').prop('checked', false);
                                $(e.target).parent().siblings(':first').find('input').attr('disabled', ((e.target.value == 'Y') ? false : true))
                            })
                            $("#THK_PROJECT #myVBTable").dataTable({
                                "ordering": true,
                                "filter": true,
                                "paging": true,
                                "info": true,
                                "scrollX": false,
                                "destroy": true,
                                "scrollY": false,
                                "retrieve": true,
                                "language": {
                                    "lengthMenu": 'Display <select>' +
                                    '<option value="5">5</option>' +
                                    '<option value="10">10</option>' +
                                    '<option value="15">15</option>' +
                                    '<option value="20">20</option>' +
                                    '<option value="25">25</option>' +
                                    '<option value="-1">All</option>' +
                                    '</select> records'
                                }
                            });
                            $("#THK_PROJECT .dataTables_scrollBody").css({"position": "relative","overflow": "initial", "width": "100%"})
                            $("#THK_PROJECT .dataTables_scrollHead").css({"overflow": "initial","position": "relative","border": "0px","width": "100%"})
                            $("#THK_PROJECT .dataTables_scroll").css({"overflow": "auto"})
                        }
                        $('#THK_PROJECT').ccPageLoader(false);
                    }, function(e) {
                        console.error(e);
                    })
                })																														
                $('#THK_PROJECT #undo_redo').multiselect({
                    rightSelected: '#undo_redo_rightSelected',
                    rightAll: '#undo_redo_rightAll',
                    leftSelected: '#undo_redo_leftSelected',
                    leftAll: '#undo_redo_leftAll',
                    afterMoveToRight: function(Multiselect, $options, event, silent, skipStack) {
                        var button = $($options.context.activeElement).attr('id');
                        if (button == 'undo_redo_rightSelected') {
                            var data = {
                                "data": {}
                            };
                            var aa = [];
                            $.each(event, function(i, e) {
                                aa.push(e.value);
                            })
                            data.data["partId"] = aa;
                            data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim()
                            sendRequest("/thk/activeFlagAddedPartUpdateForAdd", data, function(e) {}, function(e) {
                                console.error(e);
                            });
                        } else if (button == 'undo_redo_rightAll') {
                            var data = {
                                "data": {}
                            };
                            var aa = [];
                            $.each(event, function(i, e) {
                                aa.push(e.value);
                            })
                            data.data["partId"] = aa;
                            data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim()
                            sendRequest("/thk/activeFlagAddedPartUpdateForAdd", data, function(e) {}, function(e) {
                                console.error(e);
                            });
                        }
                    },
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
                            data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim()
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
                            data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim()
                            sendRequest("/thk/activeFlagAddedPartUpdate", data, function(e) {}, function(e) {
                                console.error(e);
                            });
                        }
                    }
                });

               // bind_child_drop_downs_PartId('part_select', ["partId"], ["partPlanId_Supplier"], "/thk/planPartId");
                bind_child_drop_downs_productName('part_select', ["productName"], ["productGroupName"], "/thk/productName","/thk/productGroupName");
                bind_child_drop_downs_FxRate('currency', ["xRate"], "/thk/xRate");
                var thk_wizard = $("#THK_PROJECT #exampleWizardFormContainer");

                thk_wizard.wizard({
                    cacheContent: false,
                    step: ".steps .step, .pearls .pearl",
                    templates: {
                        buttons: function() {
                            var options = this.options;                                    
                            /*


href="" removed click added   luish 
*/

                            return '<div class="thk--buttons-footer" id="thk_footer"><div class="wizard-buttons">' +
                                '<a class="btn btn-primary"  data-wizard="back" role="button"><i class="material-icons" >arrow_back</i>' + options.buttonLabels.back + '</a>' +
                                '<a  class=" btn btn-primary pull-right"    data-wizard="next" role="button">' + options.buttonLabels.next + '<i class="material-icons">arrow_forward</i></a>' +
                                '<a style="box-shadow: 0 3px 0 0 rgb(183, 0, 37);background-color: #b70025;border-color: rgb(183, 0, 37);" class="btn btn-success btn-outline pull-right"  data-wizard="finish" role="button">' + options.buttonLabels.finish + '</a>' +
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
                    keyboard: false,
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
                                        stringLength: {
                                            max: 5,
                                            message: 'Digit limit Exceeded'
                                        }
                                    }
                                },
                                'part_id': {
                                    selector: '.selectpartId',
                                    validators: {
                                        notEmpty: {
                                            message: 'Please select any Part Name'
                                        }
                                    }
                                },
                                'part_select': {
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
                                },
                                'partnamevalue': {
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
                            $('#THK_PROJECT').ccPageLoader();
                            $("#THK_PROJECT #tableeop").css('display','none');
                            $("#THK_PROJECT #tablesop").css('display','none');
                            a = [];
                            $.each($("#THK_PROJECT #tbodyTableDynamic").find('input:checked').parents('tr').find('td'), function(i, k) {
                                a.push($(k).text());
                            });
                            if ($("#THK_PROJECT #myVBTable").find('[type=radio]').is(':checked')) {
                                $('#THK_PROJECT #vbidhidden').val(a[0]);
                                $('#THK_PROJECT #designplant').val(a[2]);
                                $('#THK_PROJECT #oemgrouphidden').val(a[3]);
                                $('#THK_PROJECT #oemhidden').val(a[4]);
                                $('#THK_PROJECT #badgehidden').val(a[5]);
                                $('#THK_PROJECT #platformfamilyhidden').val(a[6]);
                                $('#THK_PROJECT #platformhidden').val(a[7]);
                                $('#THK_PROJECT #nameplatehidden').val(a[8]);
                                sendRequest('/thk/partName', {
                                    data: {
                                         "vbId":$("#THK_PROJECT #vbidhidden").val().trim()
                                    }
                                }, function(e) {            
                                    $("#THK_PROJECT #undo_redo,#THK_PROJECT #undo_redo_to,#THK_PROJECT #part").empty();
                                    // var tr = '<tr><td class="thbgcolor">' + e.data[1][0] + '</td><td class="thbgcolor">' + e.data[1][1] + '</td><td class="thbgcolor">' + e.data[1][2] + '</td><td class="thbgcolor">' + e.data[1][3] + '</td><td class="thbgcolor">' + e.data[1][4] + '</td><td class="thbgcolor">' + e.data[1][5] + '</td><td class="thbgcolor">' + e.data[1][6] + '</td><td class="thbgcolor">' + e.data[1][7] + '</td></tr>'
                                    // $("#THK_PROJECT  #tbodyTableDynamic2").html(tr)
                                    // $("#THK_PROJECT #input_tbody").html(tr);
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
                                    $('#THK_PROJECT').ccPageLoader(false);
                                }, function(e) {
                                    console.error(e);
                                })
                                $("#THK_PROJECT #thk_header").hide();
                                $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('select#undo_redo'));
                                $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('select#undo_redo_to'));
                            } else {
                                var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
                                x.goTo(0);
                                $('#THK_PROJECT').ccPageLoader(false);
                                toastr.error("Please select Vehicle Build Id from Table", "Index", {
                                    "positionClass": "toast-top-right",
                                    "preventDuplicates": true,
                                    "timeOut": "3000"
                                });
                            }
                        } else if (to.index == '2') {
                            $('#THK_PROJECT #thk_filters').off('click').on('click',function(e){
                                console.log('next')
                                $('.filter-container').toggle();
                            })
                            $('#THK_PROJECT #thk_filters').css('cursor','pointer')
                            
                            var opt = [];
                            $("#THK_PROJECT #undo_redo_to option").each(function() {
                                opt.push($(this).val())
                            });
                            if (opt.length) {
                                $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").show();
                                $("#THK_PROJECT #thk_footer").css('margin-top', '40px');
                                $("#THK_PROJECT #right_panel").removeClass("col-md-12");
                                $("#THK_PROJECT #right_panel").addClass("col-md-1-80");
                                $("#THK_PROJECT #inc_height").addClass("rowheight");
                                $("#THK_PROJECT #part").empty();
                                $("#THK_PROJECT #thkPartName,#THK_PROJECT #customerPartNo,#THK_PROJECT #partDescLong,#THK_PROJECT #partId,#THK_PROJECT #part_select,#THK_PROJECT #startPriceLc").val('');
                                // sendRequest("/thk/saveParts", {
                                //     data:{
                                //         "vbId":$("#THK_PROJECT #vbidhidden").val().trim(),
                                //         "addParts":opt
                                //     }},function(e){

                                //     },function(e){})
                                sendRequest("/thk/displayVehicleData", {
                                    data: {
                                        "vbId":$("#THK_PROJECT #vbidhidden").val().trim(),
                                        "partPlanId":$('#partId').val(),
                                        "partIds":opt
                                    }
                                }, function(e) {
                                   // $.each(e.data[18].partNames, function(i, j) {
                                        //$("#THK_PROJECT #part").append("<tr><td class='tdborder-inprogress' style='padding-left:10px' data-id='" + (i + 1) + "'>" + this.value + "</td><td><input type='radio' name='partnamevalue' value=" + this.id + " style='float:right'/></td></tr></br>")
                                    $('#THK_PROJECT').ccPageLoader(false);
                                    $.each(e.data.partName, function(i, j) {
                                        var partStatus;
                                        if(j.partStatus.toLowerCase() == 'completed'){
                                            partStatus='complete';
                                        }else if(j.partStatus.toLowerCase() == 'in progress'){
                                            partStatus='inprogress';
                                        }else{
                                            partStatus= 'yetostart'
                                        }
                                        $("#THK_PROJECT #part").append("<tr data-status='"+this.partStatus.toLowerCase()+"' data-type='"+this.partType.toLowerCase()+"' data-supplier='"+this.supplierName.toLowerCase()+"'><td class='tdborder-"+partStatus+"' style='padding-left:10px' data-status='"+this.partStatus+"' data-type='"+this.partType+"' data-supplier='"+this.supplierName+"' data-id='" + (i + 1) + "'>" + this.partName + "</td><td><input type='radio' name='partnamevalue' value=" + this.partId + " style='float:right'/></td></tr></br>")
                                    });
                                    $("#THK_PROJECT .curryear1").text(Number(e.data.planYearVehicle[0].value));
                                    $("#THK_PROJECT .curryear2").text(Number(e.data.planYearVehicle[0].value)+1);
                                    $("#THK_PROJECT .curryear3").text(Number(e.data.planYearVehicle[0].value)+2);
                                    $("#THK_PROJECT .curryear4").text(Number(e.data.planYearVehicle[0].value)+3);
                                    $("#THK_PROJECT .curryear5").text(Number(e.data.planYearVehicle[0].value)+4);
                                    $("#THK_PROJECT .curryear6").text(Number(e.data.planYearVehicle[0].value)+5);
                                    $("#part").find("input").on("click", function(e) {
                                        console.log('hello')
                                        var ele = $(this).parents("tr").find("td:first-child");
                                        var chck_val = $(this).parents("tr").find("input").val()
                                        $("#part_select").val(ele.text());
                                        $("#part_select").attr("value", chck_val);
                                        sendRequest("/thk/planPartId", {
                                            data: {
                                                id: chck_val,
                                                vbId: $("#THK_PROJECT #vbidhidden").val().trim()
                                            }
                                        }, function(e) {
                                            if(e.data.PartPlanId[0].value.toLowerCase()=='complete planned'){
                                                completedpart=1;
                                            }else{
                                                completedpart=0;
                                            }

                                            $("#THK_PROJECT #partId").val(e.data.PartPlanId[0].id);
                                            $("#THK_PROJECT #partId").parent().removeClass("has-error");
                                            $("#THK_PROJECT #partDesc").val(e.data.partDesc[0].value);
                                            $("#THK_PROJECT #productName").val(e.data.productName[0].value);
                                        $("#THK_PROJECT #" + "productName").attr("thkproductnamepid", e.data.productName[0].id);
                                        $("#THK_PROJECT #" + "productGroupName").val(e.data.productGroupName[0].value);

                                            }, function(e) {
                                            console.error(e)
                                        })
                                        $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $($('input#part_select')));
                                        $('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $($('input#partId')));
                                    });                                  
                                    $("#THK_PROJECT #oemGroup_screen2").val(e.data.oemGroupVehicle[0].value)
                                    $("#THK_PROJECT #oemGroup_screen2")[0].setAttribute("hiddenId", e.data.oemGroupVehicle[0].id)
                                    $("#THK_PROJECT #oem").val(e.data.oemNameVehicle[0].value)
                                    $("#THK_PROJECT #oem")[0].setAttribute("hiddenId", e.data.oemNameVehicle[0].id)
                                    $("#THK_PROJECT #badge").val(e.data.badgeNameVehicle[0].value)
                                    $("#THK_PROJECT #badge")[0].setAttribute("hiddenId", e.data.badgeNameVehicle[0].id)
                                    $("#THK_PROJECT #platfromFamily").val(e.data.platFormFamilyVehicle[0].value)
                                    $("#THK_PROJECT #platfromFamily")[0].setAttribute("hiddenId", e.data.platFormFamilyVehicle[0].id)
                                    $("#THK_PROJECT #platfrom").val(e.data.platformVehicle[0].value)
                                    $("#THK_PROJECT #platfrom")[0].setAttribute("hiddenId", e.data.platformVehicle[0].id)
                                    $("#THK_PROJECT #namePlate").val(e.data.namePlateVehicle[0].value)
                                    $("#THK_PROJECT #namePlate")[0].setAttribute("hiddenId", e.data.namePlateVehicle[0].id)
                                    $("#THK_PROJECT #regionName").val(e.data.regionNameVehicle[0].value)
                                    $("#THK_PROJECT #regionName")[0].setAttribute("hiddenId", e.data.regionNameVehicle[0].id)
                                    $("#THK_PROJECT #countryName").val(e.data.countryNameVehicle[0].value)
                                    $("#THK_PROJECT #countryName")[0].setAttribute("hiddenId", e.data.countryNameVehicle[0].id)
                                    $("#THK_PROJECT #sopVal").val(e.data.sopVehicle[0].value)
                                    $("#THK_PROJECT #sopVal")[0].setAttribute("hiddenId", e.data.sopVehicle[0].id)
                                    $("#THK_PROJECT #eopVal").val(e.data.eopVehicle[0].value)
                                    $("#THK_PROJECT #eopVal")[0].setAttribute("hiddenId", e.data.eopVehicle[0].id)
                                    $("#THK_PROJECT #year1Val").val(e.data.year1Vehicle[0].value)
                                    $("#THK_PROJECT #year1Val")[0].setAttribute("hiddenId", e.data.year1Vehicle[0].id)
                                    $("#THK_PROJECT #year2Val").val(e.data.year2Vehicle[0].value)
                                    $("#THK_PROJECT #year2Val")[0].setAttribute("hiddenId", e.data.year2Vehicle[0].id)
                                    $("#THK_PROJECT #year3Val").val(e.data.year3Vehicle[0].value)
                                    $("#THK_PROJECT #year3Val")[0].setAttribute("hiddenId", e.data.year3Vehicle[0].id)
                                    $("#THK_PROJECT #year4Val").val(e.data.year4Vehicle[0].value)
                                    $("#THK_PROJECT #year4Val")[0].setAttribute("hiddenId", e.data.year4Vehicle[0].id)
                                    $("#THK_PROJECT #year5Val").val(e.data.year5Vehicle[0].value)
                                    $("#THK_PROJECT #year5Val")[0].setAttribute("hiddenId", e.data.year5Vehicle[0].id)
                                    $("#THK_PROJECT #year6Val").val(e.data.year6Vehicle[0].value)
                                    $("#THK_PROJECT #year6Val")[0].setAttribute("hiddenId", e.data.year6Vehicle[0].id)
                                    var tr = '<tr><td>' + $("#THK_PROJECT #vbidhidden").val() + '</td><td>' + e.data.oemGroupVehicle[0].value + '</td><td>' + e.data.oemNameVehicle[0].value+ '</td><td>' + e.data.badgeNameVehicle[0].value + '</td><td>' + e.data.platFormFamilyVehicle[0].value + '</td><td>' + e.data.platformVehicle[0].value + '</td><td>' + e.data.namePlateVehicle[0].value + '</td><td>' + e.data.regionNameVehicle[0].value + '</td><td id="tablesop">' + e.data.sopVehicle[0].value + '</td><td id="tableeop">' + e.data.eopVehicle[0].value + '</td></tr>'
                                    $('#THK_PROJECT #tablesop').show()
                                    $('#THK_PROJECT #tableeop').show()
                                    $("#THK_PROJECT  #tbodyTableDynamic2").html(tr)
                                    $("#THK_PROJECT #input_tbody").html(tr);
                                    $('#THK_PROJECT').ccPageLoader(false);
                                }, function(e) {

                                })
                                $("#THK_PROJECT #left_panel").show();
                                $("#THK_PROJECT #right_panel").removeClass("col-md-12").addClass("col-md-1-80");
                            } else {
                                $("#THK_PROJECT #left_panel").hide();
                                $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                                var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
                                x.goTo(1);
                                $('#THK_PROJECT').ccPageLoader(false);
                                toastr.error("Please select part name properly", "", {
                                    "positionClass": "toast-top-right",
                                    "preventDuplicates": true,
                                    "timeOut": "3000"
                                });

                            }
                            return false;
                            $("#THK_PROJECT #part_select").val('');
                            $("#THK_PROJECT #partId").val('');
                            $('#THK_PROJECT #supplierfilter').prop('selectedIndex',0)
                            $('#THK_PROJECT #statusfilter').prop('selectedIndex',0)
                            $('#THK_PROJECT #typefilter').prop('selectedIndex',0)
                        } else if (to.index == '3') {
                            $('.filter-container').hide();
                            if(updateflag == 0){
                                url = "/thk/saveVehicle ";
                                $('#THK_PROJECT').ccPageLoader();
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
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                if(completedpart == 0){
                                    data.data["flag"]='Y'
                                }else{
                                    data.data["flag"]='N'
                                }                                
                            }else{
                                url = "/thk/saveVehicle ";
                                $('#THK_PROJECT').ccPageLoader();
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
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["flag"]='Y'
                                updateflag=0;
                            }
                            bind_drop_downs(["supplier", "supplierPlant", "supplierShipTo", "supplierSoldTo"], "/thk/displaySupplierData");
                            $('#THK_PROJECT #part').find('input[type=radio]').attr('disabled', 'disabled')
                            $('#THK_PROJECT #thk_filters').unbind('click')
                            $('#THK_PROJECT #thk_filters').css('cursor','not-allowed')
                        } else if (to.index == '4') {
                            if(updateflag == 0){
                                url = "/thk/saveSupplier";
                                $('#THK_PROJECT').ccPageLoader();
                                data.data["supplier"] = $("#THK_PROJECT #supplier").val();
                                data.data["supplierPlant"] = $("#THK_PROJECT #supplierPlant").val();
                                data.data["supplierShipTo"] = $("#THK_PROJECT #supplierShipTo").val();
                                data.data["supplierSoldTo"] = $("#THK_PROJECT #supplierSoldTo").val();
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                                if(completedpart == 0){
                                    data.data["flag"]='Y'
                                }else{
                                    data.data["flag"]='N'
                                }
                            }else{
                                url = "/thk/saveSupplier";
                                $('#THK_PROJECT').ccPageLoader();
                                data.data["supplier"] = $("#THK_PROJECT #supplier").val();
                                data.data["supplierPlant"] = $("#THK_PROJECT #supplierPlant").val();
                                data.data["supplierShipTo"] = $("#THK_PROJECT #supplierShipTo").val();
                                data.data["supplierSoldTo"] = $("#THK_PROJECT #supplierSoldTo").val();
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                                data.data["flag"]='Y'
                                updateflag=0;
                            }
                            bind_drop_downs(["techLevelOne", "techLevelTwo", "houseDesc", "partsPerVehicle", "prob", "opportunityPipeline"], "/thk/displayProductBindData");
                            bind_textbox(["thkPartName", "customerPartNo", "partDescLong"], "/thk/displayProductTextBoxes");
                            bind_drop_downs(["currency"], "/thk/currencyPricing");
                            bind_drop_downs(["currencyFormat"], "/thk/currencyFormatPricing");
                            $('#THK_PROJECT #startPriceLc').val('');
                            bind_textbox(["xRate", "startPriceLc"], "/thk/startLcPricingAndXRate");
                        } else if (to.index == '5') {
                            if(updateflag == 0){
                                url = "/thk/saveProduct";
                                $('#THK_PROJECT').ccPageLoader();
                                data.data["productGroupName"] = $("#THK_PROJECT #productGroupName").val();
                                data.data["productName"] = $("#THK_PROJECT #productName").val();
                                data.data["partDesc"] = $("#THK_PROJECT #partDesc").val();
                                data.data["techLevelOne"] = $("#THK_PROJECT #techLevelOne").val();
                                data.data["techLevelTwo"] = $("#THK_PROJECT #techLevelTwo").val();
                                data.data["houseDesc"] = $("#THK_PROJECT #houseDesc").val();
                                data.data["thkPartName"] = $("#THK_PROJECT #thkPartName").val();
                                data.data["customerPartNo"] = $("#THK_PROJECT #customerPartNo").val();
                                data.data["partsPerVehicle"] = $("#THK_PROJECT #partsPerVehicle").val();
                                data.data["prob"] = $("#THK_PROJECT #prob").val();
                                data.data["opportunityPipeline"] = $("#THK_PROJECT #opportunityPipeline").val();
                                data.data["partDescLong"] = $("#THK_PROJECT #partDescLong").val();
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val()   ;
                                if(completedpart == 0){
                                    data.data["flag"]='Y'
                                }else{
                                    data.data["flag"]='N'
                                }
                            }else{
                                url = "/thk/saveProduct";
                                $('#THK_PROJECT').ccPageLoader();
                                data.data["productGroupName"] = $("#THK_PROJECT #productGroupName").val();
                                data.data["productName"] = $("#THK_PROJECT #productName").val();
                                data.data["partDesc"] = $("#THK_PROJECT #partDesc").val();
                                data.data["techLevelOne"] = $("#THK_PROJECT #techLevelOne").val();
                                data.data["techLevelTwo"] = $("#THK_PROJECT #techLevelTwo").val();
                                data.data["houseDesc"] = $("#THK_PROJECT #houseDesc").val();
                                data.data["thkPartName"] = $("#THK_PROJECT #thkPartName").val();
                                data.data["customerPartNo"] = $("#THK_PROJECT #customerPartNo").val();
                                data.data["partsPerVehicle"] = $("#THK_PROJECT #partsPerVehicle").val();
                                data.data["prob"] = $("#THK_PROJECT #prob").val();
                                data.data["opportunityPipeline"] = $("#THK_PROJECT #opportunityPipeline").val();
                                data.data["partDescLong"] = $("#THK_PROJECT #partDescLong").val();
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val()   ;
                                data.data["flag"]='Y';
                                updateflag=0;
                            }
                            sendRequest("/thk/fetchPricingTableData", {
                                data: {
                                    "partPlanId": $('#partId').val(),
                                    "vbId": $('#vbidhidden').val().trim()
                                }
                            }, function(e) {
                                $('#THK_PROJECT #myTable').empty();
                                e = e.data;
                                if (e!=null && typeof e === 'object') {
                                    for (var i = 0, j = e.length; i < j; i++) {
                                        var ele = $('<tr><td><input type="text"  value="' + e[i][0] + '" disabled readonly class="form-control test-control" style="width: 100%;" name="pricechange"/></td><td><div class="input-group date" ><input style="cursor: not-allowed; width: 100%;" class="form-control test-control" id="test" type="date" onkeydown="return false" disabled readonly value="' + e[i][1] + '" name="monthYear"/></div></td><td><select class="form-control test-control" style="width: 100%;" disabled="true" name="reason"><option id="1" value="1">Contractual</option><option id="2" value="2">Non Contractual Committed</option><option id="3" value="3"> Non-Contractual Non Committed</option><option id="4" value="4">Material Inflation/Deflation</option><option id="5" value="5"> Tooling, Amortization, Packaging, Others</option><option id="6" value="6">VAVE (Value Add Value Engineering)</option></select></td><td ><fieldset class="test-control"><input type="radio" checked disabled name="ChangeType' + i + '"data-type="abs">Absolute Value<br><input type="radio" disabled name="ChangeType' + i + '" class="group12" data-type="percent">%Change</fieldset></td><td><div class="form-group" style="width: 100%; margin-top: 0px;"><input style="cursor:not-allowed;" disabled value="' + e[i][4] + '" type="text" class="form-control test-control" name="itemValue"></div></td><td><input value="' + e[i][6] + '" type="number" disabled readonly class="form-control test-control" style="width: 100%; cursor: not-allowed;" name="priceInclude" disabled readonly/></td><td><input type="number" class="form-control test-control" style="width: 100%; cursor: not-allowed;" name="variance" disabled readonly/></td><td><i id="fetch_del_row" class="material-icons" style="margin-left: 40%; cursor:pointer"  aria-hidden="true">delete_forever</i></td></tr>')
                                        $('#THK_PROJECT #myTable').append(ele);
                                        ele.find('[name="reason"]').val(e[i][2]);
                                        if (e[i][3].toUpperCase() == 'P') {
                                            ele.find('[data-type="percent"]').prop('checked', true)
                                            ele.find('[name="itemValue"]').val(e[i][5]);
                                        } else {
                                            ele.find('[data-type="abs"]').prop('checked', true)
                                            ele.find('[name="itemValue"]').val(e[i][4]);
                                        }
                                        var format = $('#currencyFormat').val()
                                        if (format == 1) {
                                            $(ele).find('[name="itemValue"]').autoNumeric('init', {
                                                vMin:'-999999999.0000',
                                                aSep: ",",
                                                dGroup: "3",
                                                aDec: "."
                                            });
                                        } else {
                                            $(ele).find('[name="itemValue"]').autoNumeric('init', {
                                                vMin:'-999999999.0000',
                                                aSep: ".",
                                                dGroup: "3",
                                                aDec: ","
                                            });
                                        }
                                        ele.find('[name="itemValue"]').on('keyup change', function(e) {
                                            calculatePC();
                                        });
                                        ele.find("[name='ChangeType" + i + "']").on('change', function(e) {
                                            calculatePC();
                                        });
                                        if ( $('#THK_PROJECT #test')[0].type != 'date' ){
                                            $('#THK_PROJECT #test').datepicker();
                                        }
                                        //ele.find('[name="monthYear"]').on('click', function() {
                                        //  handleDate();
                                        //});
                                    }
                                    $("#THK_PROJECT #fetch_del_row").on('click', function(evt) {
                                        if(completedpart==1){
                                            updateflag=1;
                                        }
                                        sendRequest("/thk/updatePricingTable", {
                                            data: {
                                                "planPartId": $("#THK_PROJECT #partId").val(),
                                                "priceChangeCode": $(evt.target).closest('tr').children('td:first').find('input').val(),
                                                "vbId": $('#vbidhidden').val().trim()
                                            }
                                        }, function(e) {
                                            $('#THK_PROJECT').ccPageLoader();
                                            $(evt.target).parent().parent().remove();
                                            $("#THK_PROJECT").find('small[data-fv-for="monthYear"]').hide();
                                            calculatePC();
                                            handleDate();
                                            $('#THK_PROJECT').ccPageLoader(false)
                                            toastr.success("Price Change deleted Successfully", "", {
                                                "positionClass": "toast-top-right",
                                                "preventDuplicates": true,
                                                "timeOut": "3000"
                                            });
                                        }, function(e) {
                                            console.error(e);
                                        })
                                    })
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
                            $('#THK_PROJECT').ccPageLoader();
                            sendRequest('/thk/fetchThkIssuePlan', {
                                "data": {}
                            }, function(e) {
                                $("#THK_PROJECT #thkissueplanidhidden").val(e.data.data.thkIssuePlanId);

                            }, function(e) {
                                console.error(e);
                            });
                            if(updateflag == 0){
                                url = "/thk/savePricing";
                                data.data["currency"] = $("#THK_PROJECT #currency").val();
                                data.data["currencyFormat"] = $("#THK_PROJECT #currencyFormat").val();
                                data.data["xRate"] = $("#THK_PROJECT #xRate").val();
                                data.data["startPriceLc"] = $("#THK_PROJECT #startPriceLc").autoNumeric('get');
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val();   
                                if(completedpart == 0){
                                    data.data["flag"]='Y'
                                }else{
                                    data.data["flag"]='N'
                                }                             
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
                                    finalArray.push(result);
                                    result2 = finalArray;
                                }
                                priceChangeObject=result2;
                                data.data["pricingTable"] = result2;
                            }else{
                                url = "/thk/savePricing";
                                data.data["currency"] = $("#THK_PROJECT #currency").val();
                                data.data["currencyFormat"] = $("#THK_PROJECT #currencyFormat").val();
                                data.data["xRate"] = $("#THK_PROJECT #xRate").val();
                                data.data["startPriceLc"] = $("#THK_PROJECT #startPriceLc").autoNumeric('get');
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val(); 
                                data.data["flag"]='Y';                               
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
                                    finalArray.push(result);
                                    result2 = finalArray;
                                }
                                priceChangeObject=result2;
                                data.data["pricingTable"] = result2;
                                updateflag=0;
                            }
                            $('#THK_PROJECT #applicationRateYear1,#THK_PROJECT #applicationRateYear2,#THK_PROJECT #applicationRateYear3,#THK_PROJECT #applicationRateYear4,#THK_PROJECT #applicationRateYear5,#THK_PROJECT #applicationRateYear6,#THK_PROJECT #allocationRateYear1,#THK_PROJECT #allocationRateYear2,#THK_PROJECT #allocationRateYear3,#THK_PROJECT #allocationRateYear4,#THK_PROJECT #allocationRateYear5,#THK_PROJECT #allocationRateYear6,#THK_PROJECT #quotedDate,#THK_PROJECT #awardDate').val('');
                            bind_textbox(["allocationRateYear1", "allocationRateYear2",
                                          "allocationRateYear3", "allocationRateYear4",
                                          "allocationRateYear5", "allocationRateYear6",
                                          "applicationRateYear1", "applicationRateYear2",
                                          "applicationRateYear3", "applicationRateYear4",
                                          "applicationRateYear5", "applicationRateYear6", "quotedDate", "awardDate"
                                         ],
                                         "/thk/applicationAndAllocation");
                        } else if (to.index == '7') {
                            $('#THK_PROJECT').ccPageLoader();
                            if(updateflag == 0){
                                url = "/thk/saveApplicationAndAllocation";
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
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                                if(completedpart == 0){
                                    data.data["flag"]='Y'
                                }else{
                                    data.data["flag"]='N'
                                }
                            }else {
                                url = "/thk/saveApplicationAndAllocation";
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
                                data.data["vbId"] = $("#THK_PROJECT #vbidhidden").val().trim();
                                data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                                data.data["flag"]='Y';
                                updateflag=0;
                            }

                            sendRequest('/single/get-kettleData', {
                                "data": {
                                    "businessobject_name": "THK KTR",
                                    "params": {
                                        "P_PLAN_PART_ID": [Number($("#THK_PROJECT #partId").val())],
                                        "P_THK_ISSUE_PLAN_ID": [Number($("#THK_PROJECT #thkissueplanidhidden").val())],
                                        "P_VBID": [Number($("#THK_PROJECT #vbidhidden").val().trim())]
                                    }
                                }
                            }, function(e) {
                                $("#THK_PROJECT #multifun").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][0]).toFixed(2))));
                                $("#THK_PROJECT #multifun2").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][1]).toFixed(2))));
                                $("#THK_PROJECT #multifun3").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][2]).toFixed(2))));
                                $("#THK_PROJECT #multifun4").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][3]).toFixed(2))));
                                $("#THK_PROJECT #multifun5").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][4]).toFixed(2))));
                                $("#THK_PROJECT #multifun6").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][5]).toFixed(2))));
                                $("#THK_PROJECT #sales1").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][6]).toFixed(2))));
                                $("#THK_PROJECT #sales2").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][7]).toFixed(2))));
                                $("#THK_PROJECT #sales3").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][8]).toFixed(2))));
                                $("#THK_PROJECT #sales4").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][9]).toFixed(2))));
                                $("#THK_PROJECT #sales5").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][10]).toFixed(2))));
                                $("#THK_PROJECT #sales6").val((addCommas((e.data[Object.keys(e.data)[0]].resultSet[0][11]).toFixed(2))));
                            }, function() {});                            
                        } else if (to.index == '8') {
                            if(typeof priceChangeObject == 'undefined'){
                                $("#summary_price_fulltable").css('display','none')
                            }
                                var tbody='';
                                $.each(priceChangeObject,function(i,e){
                                    if(e.reason == 1){
                                        e.reason='Contractual'
                                    }else if(e.reason == 2){
                                        e.reason='Non Contractual Committed'
                                    }else if(e.reason == 3){
                                        e.reason='Non-Contractual Non Committed'
                                    }else if(e.reason == 4){
                                        e.reason='Material Inflation/Deflation'
                                    }else if(e.reason == 5){
                                        e.reason='Tooling, Amortization, Packaging, Others'
                                    }else if(e.reason == 6){
                                        e.reason='VAVE (Value Add Value Engineering)'
                                    }

                                    if(e.radioAbsolute == 'A'){
                                        e.radioAbsolute='Absolute Value'
                                    }else if(e.radioAbsolute == 'P'){
                                        e.radioAbsolute='%Change'
                                    }

                                    tbody+='<tr><td>'+e.priceChange+'</td><td>'+e.monthYear+'</td><td>'+e.reason+'</td><td>'+e.radioAbsolute+'</td><td>'+e.absoluteValue+'</td><td>'+e.priceInc+'</td></tr>'
                                })
                                $("#THK_PROJECT #summary_pricing_table").html(tbody);
                                $('#THK_PROJECT #summarypage').css({'display':'block'})
                                $('#THK_PROJECT #summary_part_name').text($('#THK_PROJECT #part_select').val());
                                $('#THK_PROJECT #summary_part_id').text($('#THK_PROJECT #partId').val());
                                $('#THK_PROJECT #summary_oemgroup').text($('#THK_PROJECT #oemGroup_screen2').val());
                                $('#THK_PROJECT #summary_oem').text($('#THK_PROJECT #oem').val());
                                $('#THK_PROJECT #summary_badge').text($('#THK_PROJECT #badge').val());
                                $('#THK_PROJECT #summary_platform').text($('#THK_PROJECT #platfromFamily').val());
                                $('#THK_PROJECT #summary_program').text($('#THK_PROJECT #platfrom').val());
                                $('#THK_PROJECT #summary_production_nameplate').text($('#THK_PROJECT #namePlate').val());
                                $('#THK_PROJECT #summary_vehicle_build_region').text($('#THK_PROJECT #regionName').val());
                                $('#THK_PROJECT #summary_vehicle_build_country').text($('#THK_PROJECT #countryName').val());
                                $('#THK_PROJECT #summary_vehicle_sop').text($('#THK_PROJECT #sopVal').val());
                                $('#THK_PROJECT #summary_vehicle_eop').text($('#THK_PROJECT #eopVal').val());
                                $('#THK_PROJECT #summary_1year_volume').text($('#THK_PROJECT #year1Val').val());
                                $('#THK_PROJECT #summary_2year_volume').text($('#THK_PROJECT #year2Val').val());
                                $('#THK_PROJECT #summary_3year_volume').text($('#THK_PROJECT #year3Val').val());
                                $('#THK_PROJECT #summary_4year_volume').text($('#THK_PROJECT #year4Val').val());
                                $('#THK_PROJECT #summary_5year_volume').text($('#THK_PROJECT #year5Val').val());
                                $('#THK_PROJECT #summary_6year_volume').text($('#THK_PROJECT #year6Val').val());
                                $('#THK_PROJECT #summary_supplier').text($('#THK_PROJECT #supplier option:selected').text());
                                $('#THK_PROJECT #summary_supplier_plant').text($('#THK_PROJECT #supplierPlant option:selected').text());
                                $('#THK_PROJECT #summary_ship_to').text($('#THK_PROJECT #supplierShipTo option:selected').text());
                                $('#THK_PROJECT #summary_sold_to').text($('#THK_PROJECT #supplierSoldTo option:selected').text());
                                $('#THK_PROJECT #summary_product_group').text($('#THK_PROJECT #productGroupName').val());
                                $('#THK_PROJECT #summary_product').text($('#THK_PROJECT #productName').val());
                                $('#THK_PROJECT #summary_part_description').text($('#THK_PROJECT #partDesc').val());
                                $('#THK_PROJECT #summary_tech_level_1').text($('#THK_PROJECT #techLevelOne option:selected').text());
                                $('#THK_PROJECT #summary_tech_level_2').text($('#THK_PROJECT #techLevelTwo option:selected').text());
                                $('#THK_PROJECT #summary_housing_description').text($('#THK_PROJECT #houseDesc option:selected').text());
                                $('#THK_PROJECT #summary_thk_part_number').text($('#THK_PROJECT #thkPartName').val());
                                $('#THK_PROJECT #summary_customer_part_number').text($('#THK_PROJECT #customerPartNo').val());
                                $('#THK_PROJECT #summary_parts_per_vechicle').text($('#THK_PROJECT #partsPerVehicle option:selected').text());
                                $('#THK_PROJECT #summary_probability_code').text($('#THK_PROJECT #prob option:selected').text());
                                $('#THK_PROJECT #summary_opportunity_pipeline_thk').text($('#THK_PROJECT #opportunityPipeline option:selected').text());
                                $('#THK_PROJECT #summary_part_description_long').text($('#THK_PROJECT #partDescLong').val());
                                $('#THK_PROJECT #summary_currency').text($('#THK_PROJECT #currency option:selected').text());
                                $('#THK_PROJECT #summary_currency_format').text($('#THK_PROJECT #currencyFormat option:selected').text());
                                $('#THK_PROJECT #summary_xrate').text($('#THK_PROJECT #xRate').val());
                                $('#THK_PROJECT #summary_start_price_lc').text($('#THK_PROJECT #startPriceLc').val());
                                $('#THK_PROJECT #summary_application_2017').text($('#THK_PROJECT #applicationRateYear1').val());
                                $('#THK_PROJECT #summary_application_2018').text($('#THK_PROJECT #applicationRateYear2').val());
                                $('#THK_PROJECT #summary_application_2019').text($('#THK_PROJECT #applicationRateYear3').val());
                                $('#THK_PROJECT #summary_application_2020').text($('#THK_PROJECT #applicationRateYear4').val());
                                $('#THK_PROJECT #summary_application_2021').text($('#THK_PROJECT #applicationRateYear5').val());
                                $('#THK_PROJECT #summary_application_2022').text($('#THK_PROJECT #applicationRateYear6').val());
                                $('#THK_PROJECT #summary_allocation_2017').text($('#THK_PROJECT #allocationRateYear1').val());
                                $('#THK_PROJECT #summary_allocation_2018').text($('#THK_PROJECT #allocationRateYear2').val());
                                $('#THK_PROJECT #summary_allocation_2019').text($('#THK_PROJECT #allocationRateYear3').val());
                                $('#THK_PROJECT #summary_allocation_2020').text($('#THK_PROJECT #allocationRateYear4').val());
                                $('#THK_PROJECT #summary_allocation_2021').text($('#THK_PROJECT #allocationRateYear5').val());
                                $('#THK_PROJECT #summary_allocation_2022').text($('#THK_PROJECT #allocationRateYear6').val());
                                $('#THK_PROJECT #summary_quote_date').text($('#THK_PROJECT #quotedDate').val());
                                $('#THK_PROJECT #summary_award_date').text($('#THK_PROJECT #awardDate').val());
                                $('#THK_PROJECT #summary_volume_2017').text($('#THK_PROJECT #multifun').val());
                                $('#THK_PROJECT #summary_volume_2018').text($('#THK_PROJECT #multifun2').val());
                                $('#THK_PROJECT #summary_volume_2019').text($('#THK_PROJECT #multifun3').val());
                                $('#THK_PROJECT #summary_volume_2020').text($('#THK_PROJECT #multifun4').val());
                                $('#THK_PROJECT #summary_volume_2021').text($('#THK_PROJECT #multifun5').val());
                                $('#THK_PROJECT #summary_volume_2022').text($('#THK_PROJECT #multifun6').val());
                                $('#THK_PROJECT #summary_sales_2017').text($('#THK_PROJECT #sales1').val());
                                $('#THK_PROJECT #summary_sales_2018').text($('#THK_PROJECT #sales2').val());
                                $('#THK_PROJECT #summary_sales_2019').text($('#THK_PROJECT #sales3').val());
                                $('#THK_PROJECT #summary_sales_2020').text($('#THK_PROJECT #sales4').val());
                                $('#THK_PROJECT #summary_sales_2021').text($('#THK_PROJECT #sales5').val());
                                $('#THK_PROJECT #summary_sales_2022').text($('#THK_PROJECT #sales6').val());
                        }
                        if (url.trim().length) {
                            sendRequest(url, data, function(e) {
                                if (e.data == 1) {
                                    toastr.success("Vehicle Information Saved Successfully", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $('#THK_PROJECT').ccPageLoader(false);
                                } else if (e.data == 2) {
                                    toastr.success("Supplier Information Saved Successfully", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $('#THK_PROJECT').ccPageLoader(false);
                                } else if (e.data == 3) {
                                    toastr.success("Product Information Saved Successfully", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $('#THK_PROJECT').ccPageLoader(false);
                                } else if (e.data == 4) {
                                    toastr.success("Pricing Information Saved Successfully", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $('#THK_PROJECT').ccPageLoader(false);
                                } else if (e.data == 5) {
                                    toastr.success("Application and Allocation Saved Successfully", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $('#THK_PROJECT').ccPageLoader(false);
                                } else if (e.data == null) {
                                    toastr.error("Mandatory Data is missing", "", {
                                        "positionClass": "toast-top-right",
                                        "preventDuplicates": true,
                                        "timeOut": "3000"
                                    });
                                    $('#THK_PROJECT').ccPageLoader(false);
                                }
                            }, function(e) {
                                console.error(e);
                            })
                        }
                        return true;
                    },
                    onFinish: function() {								
                    },
                    onBack: function(from, to, index) {
                        if (to.index == '0') {
                            $("#THK_PROJECT #thk_header").show();
                        } else if (to.index == '1') {
                            $('.filter-container').hide();
                            $("#THK_PROJECT #tableeop").css('display','none');
                            $("#THK_PROJECT #tablesop").css('display','none');
                            $("#THK_PROJECT #thk_footer").css('margin-top', '40px');
                            $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                            $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                            $("#THK_PROJECT #inc_height").removeClass("rowheight");
                            //$('#THK_PROJECT #exampleFormContainer').formValidation('revalidateField', $('#THK_PROJECT #partId'));
                        } else if (to.index == '2') {
                            $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled')
                            $('#THK_PROJECT #thk_filters').off('click').on('click',function(e){
                                console.log('hello')
                                $('.filter-container').toggle();
                            })
                            $('#THK_PROJECT #thk_filters').css('cursor','pointer')
                        } else if(to.index == '3'){
                            $("#THK_PROJECT #thkPartName").val('');
                            $("#THK_PROJECT #customerPartNo").val('');

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
                    try {
                        $('#THK_PROJECT #exampleWizardFormContainer').formValidation('revalidateField', $tab.find('[data-fv-field]'));
                    } catch (e) {

                    } finally {
                        fv.validateContainer($tab);
                        var isValidStep = fv.isValidContainer($tab);
                        if (isValidStep === false || isValidStep === null) {
                            return false;
                        }
                        return true;
                    }
                }
                $('#THK_PROJECT #supplier, #THK_PROJECT #supplierPlant, #THK_PROJECT #supplierShipTo, #THK_PROJECT #supplierSoldTo, #THK_PROJECT #techLevelOne, #THK_PROJECT #techLevelTwo, #THK_PROJECT #houseDesc, #THK_PROJECT #partsPerVehicle, #THK_PROJECT #prob, #THK_PROJECT #opportunityPipeline, #THK_PROJECT #currency, #THK_PROJECT #currencyFormat').on('change',function(e){
                    updateflag=1;
                })
                $('#THK_PROJECT #thkPartName, #THK_PROJECT #customerPartNo, #THK_PROJECT #partDescLong, #THK_PROJECT #startPriceLc, #THK_PROJECT #applicationRateYear1, #THK_PROJECT #applicationRateYear2, #THK_PROJECT #applicationRateYear3, #THK_PROJECT #applicationRateYear4, #THK_PROJECT #applicationRateYear5, #THK_PROJECT #applicationRateYear6, #THK_PROJECT #allocationRateYear1, #THK_PROJECT #allocationRateYear2, #THK_PROJECT #allocationRateYear3, #THK_PROJECT #allocationRateYear4, #THK_PROJECT #allocationRateYear5, #THK_PROJECT #allocationRateYear6').on('keyup',function(e){
                    if((e.keyCode >= 48 && e.keyCode <=57)||(e.keyCode >=65 && e.keyCode<=90) ||(e.keyCode>=97 && e.keyCode<=122) || e.keyCode == 46 || e.keyCode == 8){
                        updateflag=1;
                    }
                })
                $('#THK_PROJECT #quotedDate, #THK_PROJECT #awardDate').on('change',function(e){
                    updateflag=1;
                })

                $('#THK_PROJECT #vehicle_icon').on('click', function(e) {                    
                    $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled');
                    $('#THK_PROJECT #thk_filters').off('click').on('click',function(e){
                        console.log('hellovehicle')
                        $('.filter-container').toggle();
                    })
                    $('#THK_PROJECT #thk_filters').css('cursor','pointer')
                    $('input[name=radio]').prop('checked', false);
                    $("#THK_PROJECT #thkPartName").val('');
                    $("#THK_PROJECT #customerPartNo").val('');
                    $("#THK_PROJECT #partDescLong").val('');
                })

                $('#THK_PROJECT #partname_icon').on('click', function(e) {
                    $('.filter-container').hide();
                    $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                    $("#THK_PROJECT #tablesop,#THK_PROJECT #tableeop").hide();
                    $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                    $("#THK_PROJECT #thkPartName").val('');
                    $("#THK_PROJECT #customerPartNo").val('');

                })

                $('#THK_PROJECT #planner_icon').on('click', function(e) {
                    $('.filter-container').hide();
                    $("#THK_PROJECT #thk_header").show();
                    $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                    $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                    $("#THK_PROJECT #inc_height").removeClass("rowheight");
                    $("#THK_PROJECT #thkPartName").val('');
                    $("#THK_PROJECT #customerPartNo").val('');
                    
                })
                $('#THK_PROJECT #filterbtn').on('click',function(e){
                    $('.filter-container').toggle();
                    var supplierfilter= $('#THK_PROJECT #supplierfilter').val();
                    var statusfilter= $('#THK_PROJECT #statusfilter').val();
                    var typefilter= $('#THK_PROJECT #typefilter').val();
                    partfilter(supplierfilter,statusfilter,typefilter);
                })
                var configuration = [{
                    "Filename": "THK Plan Review",
                    "printFooter": ["Date of print: &D &T", "&A", "Page &P of &N"],
                    "printHeader": ["Date of print: &D &T", "&A", "Page &P of &N"],
                    "worksheet": [{
                        "name": " Plan review",
                        "column": []
                    }]
                }];

                $('#THK_PROJECT #export_btn').on('click', function(e) {
                    e.preventDefault();
                    $('#summarypage').ccPageLoader();
                    var originalData;
                    originalData = [];
                    sendRequest('/single/get-kettleData', {
                        "data": {
                            "businessobject_name": "THK Download",
                            "params": {
                            "POEM_GROUP_ID":$('#THK_PROJECT #oemGroup').val(),
                            "PUSER_ID ": $('header-element')[0].email
                            }
                        }
                    }, function(e) {
                        var excelData=[];
                        var  originalData1 = e.data[Object.keys(e.data)[0]].resultSet;
                        $('#summarypage').ccPageLoader(false);
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
                /*
                        added click action          luish  */
                $('a[data-wizard="next"]').on('click', function(e) {
                    $("#THK_PROJECT #exampleWizardFormContainer").wizard('next'); 

                })
                $('a[data-wizard="back"]').on('click', function(e) {
                    $("#THK_PROJECT #exampleWizardFormContainer").wizard('back'); 

                })
                $('a[data-wizard="finish"]').on('click', function(e) {
                    $("#THK_PROJECT #exampleWizardFormContainer").wizard('finish'); 

                })

                $("#THK_PROJECT #summary_cancel").on('click',function(){	
                    var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
                    x.goTo(7);						
                    $('#THK_PROJECT #summarypage').css({'display':'none'});	

                })
                $("#THK_PROJECT #summary_submit").on('click',function(){
                    // var data={};
                    // data.data["part"] = $("#THK_PROJECT #part").val();
                    // data.data["vbIdHidden"] = $("#THK_PROJECT #vbIdHidden").val();
                    // data.data["planPartId"] = $("#THK_PROJECT #partId").val();
                    // console.log(data)
                    sendRequest("/thk/finalUpdate",{
                        "data": {
                            "part":$("#THK_PROJECT #part").val(),
                            "vbId": $("#THK_PROJECT #vbidhidden").val().trim(),
                            "planPartId": $("#THK_PROJECT #partId").val()
                        }
                    },function(e){
                        if(e.data == 6){
                            toastr.success("Planning Data saved Successfully", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        }else{
                            toastr.error("Mandatory data missing", "", {
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "timeOut": "3000"
                            });
                        }
                    },function(e){

                    })                                    
                    $('#THK_PROJECT #summarypage').css({'display':'none'});
                    var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
                    x.goTo(2);
                    $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled');
                    $('#THK_PROJECT #thk_filters').off('click').on('click',function(e){
                                $('.filter-container').toggle();
                            })
                    // var x = $("#THK_PROJECT #exampleWizardFormContainer").data('wizard');
                    // $('#THK_PROJECT #exampleWizardFormContainer').find('[data-fv-field]').val('')
                    // $('#THK_PROJECT #part').find('input[type=radio]').removeAttr('disabled', 'disabled');
                    // $('input[name=radio]').prop('checked', false);
                    // $("#THK_PROJECT #left_panel,#THK_PROJECT #ihs_data_table").hide();
                    // $("#THK_PROJECT #thk_header").show();
                    // $("#THK_PROJECT #undo_redo,#THK_PROJECT #undo_redo_to").empty();
                    // $("#THK_PROJECT #part").empty('');
                    // $("#THK_PROJECT #right_panel").removeClass("col-md-1-80").addClass("col-md-12");
                    // $("#THK_PROJECT #inc_height").removeClass("rowheight");	
                    // $("#THK_PROJECT #thkPartName").val('');
                    // $("#THK_PROJECT #customerPartNo").val('');
                    // x.reset();
                    // $("#THK_PROJECT #tbodyTableDynamic").hide();
                    // $("#THK_PROJECT #myVBTable").dataTable({
                    //     "ordering": false,
                    //     "retrieve": true,
                    //     "language": {
                    //         "lengthMenu": 'Display <select>' +
                    //         '<option value="5">5</option>' +
                    //         '<option value="10">10</option>' +
                    //         '<option value="15">15</option>' +
                    //         '<option value="20">20</option>' +
                    //         '<option value="25">25</option>' +
                    //         '<option value="-1">All</option>' +
                    //         '</select> records'
                    //     },
                    //     "infoEmpty": "No entries to show"
                    // });
                    // $('#THK_PROJECT #myVBTable').DataTable().destroy();
                    // x.reset();
                })

            })

        }).catch(function(e) {

            console.log(e);
        });
    }).catch(function(e) {

        console.log(e);
    });
</script>