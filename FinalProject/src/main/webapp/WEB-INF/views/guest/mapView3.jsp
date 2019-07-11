<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
section.mapView .dWEBFj {
    width: 100%;
    height: 66px;
    box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 1px -2px;
    background-color: rgb(255, 255, 255);
    position: absolute;
    top: 70px;
    z-index: 10;
}
section.mapView .byjidO {
    float: left;
    width: 249px;
    height: 100%;
    position: relative;
    border-right: 1px solid rgb(232, 232, 232);
}
section.mapView .keOJyH {
    width: 100%;
    height: 100%;
    color: rgb(34, 34, 34);
    font-size: 16px;
    line-height: 66px;
    background-color: rgb(255, 255, 255);
    padding: 0px 50px 0px 30px;
    border-width: 0px;
    border-style: initial;
    border-color: initial;
    border-image: initial;
}
section.mapView .byjidO > svg {
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}
section.mapView .fvkqQK {
    position: absolute;
    top: 50%;
    left: 250px;
    transform: translateY(-50%);
}
section.mapView .hWgOZv {
    float: left;
    height: 36px;
    margin-left: 10px;
    position: relative;
}
section.mapView .fJNXpX {
    max-width: 150px;
    height: 100%;
    font-size: 14px;
    color: rgb(34, 34, 34);
    font-weight: 500;
    line-height: 34px;
    background-color: rgb(255, 255, 255);
    user-select: none;
    position: relative;
    padding: 0px 30px 0px 12px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(224, 224, 224);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .fJNXpX > span {
    display: block;
    width: 100%;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
section.mapView .fJNXpX > svg {
    position: absolute;
    top: 50%;
    right: 11px;
    stroke: rgb(34, 34, 34);
    transform: translateY(-50%) rotate(0deg);
}
section.mapView .cRtqxV {
    max-width: 150px;
    height: 100%;
    font-size: 14px;
    color: rgb(255, 255, 255);
    font-weight: 500;
    line-height: 34px;
    background-color: rgb(0, 108, 255);
    user-select: none;
    position: relative;
    padding: 0px 30px 0px 12px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(0, 108, 255);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .cRtqxV > span {
    display: block;
    width: 100%;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
section.mapView .cRtqxV > svg {
    position: absolute;
    top: 50%;
    right: 11px;
    stroke: rgb(255, 255, 255);
    transform: translateY(-50%) rotate(180deg);
}
section.mapView path[Attributes Style] {
    fill: none;
    fill-rule: evenodd;
    stroke-width: 1.5;
    d: path("M 0.658 1.021 l 4.537 4.263 l 4.463 -4.263");
}
section.mapView svg[Attributes Style] {
    width: 11;
    height: 7;
}
section.mapView svg:not(:root) {
    overflow: hidden;
}
section.mapView .fUMVvC {
    max-width: 150px;
    height: 100%;
    font-size: 14px;
    color: rgb(102, 102, 102);
    font-weight: 400;
    line-height: 34px;
    background-color: rgb(255, 255, 255);
    user-select: none;
    position: relative;
    padding: 0px 30px 0px 12px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(224, 224, 224);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .fUMVvC > span {
    display: block;
    width: 100%;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
section.mapView .fUMVvC > svg {
    position: absolute;
    top: 50%;
    right: 11px;
    stroke: rgb(34, 34, 34);
    transform: translateY(-50%) rotate(0deg);
}
section.mapView .dgiYtt {
    float: left;
    height: 36px;
    margin-left: 10px;
}
section.mapView .bAZEbe {
    height: 100%;
    font-size: 14px;
    color: rgb(102, 102, 102);
    font-weight: 400;
    line-height: 34px;
    background-color: rgb(255, 255, 255);
    user-select: none;
    position: relative;
    padding: 0px 30px 0px 12px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(224, 224, 224);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .bAZEbe > svg {
    position: absolute;
    top: 50%;
    right: 11px;
    stroke: rgb(34, 34, 34);
    transform: translateY(-50%) rotate(0deg);
}
section.mapView .iAUcYP {
    float: right;
    height: 100%;
}
section.mapView .bRnFtN {
    height: 100%;
    color: rgb(102, 102, 102);
    font-size: 14px;
    border-top-style: initial;
    border-right-style: initial;
    border-bottom-style: initial;
    border-top-color: initial;
    border-right-color: initial;
    border-bottom-color: initial;
    background-color: rgb(255, 255, 255);
    position: relative;
    padding: 0px 18px 0px 38px;
    border-width: 0px 0px 0px 1px;
    border-image: initial;
    border-left: 1px solid rgb(235, 235, 235);
}
section.mapView .bRnFtN > svg {
    position: absolute;
    top: 50%;
    left: 15px;
    transform: translateY(-50%);
}
section.mapView .bRnFtN > svg .Svg__group {
    fill: rgb(148, 152, 160);
}
section.mapView .bfbsFm {
    height: 100%;
    color: rgb(102, 102, 102);
    font-size: 14px;
    border-top-style: initial;
    border-right-style: initial;
    border-bottom-style: initial;
    border-top-color: initial;
    border-right-color: initial;
    border-bottom-color: initial;
    background-color: rgb(255, 255, 255);
    position: relative;
    padding: 0px 18px 0px 38px;
    border-width: 0px 0px 0px 1px;
    border-image: initial;
    border-left: 1px solid rgb(235, 235, 235);
}
section.mapView .bfbsFm > svg {
    position: absolute;
    top: 50%;
    left: 15px;
    transform: translateY(-50%);
}
section.mapView .dWEBFj::after {
    display: block;
    content: "";
    clear: both;
}
section.mapView .customoverlay {
	top: -17px;
	box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 10px 0px;
	background-color: rgb(35, 128, 255);
	cursor: pointer;
	position: relative;
	left: -40%;
	padding: 5px 16px;
	border-width: 2px;
	border-style: solid;
	border-color: rgb(35, 128, 255);
	border-image: initial;
	border-radius: 34px;
}

section.mapView .customoverlay:hover {
	background-color: white;
	color: rgb(35, 128, 255);
}

section.mapView .customoverlay2:hover {
	background-color: white;
	color: rgb(35, 128, 255);
}

section.mapView .customoverlay2 {
	display: inline-block;
	min-width: 10px;
	height: 10px;
	color: rgb(255, 255, 255);
	font-size: 17px;
	line-height: 24px;
	text-align: center;
	white-space: nowrap;
	background-color: rgb(35, 128, 255);
	position: relative;
	left: 3px;
	z-index: 1;
	padding: 6px 13px 8px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(25, 119, 247);
	border-image: initial;
	border-radius: 40px;
}

section.mapView .customoverlay .title {
	color: rgb(255, 255, 255);
	font-size: 13px;
	font-weight: 500;
	line-height: 20px;
	white-space: nowrap;
	pointer-events: none;
	margin: 0px;
	padding: 0px;
}

section.mapView html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

section.mapView .map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 350px;
}

section.mapView .radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

section.mapView .custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

section.mapView .custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

section.mapView .custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #e6e6e6);
}

section.mapView .custom_typecontrol .btn:hover {
	background: #f5f5f5;
	background: linear-gradient(#f5f5f5, #e3e3e3);
}

section.mapView .custom_typecontrol .btn:active {
	background: #e6e6e6;
	background: linear-gradient(#e6e6e6, #fff);
}

section.mapView .custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5b6d8a);
}

section.mapView .custom_typecontrol .selected_btn:hover {
	color: #fff;
}

section.mapView .custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

section.mapView .custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

section.mapView .custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

section.mapView .custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}
section.mapView .hKGAZL {
    max-width: 150px;
    height: 100%;
    font-size: 14px;
    color: rgb(255, 255, 255);
    font-weight: 400;
    line-height: 34px;
    background-color: rgb(0, 108, 255);
    user-select: none;
    position: relative;
    padding: 0px 30px 0px 12px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(0, 108, 255);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .hKGAZL > span {
    display: block;
    width: 100%;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
section.mapView .hKGAZL > svg {
    position: absolute;
    top: 50%;
    right: 11px;
    stroke: rgb(255, 255, 255);
    transform: translateY(-50%) rotate(180deg);
}
section.mapView .kdfXro {
    height: 100%;
    font-size: 14px;
    color: rgb(255, 255, 255);
    font-weight: 400;
    line-height: 34px;
    background-color: rgb(0, 108, 255);
    user-select: none;
    position: relative;
    padding: 0px 30px 0px 12px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(0, 108, 255);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .kdfXro > svg {
    position: absolute;
    top: 50%;
    right: 11px;
    stroke: rgb(255, 255, 255);
    transform: translateY(-50%) rotate(180deg);
}
section.mapView .fhfjff {
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.25) 0px 15px 18px -10px;
    position: absolute;
    top: 44px;
    z-index: 101;
    user-select: none;
    padding: 27px 30px 0px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(187, 187, 187);
    border-image: initial;
    border-radius: 3px;
    display: none;
}
section.mapView .lmqlXb {
    margin-bottom: 27px;
    color: rgb(34, 34, 34);
    font-size: 22px;
    font-weight: 400;
    line-height: 33px;
}
section.mapView .dUdesp {
    margin-top: 3px;
    color: rgb(170, 170, 170);
    font-size: 13px;
    font-weight: 400;
    line-height: 19px;
}
section.mapView .lmqlXb::after {
    display: block;
    content: "";
    clear: both;
}
section.mapView .hpBewf {
    width: 260px;
}
section.mapView .hpBewf > li {
    min-height: 22px;
    white-space: nowrap;
}
section.mapView .kAqGVi {
    display: block;
    height: 22px;
    padding-left: 23px;
    position: relative;
    cursor: pointer;
}
section.mapView .PcMeW {
    width: 1px;
    height: 1px;
    opacity: 0;
    position: absolute;
    top: 0px;
    left: 0px;
}
section.mapView .kAqGVi > .CheckBox {
    float: left;
    width: 22px;
    height: 22px;
    background-color: rgb(255, 255, 255);
    position: absolute;
    top: 0px;
    left: 0px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(221, 221, 221);
    border-image: initial;
    border-radius: 3px;
}
section.mapView .PcMeW:checked + .CheckBox {
    background-color: rgb(0, 108, 255);
    border-width: 1px;
    border-style: solid;
    border-color: rgb(0, 108, 255);
    border-image: initial;
}
section.mapView .PcMeW:checked + .CheckBox::after {
    content: "";
    display: block;
    width: 47%;
    height: 27%;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) rotate(-45deg);
    transform-origin: 30% 35%;
    border-left: 2px solid rgb(255, 255, 255);
    border-bottom: 2px solid rgb(255, 255, 255);
}
section.mapView .kMvalg {
    margin-left: 10px;
    color: rgb(68, 68, 68);
    font-size: 15px;
    line-height: 22px;
    position: relative;
    bottom: 1px;
}
section.mapView .hpBewf > li + li {
    margin-top: 12px;
}
section.mapView .hpBewf + ul {
    margin-top: 18px;
    padding-top: 18px;
    padding-bottom: 50px;
    border-top: 1px solid rgb(238, 238, 238);
}
section.mapView .kldrnH {
    margin-top: 15px;
}
section.mapView .kldrnH > svg {
    float: left;
}
section.mapView .kldrnH > p {
    float: left;
    margin: 0px 0px 0px 5px;
}
section.mapView .fhfjff2 {
  	background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.25) 0px 15px 18px -10px;
    position: absolute;
    top: 44px;
    z-index: 101;
    user-select: none;
    padding: 27px 30px 0px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(187, 187, 187);
    border-image: initial;
    border-radius: 3px;
    display:none;
}
section.mapView .eLjSYd {
    width: 190px;
    padding-bottom: 50px;
}
section.mapView .eLjSYd > li {
    height: 22px;
    white-space: nowrap;
}
section.mapView .eLjSYd > li + li {
    margin-top: 12px;
}
section.mapView .fhfjff3 {
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.25) 0px 15px 18px -10px;
    position: absolute;
    top: 44px;
    z-index: 101;
    user-select: none;
    padding: 27px 30px 0px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(187, 187, 187);
    border-image: initial;
    border-radius: 3px;
    display:none;
}
section.mapView .bZsIeN {
    width: 240px;
    padding-bottom: 50px;
}
section.mapView .bZsIeN > li {
    height: 22px;
    white-space: nowrap;
}
section.mapView .eUbtsI {
    display: block;
    padding-left: 23px;
    position: relative;
    cursor: pointer;
}

section.mapView .eUbtsI > .Radio--circle::after {
    content: "";
    display: block;
    width: 12px;
    height: 12px;
    background-color: rgb(255, 255, 255);
    transform: scale(0);
    opacity: 0;
    margin: 4px;
    border-radius: 50%;
    transition: transform 0.25s ease-in-out 0s;
}
section.mapView .dvQVkh:checked + .Radio--circle::after {
    background-color: rgb(0, 108, 255);
    transform: scale(1);
    opacity: 1;
}
section.mapView .eUbtsI > .Radio--circle {
    float: left;
    width: 22px;
    height: 22px;
    background-color: rgb(255, 255, 255);
    position: absolute;
    top: 50%;
    left: 0px;
    transform: translate(0px, -50%);
    border-width: 1px;
    border-style: solid;
    border-color: rgb(221, 221, 221);
    border-image: initial;
    border-radius: 50%;
}
section.mapView .dvQVkh {
    display: none;
}
section.mapView input, button {
    outline: none;
}
section.mapView .hLYrBD {
    margin-left: 10px;
    color: rgb(68, 68, 68);
    font-size: 15px;
    position: relative;
    
}
section.mapView label input ~ span{
padding:0;
}
section.mapView .eUbtsI > .Radio--circle::after {
    content: "";
    display: block;
    width: 12px;
    height: 12px;
    background-color: rgb(255, 255, 255);
    transform: scale(0);
    opacity: 0;
    margin: 4px;
    border-radius: 50%;
    transition: transform 0.25s ease-in-out 0s;
}
.bZsIeN > li + li {
    margin-top: 12px;
}
</style>
<section class="mapView">
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>	
		<div class="contents">
		<div class="styled__Header-sfs8fz-0 dWEBFj">
			<div class="styled__SearchForm-sc-1pc2wuh-0 byjidO">
				<input autocomplete="off" type="text" name="keyword" class="styled__Input-sc-1pc2wuh-1 keOJyH" placeholder="잠실동 아파트">
					<svg width="18" height="18" viewBox="0 0 18 18">
						<g fill="none" fill-rule="evenodd" stroke="#222">
							<circle cx="7.5" cy="7.5" r="6.5"></circle>
							<path d="M12 12l5 5"></path>
						</g>
					</svg>
			</div>
			<div class="styled__FilterWrap-sfs8fz-1 fvkqQK">
				<div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
					<div class="styled__Btn-sc-1a98puu-1 fJNXpX">
						<span>원룸, 투·쓰리룸, 오피스텔</span>
						<svg width="11" height="7" viewBox="0 0 11 7">
							<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263">
							</path>
						</svg>
					</div>					
				</div>
				<div class="styled__FilterBox-sc-1a98puu-2 fhfjff" style="left: 0px;">
						<h1 class="styled__Title-sc-1a98puu-3 lmqlXb">방종류
							<p class="styled__Desc-sc-1a98puu-5 dUdesp">중복선택이 가능합니다.</p>
						</h1><ul class="styled__Ul-sc-1eqdfqp-0 hpBewf">
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="" checked="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">원룸</span>
							</label>
						</li>
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="" checked="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">투·쓰리룸</span>
							</label>
						</li>
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="" checked="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">오피스텔</span>
							</label>
						</li>
					</ul>
					<ul class="styled__Ul-sc-1eqdfqp-0 hpBewf">
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">아파트</span>
							</label>
							<div class="styled__DescBox-sc-1eqdfqp-1 kldrnH">
								<svg x="0" y="0" width="18" height="18" viewBox="0 0 27 27">
									<clipPath id="c1_1">
										<path d="M13.7,20.6c-.6,0,-1.1,-.5,-1.1,-1.1c0,-.7,.5,-1.2,1.1,-1.2c.7,0,1.2,.5,1.2,1.2c0,.6,-.5,1.1,-1.2,1.1Zm.1,-3.8c-1,0,-1.2,-8.3,-1.2,-9.2c0,-.8,.5,-1.5,1.2,-1.5c.6,0,1.1,.7,1.1,1.5c0,.9,-.2,9.2,-1.1,9.2Z">
										</path>
									</clipPath>
									<g>
										<circle cx="13.5" cy="13.5" r="13.5" fill="#E6E7EA"></circle>
										<path fill="#9C9EA3" d="M5,28.3H22.5V-1.4H5V28.3Z" clip-path="url(#c1_1)"></path>
									</g>
								</svg>
							<p class="styled__Desc-sc-1a98puu-5 dUdesp">다중 선택 시 아파트는 포함할 수 없습니다. </p>
							</div>
						</li>
					</ul>
				</div>
			<div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
				<div class="styled__Btn-sc-1a98puu-1 fJNXpX">
					<span>월세, 전세, 매매</span>
					<svg width="11" height="7" viewBox="0 0 11 7">
						<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263">
						</path>
					</svg>
				</div>
										
			</div>
			<div class="styled__FilterBox-sc-1a98puu-2 fhfjff2"
							style="left: 168px;">
							<h1 class="styled__Title-sc-1a98puu-3 lmqlXb">
								매물 종류
								<p class="styled__Desc-sc-1a98puu-5 dUdesp">중복선택이 가능합니다.</p>
							</h1>
							<ul class="styled__Ul-sc-7qrnpy-0 eLjSYd">
								<li><label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi"
									size="22"><input type="checkbox"
										class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW"
										name="selling_type" value="" checked=""><span
										class="CheckBox"></span><span
										class="styled__Text-sc-7qrnpy-1 nmQzi">월세</span></label></li>
								<li><label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi"
									size="22"><input type="checkbox"
										class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW"
										name="selling_type" value="" checked=""><span
										class="CheckBox"></span><span
										class="styled__Text-sc-7qrnpy-1 nmQzi">전세</span></label></li>
								<li><label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi"
									size="22"><input type="checkbox"
										class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW"
										name="selling_type" value="" checked=""><span
										class="CheckBox"></span><span
										class="styled__Text-sc-7qrnpy-1 nmQzi">매매</span></label></li>
							</ul>
						</div>			
			<div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
				<div class="styled__Btn-sc-1a98puu-1 fUMVvC">
					<span>가격대</span>
					<svg width="11" height="7" viewBox="0 0 11 7">
						<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263">
						</path>
					</svg>
				</div>
			</div>
			
			<div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
				<div class="styled__Btn-sc-1a98puu-1 fUMVvC">
					<span>관리비</span>
					<svg width="11" height="7" viewBox="0 0 11 7">
						<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263">
						</path>
					</svg>
				</div>
	
			</div>
			<div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
			<div class="styled__Btn-sc-1a98puu-1 fUMVvC">
				<span>방크기</span>
					<svg width="11" height="7" vfiewBox="0 0 11 7">
						<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263">
						</path>
					</svg>
				</div>
			</div>
			<div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
				<div class="styled__Btn-sc-1a98puu-1 fUMVvC">
					<span>준공년차</span>
					<svg width="11" height="7" viewBox="0 0 11 7">
						<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263">
						</path>
					</svg>
				</div>						
			</div>
			<div class="styled__FilterBox-sc-1a98puu-2 fhfjff3"
							style="right: 0px;">
							<h1 class="styled__Title-sc-1a98puu-3 lmqlXb">준공년차</h1>
							<ul class="styled__Ul-sc-19pabue-0 bZsIeN">
								<li><label class="clearfix Radio__Label-lgvo9c-0 eUbtsI"
									size="22"><input type="radio"
										class="Radio__RadioStd-lgvo9c-1 dvQVkh"
										name="enter_date_range" value="" checked=""><span
										class="Radio--circle"></span><span
										class="styled__Text-sc-19pabue-1 hLYrBD">전체</span></label></li>
								<li><label class="clearfix Radio__Label-lgvo9c-0 eUbtsI"
									size="22"><input type="radio"
										class="Radio__RadioStd-lgvo9c-1 dvQVkh"
										name="enter_date_range" value=""><span
										class="Radio--circle"></span><span
										class="styled__Text-sc-19pabue-1 hLYrBD">1년 이내</span></label></li>
								<li><label class="clearfix Radio__Label-lgvo9c-0 eUbtsI"
									size="22"><input type="radio"
										class="Radio__RadioStd-lgvo9c-1 dvQVkh"
										name="enter_date_range" value=""><span
										class="Radio--circle"></span><span
										class="styled__Text-sc-19pabue-1 hLYrBD">5년 이내</span></label></li>
								<li><label class="clearfix Radio__Label-lgvo9c-0 eUbtsI"
									size="22"><input type="radio"
										class="Radio__RadioStd-lgvo9c-1 dvQVkh"
										name="enter_date_range" value=""><span
										class="Radio--circle"></span><span
										class="styled__Text-sc-19pabue-1 hLYrBD">10년 이내</span></label></li>
								<li><label class="clearfix Radio__Label-lgvo9c-0 eUbtsI"
									size="22"><input type="radio"
										class="Radio__RadioStd-lgvo9c-1 dvQVkh"
										name="enter_date_range" value=""><span
										class="Radio--circle"></span><span
										class="styled__Text-sc-19pabue-1 hLYrBD">15년 이내</span></label></li>
								<li><label class="clearfix Radio__Label-lgvo9c-0 eUbtsI"
									size="22"><input type="radio"
										class="Radio__RadioStd-lgvo9c-1 dvQVkh"
										name="enter_date_range" value=""><span
										class="Radio--circle"></span><span
										class="styled__Text-sc-19pabue-1 hLYrBD">15년 이상</span></label></li>
							</ul>
						</div>
			<div class="styled__Wrap-jzhnoe-0 dgiYtt" tabindex="0">
				<div class="styled__Btn-jzhnoe-1 bAZEbe">추가필터
					<svg width="11" height="7" viewBox="0 0 11 7">
						<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
					</svg>
				</div>
			</div>
		</div>
		<div class="styled__BtnWrap-sfs8fz-2 iAUcYP">
			<button class="styled__Btn-sc-1p3e70q-0 bRnFtN">
				<svg width="22" height="19" viewBox="0 0 30 26">
					<g fill="none" fill-rule="evenodd">
						<g class="Svg__group" fill-rule="nonzero">
							<path d="M8 13.75a2.75 2.75 0 1 1 0-5.5 2.75 2.75 0 0 1 0 5.5zm0-1.5a1.25 1.25 0 1 0 0-2.5 1.25 1.25 0 0 0 0 2.5zM22 11.75a2.75 2.75 0 1 1 0-5.5 2.75 2.75 0 0 1 0 5.5zm0-1.5a1.25 1.25 0 1 0 0-2.5 1.25 1.25 0 0 0 0 2.5zM15 19.75a2.75 2.75 0 1 1 0-5.5 2.75 2.75 0 0 1 0 5.5zm0-1.5a1.25 1.25 0 1 0 0-2.5 1.25 1.25 0 0 0 0 2.5z">
							</path>
							<path d="M8.75 8.417V4.25a.75.75 0 0 0-1.5 0v4.167a.75.75 0 0 0 1.5 0zM15.75 14.69V4.25a.75.75 0 1 0-1.5 0v10.44a.75.75 0 0 0 1.5 0zM22.75 6.5V4.25a.75.75 0 1 0-1.5 0V6.5a.75.75 0 1 0 1.5 0zM8.75 21.564V13.25a.75.75 0 0 0-1.5 0v8.314a.75.75 0 0 0 1.5 0zM22.75 21.561V11.49a.75.75 0 1 0-1.5 0v10.071a.75.75 0 1 0 1.5 0zM15.75 21.56v-1.88a.75.75 0 1 0-1.5 0v1.88a.75.75 0 1 0 1.5 0z">
							</path>
						</g>
					</g>
				</svg>전체필터
			</button>
			<button class="styled__Btn-sfs8fz-3 bfbsFm" style="padding-left: 36px;">
				<svg width="22" height="22" viewBox="0 0 22 22" style="left: 14px;">
					<path fill="#9498A0" fill-rule="evenodd" d="M15.344 10.344h-2L16 7.688l2.688 2.656h-2c0 .96-.245 1.856-.736 2.688-.47.81-1.11 1.45-1.92 1.92a5.201 5.201 0 0 1-2.688.736c-.512 0-1.01-.075-1.496-.224a5.476 5.476 0 0 1-1.352-.624l.976-.96c.565.31 1.19.464 1.872.464.725 0 1.395-.179 2.008-.536a3.972 3.972 0 0 0 1.456-1.456 3.918 3.918 0 0 0 .536-2.008zm-9.344 0c0-.96.245-1.856.736-2.688.47-.81 1.11-1.45 1.92-1.92A5.201 5.201 0 0 1 11.344 5c.512 0 1.013.072 1.504.216.49.144.939.355 1.344.632l-.976.96a3.835 3.835 0 0 0-1.872-.464c-.725 0-1.395.179-2.008.536A3.972 3.972 0 0 0 7.88 8.336a3.918 3.918 0 0 0-.536 2.008h2L6.688 13 4 10.344h2z">
					</path>
				</svg>초기화
			</button>
		</div>
	</div>			
			<input type="text" id="address" value="" size="70"> <input
				type="button" value="좌표값 검색" onclick="addressChk()">
			<div class="map_wrap">
				<div id="map"
					style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
				<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
				<div class="custom_zoomcontrol radius_border">
					<span onclick="zoomIn()"><img
						src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
						alt="확대"></span> <span onclick="zoomOut()"><img
						src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
						alt="축소"></span>
				</div>
			</div>
			<div id="coordXY"></div>
			<p>
				<a href="https://map.kakao.com/link/search/kh 정보교육원">kh 정보교육원 바로
					이동</a>
			</p>			
		</div>
		<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
		</div>
	</section>
</body>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=172ed9cf73c3423204ded79275b828ba&libraries=services,clusterer,drawing"></script>
<script>
	
	//주소 입력 후 x,y 좌표로 받는 코드
	var address = document.getElementById("address");
	var coordXY = document.getElementById("coordXY");
	var x, y = "";
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.566826005485716, 126.9786567859313),
		level : 9
	//지도 4km 기준 , 서울 특별시
	};

	var map = new kakao.maps.Map(container, options);

	// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() {
		map.setLevel(map.getLevel() - 1);
		console.log(map.getLevel());

	}

	// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
		map.setLevel(map.getLevel() + 1);
		console.log(map.getLevel());

	}
	function addressChk() {
		var gap = address.value; // 주소검색어
		if (gap == "") {
			alert("주소 검색어를 입력해 주십시오.");
			address.focus();
			return;
		}
		// 주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		// 주소로 좌표를 검색
		geocoder.addressSearch(gap, function(result, status) {
			// 정상적으로 검색이 완료됐으면,
			if (status == daum.maps.services.Status.OK) {
				map.setLevel(3);
				var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				y = result[0].x;
				x = result[0].y;
				coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y;
				// 이동할 위도 경도 위치를 생성합니다 
				var moveLatLon = new kakao.maps.LatLng(x, y);
				// 지도 중심을 부드럽게 이동시킵니다
				// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
				map.panTo(moveLatLon);
			}
		});
	}
	var markers = [];	
	var positions = [ {
		latlng : new kakao.maps.LatLng(37.566826005485716, 126.9786567859313),
		name : "서울특별시"
	}, {
		latlng : new kakao.maps.LatLng(37.455925200122365, 126.70526742296053),

		name : "인천광역시"
	}, {
		latlng : new kakao.maps.LatLng(36.35053889930785, 127.38483484675275),

		name : "대전광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.160082060243084, 126.8515729213636),

		name : "광주광역시"
	}, {
		latlng : new kakao.maps.LatLng(37.2749769872529, 127.00892996953034),

		name : "경기도"
	},

	{
		latlng : new kakao.maps.LatLng(36.63535819601533, 127.49145732650358),

		name : "충청북도"
	}, {
		latlng : new kakao.maps.LatLng(36.65882925330591, 126.67277619381971),

		name : "충청남도"
	}, {
		latlng : new kakao.maps.LatLng(36.480068515997694, 127.28919533809494),

		name : "세종특별자치시"
	}, {
		latlng : new kakao.maps.LatLng(36.57599982894105, 128.50579932539114),

		name : "경상북도"
	}, {
		latlng : new kakao.maps.LatLng(35.23777421049519, 128.69189688916975),

		name : "경상남도"
	}, {
		latlng : new kakao.maps.LatLng(35.53948278776425, 129.31146791909438),

		name : "울산광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.179820052333426, 129.07508749216157),

		name : "부산광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.871380264652295, 128.6018054910818),

		name : "대구광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.82019636395981, 127.10897671201185),

		name : "전라북도"
	}, {
		latlng : new kakao.maps.LatLng(34.811823882052146, 126.39226600466537),

		name : "전라남도"
	}, {
		latlng : new kakao.maps.LatLng(37.88532578582254, 127.72982901035823),
		name : "강원도"
	}

	];
	var positions2 = [{
			latlng : new kakao.maps.LatLng(37.27943075229118, 127.01763998406159)
			,name:"가"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.55915668706214, 126.92536526611102)
	      ,name:"나"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.13854258261161, 129.1014781294671)
	      ,name:"다"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.55518388656961, 126.92926237742505)
	      ,name:"라"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.20618517638034, 129.07944301057026)
	      ,name:"마"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.561110808242056, 126.9831268386891)
	      ,name:"바"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.86187129655063, 127.7410250820423)
	      ,name:"사"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.47160156778542, 126.62818064142286)
	      ,name:"아"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.10233410927457, 129.02611815856181)
	      ,name:"자"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.10215562270429, 129.02579793018205)
	      ,name:"1"	       
	        },
	        {
	        	latlng : new kakao.maps.LatLng(35.475423012251106, 128.76666923366042)
		      ,name:"2"
	          
	        },
	        {
	        	latlng : new kakao.maps.LatLng(35.93282824693927, 126.95307628834287)
	        ,name:"3"
	        },
	        {
	        	latlng : new kakao.maps.LatLng(36.33884892276137, 127.393666019664)
		      ,name:"4"
	         
	        },
	        {
	        	latlng : new kakao.maps.LatLng(37.520412849636, 126.9742764161581)
		      ,name:"5"
	         
	        },
	        {
	        	latlng : new kakao.maps.LatLng(35.155139675209675, 129.06154773758374)
		      ,name:"6"
	          
	        }]    
	
	
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 8, // 클러스터 할 최소 지도 레벨
        disableClickZoom: true, // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
        styles: [{ // calculator 각 사이 값 마다 적용될 스타일을 지정한다
            width : '30px', height : '30px',
            background: 'rgb(35, 128, 255)',
            borderRadius: '40px',
            color: 'white',
            textAlign: 'center',
            fontWeight: 'bold',
            lineHeight: '31px'
        }
    ]
    });	
	for (var i = 0; i < positions.length; i++){						
 		 var content = '<div class="customoverlay"><input type="hidden" class="btn-why" value="'+positions[i].latlng+'"><span class="title">'+positions[i].name+'</span></div>';	
	    var customOverlay = new kakao.maps.CustomOverlay({
	        map: map,
	        position: positions[i].latlng,
	        content: content	       
	    });    
	    
	}		
	 $(document).ready(function(){		 
		 for(var i =0;i<positions2.length;i++){
				var content2 = '<div class="customoverlay2"><input class="tt" type="hidden" value="'+positions2[i].latlng+'"<span class="title">'+positions2[i].name+'</span></div>';
				 var customOverlay2= new kakao.maps.CustomOverlay({
				    	map: map,
				    	position: positions2[i].latlng,
				    	content : content2,
				    	image:null
				    })				 
				 var marker = new kakao.maps.Marker({
					    position: positions2[i].latlng,
					    
					});				
				 clusterer.addMarker(marker);				 
		 };
		 map.setLevel(20);		
		$(".customoverlay").click(function(){		
			console.log("응");
			var strArray=$(this).children().val().split(',');
			var string = strArray[0];
			var string2 = strArray[1];
			var strArray2 = string.split('(');
			var strArray3 = string2.split(')');
			map.panTo(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			map.setCenter(new kakao.maps.LatLng(strArray2[1], strArray3[0]));							
			map.setLevel(10);
		});
		$(".customoverlay2").click(function(){
			var strArray=$(this).children().val().split(',');
			var string = strArray[0];
			var string2 = strArray[1];
			var strArray2 = string.split('(');
			var strArray3 = string2.split(')');
			map.panTo(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			map.setCenter(new kakao.maps.LatLng(strArray2[1], strArray3[0]));				
			map.setLevel(map.getLevel()-1);
		});		
		kakao.maps.event.addListener(map, 'zoom_changed', function() {		
			console.log(map.getLevel());
			if (map.getLevel() >10) {
				clusterer.clear();
				$(".customoverlay").css("display","block");
				$(".customoverlay2").css("display","none");
			}else {
				clusterer.clear();
				$(".customoverlay2").css("display","none");
				$(".customoverlay").css("display","none");
				for(var i =0;i<positions2.length;i++){				 
					 var marker = new kakao.maps.Marker({
						    position: positions2[i].latlng
						});					
					 clusterer.addMarker(marker);
			 };
			}
		});	
		map.setLevel(9);
	});	
	kakao.maps.event.addListener(map,'mousedown',function(){
		
		/* $('.tt').each(function(index) { console.log(index + ': ' + $(this).val()); }); */ 
		if (map.getLevel() >10) {
			clusterer.clear();
				$(".customoverlay").css("display","block");
				$(".customoverlay2").css("display","none");
			}else {
				$(".customoverlay2").css("display","none");
				$(".customoverlay").css("display","none");			
			clusterer.clear();				
			for(var i =0;i<positions2.length;i++){				 
				 var marker = new kakao.maps.Marker({
					    position: positions2[i].latlng
					});				
				 clusterer.addMarker(marker);
		 };
		 marker.setMap(null);
		}		
	});
	$(document).ready(function(){
		console.log($(".fhfjff3").css("display","none"));
		$(document).click(function(e){
			$(".hWgOZv").eq('0').click(function(e){
				$(".fhfjff2").css("display","none");
				$(".fhfjff3").css("display","none");
				if($(".fhfjff").is(":visible")){
					$(".fhfjff").css("display","none");
				}else{
					$(".fhfjff").css("display","block");
				}
				
			})
			for(var i=1;i<$('.hWgOZv').length;i++){
				$(".hWgOZv").eq(i).click(function(e){
					$(".fhfjff").css("display","none");
				})
			}
			$(".hWgOZv").eq('1').click(function(e){
				if($(".fhfjff2").is(":visible")){
					$(".fhfjff2").css("display","none");
				}else{
					$(".fhfjff2").css("display","block");
				}
			})
			$(".hWgOZv").eq('5').click(function(e){
				if($(".fhfjff3").is(":visible")){
					$(".fhfjff3").css("display","none");
				}else{
					$(".fhfjff3").css("display","block");
				}
				
			})
			$(".dgiYtt").click(function(){
				$(".fhfjff1").css("display","none");
				$(".fhfjff2").css("display","none");
				$(".fhfjff3").css("display","none");
			})
			for(var i=2;i<$('.hWgOZv').length;i++){
				$(".hWgOZv").eq(i).click(function(e){
					$(".fhfjff2").css("display","none");
				})
			}
			for(var i=0;i<$('.hWgOZv').length-1;i++){
				$(".hWgOZv").eq(i).click(function(e){
					$(".fhfjff3").css("display","none");
				})
			}
			
			$(".hWgOZv").click(function(e){		
				if($(this).children().hasClass('fJNXpX')){
					$(".hWgOZv").children().addClass('fJNXpX');
					$(".hWgOZv").children().removeClass('cRtqxV');
					$(".dgiYtt ").children().removeClass('kdfXro');
					$(".dgiYtt ").children().addClass('bAZEbe');
					
					$(this).children().removeClass('fJNXpX');
					$(this).children().addClass('cRtqxV'); 
					
				}else if($(this).children().hasClass('fUMVvC')){
				
				 	$(".hWgOZv").children().addClass('fUMVvC');
					$(".hWgOZv").children().removeClass('hKGAZL ');
					$(".dgiYtt ").children().removeClass('kdfXro');
					$(".dgiYtt ").children().addClass('bAZEbe');
					$(this).children().removeClass('fUMVvC');
					$(this).children().addClass('hKGAZL');
				} 
			})
			$(".dgiYtt").click(function(e){
				if($(this).children().hasClass('bAZEbe')){
					$(".hWgOZv").children().addClass('fJNXpX');
					$(".hWgOZv").children().removeClass('cRtqxV');
					$(this).children().removeClass('bAZEbe');
					$(this).children().addClass('kdfXro');
				}else{
					$(".hWgOZv").children().addClass('fUMVvC');
					$(".hWgOZv").children().removeClass('hKGAZL ');
					$(".hWgOZv").children().addClass('fJNXpX');
					$(".hWgOZv").children().removeClass('cRtqxV'); 
				} 
			})
		})		
	})
	
	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

		// 현재 지도 레벨에서 1레벨 확대한 레벨
		var level = map.getLevel() - 1;

		// 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
		map.setLevel(level, {
			anchor : cluster.getCenter()
		});
	}); 
</script>
</html>