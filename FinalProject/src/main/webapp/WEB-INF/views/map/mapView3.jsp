<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.itemImage {
    width: 105%;
    display: block;
    position: absolute;
}
.cdZmjD > p {
    display: table-cell;
   	padding-left: 45px;
    padding-top: 115px;
    padding-bottom: 30px;
    color: rgb(68, 68, 68);
    font-size: 15px;
    text-align: center;
    vertical-align: middle;
}
.dsnFwu {
    width: 100%;
    height: 58px;
    padding: 16px 20px 18px;
    border-bottom: 1px solid rgb(238, 238, 238);
    min-width: 100%;
}
.dsnFwu > svg {
    float: left;
}
g[Attributes Style] {
    fill: none;
    fill-rule: evenodd;
    stroke: rgb(162, 162, 162);
}
:not(svg) {
    transform-origin: 0px 0px;
}
.dhDZXc {
    float: left;
    width: 266px;
    height: 360px;
    border: 1px solid rgb(238, 238, 238);
         
}
.dsnFwu::after {
    display: block;
    content: "";
    clear: both;
}
.dsnFwu > h1 {
    float: left;
    margin-left: 2px;
    color: rgb(34, 34, 34);
    font-size: 16px;
    line-height: 24px;
}
.hTjTzB {
    float: left;
    min-width: 18px;
    height: 18px;
    font-size: 10px;
    color: rgb(255, 255, 255);
    text-align: center;
    line-height: 18px;
    background-color: rgb(160, 94, 237);
    border-radius: 50%;
}
.hTjTzB + span {
    margin-left: 3px;
}
.cokPTc + span {
    margin-left: 3px;
}
.lfdtIC {
    float: left;
    min-width: 18px;
    height: 18px;
    font-size: 10px;
    color: rgb(255, 255, 255);
    text-align: center;
    line-height: 18px;
    background-color: rgb(84, 166, 213);
    padding: 0px 8px;
    border-radius: 18px;
}

.cokPTc {
    float: left;
    min-width: 18px;
    height: 18px;
    font-size: 10px;
    color: rgb(255, 255, 255);
    text-align: center;
    line-height: 18px;
    background-color: rgb(213, 163, 15);
    border-radius: 50%;
}
.cdZmjD {
    width: 100%;
    height: 300px;
    overflow-x: hidden;
    overflow-y: auto;
    padding: 10px 0px;
    list-style: none;
}
.dnFDTx > p > span.Blue {
    display: block;
    overflow: hidden;
    color: rgb(0, 108, 255);
    width: 100%;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.iqLabM {
    min-width: 18px;
    height: 18px;
    line-height: 18px;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}
.dnFDTx > p {
    color: rgb(102, 102, 102);
    font-size: 14px;
    line-height: 34px;
}
.dnFDTx {
    display: block;
    width: 100%;
    min-height: 34px;
    padding-left: 25px;
    padding-right: 20px;
    line-height: 34px;
    position: relative;
}
.icqmaF {
    width: 266px;
    height: 360px;
    box-shadow: rgba(0, 0, 0, 0.06) 0px 1px 12px 0px, rgba(0, 0, 0, 0.12) 0px 20px 15px -12px;
    background-color: rgb(255, 255, 255);
    position: absolute;
    top: 59px;
    left: 15px;
    z-index: 101;
    user-select: none;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(221, 221, 221);
    border-image: initial;
}
 .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
 .kpKjGs{
 	display:block;
 }
 .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    
.fxRDHg::after {
    display: block;
    content: "";
    clear: both;
}
.fxRDHg {
	height: 663px;
    width: 100%;
    padding-top: 20px;
    overflow: scroll;
}
.Mmhsh {
    float: left;
    width: 50%;
    padding-left: 15px;
    margin-bottom: 50px;
}
@media only screen and (min-width: 1700px)
<style>
.OUJOU {
    height: 325px;
}
.gYMri {
    width: 36px;
    position: relative;
    top: 3px;
    right: 7px;
    z-index: 1;
    cursor: pointer;
}
.hjVNgq {
    width: 32px;
    height: 30px;
    margin: 0px auto;
    background: url(/static/media/like.6879d861.svg) center center / cover;
}

@media only screen and (min-width: 1700px)
<style>
.bnManG {
    height: 186px;
}
.bnManG {
    width: 100%;
    height: 145px;
    margin-bottom: 12px;
    background-color: rgb(239, 240, 242);
    position: relative;
    border-radius: 3px;
    overflow: hidden;
}
.bnManG::before {
    content: "";
    height: 100%;
    position: absolute;
    top: 0px;
    right: 0px;
    left: 0px;
    
}
.bnManG::after {
    content: "";
    height: 100%;
    background-color: rgba(0, 0, 0, 0.1);
    position: absolute;
    top: 0px;
    left: 0px;
    right: 0px;
}
.gAdXIp {
    height: 21px;
    margin-bottom: 3px;
}
.hhLAzQ {
    width: 49px;
    height: 21px;
    margin-right: 4px;
}
.gekGFB {
    display: inline-block;
    height: 21px;
    line-height: 19px;
    vertical-align: top;
    padding: 0px 5px;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(168, 193, 252);
    border-image: initial;
    border-radius: 2px;
}
.gekGFB > span {
    font-weight: 700;
}
.gekGFB > span, .gekGFB > font {
    display: inline-block;
    color: rgb(50, 108, 249);
    font-size: 11px;
    white-space: nowrap;
    position: relative;
    bottom: 2px;
}
.gekGFB > font {
    margin-left: 3px;
}
.kCTBqT {
    font-size: 13px;
    font-weight: 400;
}
.jBkVAv {
    width: 100%;
    color: rgb(102, 102, 102);
    font-size: 14px;
    font-weight: 300;
    line-height: 20px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
@media only screen and (min-width: 1700px)
<style>
.glovZ {
    margin: 3px 0px 8px;
}
.glovZ {
    color: rgb(34, 34, 34);
    font-size: 20px;
    font-weight: 700;
    line-height: 25px;
    margin: 3px 0px 6px;
    margin-top: 3px;
    margin-right: 0px;
    margin-bottom: 6px;
    margin-left: 0px;
}
.jBkVAv {
    width: 100%;
    color: rgb(102, 102, 102);
    font-size: 14px;
    font-weight: 300;
    line-height: 20px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
path[Attributes Style] {
    d: path("M 14.1586 9.39199 V 8.35799 H 5.30362 V 9.39199 H 14.1586 Z M 13.3336 13.825 V 12.769 H 7.67962 V 12.318 H 13.0366 V 9.94199 H 6.37062 V 10.954 H 11.7606 V 11.416 H 6.39262 V 13.825 H 13.3336 Z M 13.2456 7.89599 V 6.88399 H 11.8816 L 12.1346 5.75099 L 10.8916 5.57499 L 10.6826 6.88399 H 8.75762 L 8.60362 5.57499 L 7.34962 5.75099 L 7.54762 6.88399 H 6.18362 V 7.89599 H 13.2456 Z M 13.2676 5.29999 V 4.28799 H 6.15062 V 5.29999 H 13.2676 Z");
    fill: white;
}
path[Attributes Style] {
    d: path("M 19.8212 11.361 L 19.6892 10.327 C 18.4132 10.569 16.8732 10.613 15.9602 10.613 V 8.57799 H 19.0072 V 4.90399 H 14.6622 V 5.92699 H 17.6982 V 7.55499 H 14.6732 V 11.669 H 15.7072 C 17.3682 11.669 18.7872 11.559 19.8212 11.361 Z M 22.4172 13.869 V 4.06799 H 21.1412 V 7.69799 H 19.6562 V 8.77599 H 21.1412 V 13.869 H 22.4172 Z");
    fill: white;
}
path[Attributes Style] {
    d: path("M 32.1938 12.593 V 11.57 H 23.3388 V 12.593 H 32.1938 Z M 32.0068 8.57799 C 30.5108 8.32499 28.4428 7.03799 28.4428 5.31099 V 4.66199 H 27.1008 V 5.31099 C 27.1008 7.04899 25.1538 8.34699 23.5478 8.57799 L 24.1528 9.62299 C 25.5058 9.32599 27.2548 8.28099 27.7608 6.96099 C 28.3218 8.24799 30.0158 9.27099 31.3578 9.57899 L 32.0068 8.57799 Z");
    fill: white;
}
path[Attributes Style] {
    d: path("M 38.5 5.5 V 12.5 M 35 9 H 42");
    stroke: white;
    stroke-width: 1.2;
}
.glovZ > span {
    vertical-align: middle;
}
.glovZ {
    color: rgb(34, 34, 34);
    font-size: 20px;
    font-weight: 700;
    line-height: 25px;
    margin: 3px 0px 6px;
}

section.mapView .container{
	position: inherit;
}
section.mapView .gftUiJ {
    width: 100%;
    min-width: 1366px;
    position: absolute;
    top: 136px;
    bottom: 0px;
    left: 0px;
    right: 0px;
}
section.mapView .gkpTsu {
    width: 512px;
    box-shadow: rgba(0, 0, 0, 0.18) 1px 0px 1px 0px;
    position: absolute;
    top: 0px;
    bottom: 0px;
    left: 0px;
    /* z-index: 3; */
}

section.mapView .eXwtu {
    width: 100%;
    height: 100%;
    position: relative;
}
section.mapView .kkLYaw {
    width: 100%;
    position: absolute;
    top: 73px;
    right: 0px;
    bottom: 0px;
    left: 0px;
    overflow:scroll;
}
section.mapView .kkLYaw > div {
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
section.mapView .esEURt {
    width: 27px;
    height: 3px;
    position: relative;
    margin: 13px auto 16px;
}

section.mapView .esEURt > p {
    width: 3px;
    height: 3px;
    background-color: rgb(216, 216, 216);
    margin: 0px auto;
    border-radius: 50%;
}

section.mapView .esEURt > p::before {
    left: 0px;
}

section.mapView .esEURt > p::before, .esEURt > p::after {
    content: "";
    width: 3px;
    height: 3px;
    background-color: rgb(216, 216, 216);
    position: absolute;
    top: 0px;
    border-radius: 50%;
}

section.mapView .HggYs {
    width: 20px;
    height: 50px;
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
    box-shadow: rgba(0, 0, 0, 0.18) 2px 1px 2px -1px;
    background-color: rgb(255, 255, 255);
    position: absolute;
    top: 40%;
    right: -19px;
    z-index: 3;
    border-width: 0px;
    border-style: initial;
    border-color: initial;
    border-image: initial;
}

section.mapView .esEURt > p::after {
    right: 0px;
}
section.mapView .esEURt::after {
    display: block;
    content: "";
    clear: both;
}

section.mapView .kkLYaw > div > p {
    color: rgb(170, 170, 170);
    font-size: 17px;
    white-space: pre;

}
section.mapView .jLBlsX {
    height: 73px;
    margin: 0px 30px;
    padding: 33px 0px 20px;
    border-bottom: 1px solid rgb(238, 238, 238);

}
section.mapView .hXdylP {
    display: inline-block;
    height: 20px;
    color: rgb(34, 34, 34);
    font-size: 22px;
    font-weight: 500;
    line-height: 20px;
    cursor: default;

}
section.mapView .hXdylP + a {
    margin-left: 14px;
    padding-left: 14px;
    border-left: 1px solid rgb(221, 221, 221);

}
section.mapView .herjpP {
    display: inline-block;
    height: 20px;
    color: rgb(197, 197, 197);
    font-size: 22px;
    font-weight: 400;
    line-height: 20px;
    cursor: pointer;
}
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
    stroke: rgb(34, 34, 34);
    transform: translateY(-50%) rotate(0deg);

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
    font-: 14px;
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
	position: absolute;
    top: 0px;
    right: 0px;
    bottom: 0px;
    left: 512px;
    /* z-index: 2; */
    overflow: hidden;
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
				<input autocomplete="off" type="text" id="mapName" name="keyword" class="styled__Input-sc-1pc2wuh-1 keOJyH" placeholder="잠실동 아파트">
					<svg width="18" height="18" viewBox="0 0 18 18" id="mapSelect">
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
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="원룸" checked="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">원룸</span>
							</label>
						</li>
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="투쓰리룸" checked="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">투·쓰리룸</span>
							</label>
						</li>
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="오피스텔" checked="">
								<span class="CheckBox"></span>
								<span class="styled__Text-sc-1eqdfqp-2 kMvalg">오피스텔</span>
							</label>
						</li>
					</ul>
					<ul class="styled__Ul-sc-1eqdfqp-0 hpBewf">
						<li>
							<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
								<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="multi_room_type" value="아파트">
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
			<!-- <div class="styled__Wrap-sc-1a98puu-0 hWgOZv" tabindex="0">
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
								<li>
									<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi"	size="22">
										<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW"	name="selling_type" value="월세" checked="">
										<span class="CheckBox"></span>
										<span class="styled__Text-sc-7qrnpy-1 nmQzi">월세</span>
									</label>
								</li>
								<li>
									<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi"	size="22">
										<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="selling_type" value="전세" checked="">
										<span class="CheckBox"></span>
										<span class="styled__Text-sc-7qrnpy-1 nmQzi">전세</span>
									</label>
								</li>
								<li>
									<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi"	size="22">
										<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW"	name="selling_type" value="매물" checked="">
										<span class="CheckBox"></span>
										<span class="styled__Text-sc-7qrnpy-1 nmQzi">매매</span>
									</label>
								</li>
							</ul>
						</div> -->			
			
		</div>
	</div>
	<div class="styled__Wrap-zfi8ji-0 gftUiJ">
		<div class="styled__ListWrap-zfi8ji-1 gkpTsu">
			<div class="styled__Wrap-ityzo6-0 eXwtu">
				<div class="styled__Tabs-sc-1sk8lv8-0 jLBlsX">
					<a class="hXdylP">조건에 맞는 방 ${fn:length(mid.list)}개</a>						
				</div> 
				
				
				<!-- <div class="styled__NoRoom-ityzo6-2 kkLYaw">
					<div>
						<svg width="46" height="43" viewBox="0 0 46 43">
							<g fill="none" fill-rule="evenodd">
							<path stroke="#B3B3B3" stroke-dasharray="1,3"
								stroke-linecap="round" d="M5.497 16.505V42.5H40.52V16.048"></path>
							<path fill="#FFF" fill-rule="nonzero" d="M36 20h7.796v16.892H36z"></path>
							<path stroke="#B3B3B3" stroke-dasharray="1,3"
								stroke-linecap="round" d="M17.503 42.497v-15h11.019v15"></path>
							<path fill-rule="nonzero" stroke="#B3B3B3" stroke-dasharray="1,3"
								stroke-linecap="round" d="M0 20L23 0l23 20M10 15.478L19.855 7"></path>
							<g fill="#B3B3B3" fill-rule="nonzero">
							<path d="M36.11 24.904l8.486 8.485-.707.707-8.485-8.485z"></path>
							<path d="M35.404 33.39l8.485-8.486.707.707-8.485 8.485z"></path></g></g></svg>
						<div class="styled__Dots-ityzo6-3 esEURt">
							<p></p>
						</div>
						<p>조건에 맞는 방이 없습니다.</p>
						<p>맞춤필터를 해제해보세요.</p>
					</div>
				</div> -->
					<ul class="styled__Ul-ityzo6-5 fxRDHg">							
					<c:forEach var="v" items="${mid.list}" varStatus="i">
						
						 <li class="Mmhsh">
							<div class="styled__Card-fi3k4t-0 OUJOU">
								<div class="styled__BtnWrap-sc-3yrk4m-0 gYMri">								</div>
								<a target="_blank" rel="noopener noreferrer" class="styled__A-fi3k4t-1 kpKjGs" href="/shop/itemView?shopItemIdx=${v.shopItemIdx }">								
								<div class="styled__RoomImg-fi3k4t-2 RoomImg bnManG">
									
										<img class ="itemImage" src="${mid.imgList[i.count -1]}">
								
								</div>
								<div class="styled__BadgeWrap-fi3k4t-3 gAdXIp">
									<c:if test="${v.shopItemPremiumState eq 1 }">
										<svg class="styled__Svg-sc-1t9oqsb-0 hhLAzQ" viewBox="0 0 46 18" fill="none">
											<rect width="46" height="18" rx="2" fill="#CDAF84"></rect>
											<path d="M14.1586 9.39199V8.35799H5.30362V9.39199H14.1586ZM13.3336 13.825V12.769H7.67962V12.318H13.0366V9.94199H6.37062V10.954H11.7606V11.416H6.39262V13.825H13.3336ZM13.2456 7.89599V6.88399H11.8816L12.1346 5.75099L10.8916 5.57499L10.6826 6.88399H8.75762L8.60362 5.57499L7.34962 5.75099L7.54762 6.88399H6.18362V7.89599H13.2456ZM13.2676 5.29999V4.28799H6.15062V5.29999H13.2676Z" fill="white"></path>
											<path d="M19.8212 11.361L19.6892 10.327C18.4132 10.569 16.8732 10.613 15.9602 10.613V8.57799H19.0072V4.90399H14.6622V5.92699H17.6982V7.55499H14.6732V11.669H15.7072C17.3682 11.669 18.7872 11.559 19.8212 11.361ZM22.4172 13.869V4.06799H21.1412V7.69799H19.6562V8.77599H21.1412V13.869H22.4172Z" fill="white"></path>
											<path d="M32.1938 12.593V11.57H23.3388V12.593H32.1938ZM32.0068 8.57799C30.5108 8.32499 28.4428 7.03799 28.4428 5.31099V4.66199H27.1008V5.31099C27.1008 7.04899 25.1538 8.34699 23.5478 8.57799L24.1528 9.62299C25.5058 9.32599 27.2548 8.28099 27.7608 6.96099C28.3218 8.24799 30.0158 9.27099 31.3578 9.57899L32.0068 8.57799Z" fill="white"></path>
											<path d="M38.5 5.5V12.5M35 9H42" stroke="white" stroke-width="1.2"></path>
										</svg>
									</c:if>
									<div class="styled__ConfirmBadge-fi3k4t-4 gekGFB" type="confirm">
										<span>확인매물</span>
										<font>${v.shopItemRegDate }</font>
									</div>
								</div>
								<p class="styled__RoomType-fi3k4t-8 kCTBqT styled__Text-fi3k4t-7 jBkVAv">${v.shopItemType1 }</p>
								<p class="styled__Price-fi3k4t-9 glovZ styled__Text-fi3k4t-7 jBkVAv">
									<span>${v.shopItemDealType} ${v.shopItemDeposit}/${v.shopItemDealPrice }</span>
								</p>
								<c:choose>
									<c:when test="${v.shopItemType1 eq '원룸'}"><p class="styled__Text-fi3k4t-7 jBkVAv">${v.shopItemFloor1 }층, ${v.shopItemSize2 }m², 관리비 ${v.shopItemManagePrice }만</p></c:when>
									<c:when test="${v.shopItemType1 eq '투룸'}"><p class="styled__Text-fi3k4t-7 jBkVAv">${v.shopItemFloor1 }층, ${v.shopItemSize2 }m², 관리비 ${v.shopItemManagePrice }만</p></c:when>
									<c:when test="${v.shopItemType1 eq '쓰리룸'}"><p class="styled__Text-fi3k4t-7 jBkVAv">${v.shopItemFloor1 }층, ${v.shopItemSize2 }m², 관리비 ${v.shopItemManagePrice }만</p></c:when>
									<c:when test="${v.shopItemType1 eq '오피스텔'}"><p class="styled__Text-fi3k4t-7 jBkVAv">${v.shopItemFloor2 }층, ${v.shopItemSize4 }m², 관리비 ${v.shopItemManagePrice }만</p></c:when>
									<c:when test="${v.shopItemType1 eq '아파트'}"><p class="styled__Text-fi3k4t-7 jBkVAv">${v.shopItemFloor2 }층, ${v.shopItemSize4 }m²</p></c:when>
								</c:choose>								
								<p class="styled__Text-fi3k4t-7 jBkVAv">${v.shopItemContent }</p>
							</a>
						</div>
					</li> 					
					</c:forEach> 
				</ul>				
			</div>
		</div>
		<input type="hidden" class="wow" value="${shopItemAddr1 }">
		<div class="map_wrap">
				<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>				
				<div class="custom_zoomcontrol radius_border">
					<span onclick="zoomIn()">
						<img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"	alt="확대">
					</span> 
					<span onclick="zoomOut()">
						<img src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소">
					</span>
				</div>
				 <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
    </div>
		</div>
	</div>			
		<div id="coordXY"></div>
			<p>
				<a href="https://map.kakao.com/link/search/kh 정보교육원">kh 정보교육원 바로	이동</a>
				
				<c:forEach var="v" items="${mid.list}" varStatus="i">					
					<span class="test2" style="display:none">${v.shopItemTitle }</span>
					<span class="test1" style="display:none">${v.shopItemIdx}</span>
					<span class="test" style="display:none">${v.shopItemAddr1 }</span>
				</c:forEach>
			</p>			
		</div>
		<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
		</div>
	</section>
</body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=172ed9cf73c3423204ded79275b828ba&libraries=services,clusterer,drawing"></script>
<script>	
	
	var address = document.getElementById("address");
	var coordXY = document.getElementById("coordXY");
	var x, y = "";
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.566826005485716, 126.9786567859313),
		level : 20
	};
	var map = new kakao.maps.Map(container, options);	
	function zoomIn() {
		map.setLevel(map.getLevel() - 1);
	}	
	function zoomOut() {
		map.setLevel(map.getLevel() + 1);
	}	
		
	var positions = [ 
	{
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
	}, 
	{
		latlng : new kakao.maps.LatLng(37.88532578582254, 127.72982901035823),
		name : "강원도"
	}

	];
	
	
	var overlay = new kakao.maps.CustomOverlay({}); 	
			
	
	function makeOverListener(map,position, overlay) {
	    return function() {	    	
	    	overlay.setMap(map);
	    };
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(overlay) {
	    return function() {	    	
	    	 overlay.setMap(null);
	    };
	}		
	
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
		if($(".test").html()!=""){
			console.log("하이");
			var geocoder = new daum.maps.services.Geocoder();
			console.log($(".test").length);
			for(var i=0;i<$(".test").length;i++){				
				geocoder.addressSearch($(".test").eq(i).html(), function(result, status) {	
					// 정상적으로 검색이 완료됐으면,
					if (status == daum.maps.services.Status.OK) {			
						var coords = new daum.maps.LatLng(result[0].y, result[0].x);
						y = result[0].x;
						x = result[0].y;
						var moveLatLon = new kakao.maps.LatLng(x, y);													   
					}
				});
			}
		}
		var wow = $(".wow").val();		
		var mapView=$(".fxRDHg");
		mapView.html("");
		var str="";
		var geocoder = new daum.maps.services.Geocoder();
		geocoder.addressSearch(wow, function(result, status) {	
			// 정상적으로 검색이 완료됐으면,
			if (status == daum.maps.services.Status.OK) {			
				var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				y = result[0].x;
				x = result[0].y;
				var moveLatLon = new kakao.maps.LatLng(x, y);
				map.setCenter(moveLatLon);
				map.panTo(moveLatLon);
				map.setLevel(3);
			}
		});
		$.ajax({		
			url:"/mapSelectOne",			
			data:{shopItemAddr1:wow},			
			success : function(data){
				console.log("성공");
				$(".hXdylP").text("조건에 맞는 방 "+data.list.length+"개");	
			if(data.list!=""){
				var msg="";									
				for(var i=0;i<data.list.length;i++){
					var hi=data.list[i].shopItemDealType;
					if(hi=="월세"){
						msg=data.list[i].shopItemDeposit+"/"+data.list[i].shopItemDealPrice;
					}else{
						msg=data.list[i].shopItemDealPrice;
					}					
					str+="<li class='Mmhsh'>";
					str+="<div class='styled__Card-fi3k4t-0 OUJOU'>";
					str+="<div class='styled__BtnWrap-sc-3yrk4m-0 gYMri'>";
					str+="</div>";
					str+="<a target='_blank' rel='noopener noreferrer' class='styled__A-fi3k4t-1 kpKjGs' href='/shop/itemView?shopItemIdx="+data.list[i].shopItemIdx+"'>";								
					str+="<div class='styled__RoomImg-fi3k4t-2 RoomImg bnManG'><img class ='itemImage' src='"+data.imgList[i]+"'></div>";
					str+="<div class='styled__BadgeWrap-fi3k4t-3 gAdXIp'>";
					if(data.list[i].shopItemPremiumState=='1'){
					str+="<svg class='styled__Svg-sc-1t9oqsb-0 hhLAzQ' viewBox='0 0 46 18' fill='none'>";
					str+="<rect width='46' height='18' rx='2' fill='#CDAF84'></rect>";
					str+="<path d='M14.1586 9.39199V8.35799H5.30362V9.39199H14.1586ZM13.3336 13.825V12.769H7.67962V12.318H13.0366V9.94199H6.37062V10.954H11.7606V11.416H6.39262V13.825H13.3336ZM13.2456 7.89599V6.88399H11.8816L12.1346 5.75099L10.8916 5.57499L10.6826 6.88399H8.75762L8.60362 5.57499L7.34962 5.75099L7.54762 6.88399H6.18362V7.89599H13.2456ZM13.2676 5.29999V4.28799H6.15062V5.29999H13.2676Z' fill='white'></path>"
					str+="<path d='M19.8212 11.361L19.6892 10.327C18.4132 10.569 16.8732 10.613 15.9602 10.613V8.57799H19.0072V4.90399H14.6622V5.92699H17.6982V7.55499H14.6732V11.669H15.7072C17.3682 11.669 18.7872 11.559 19.8212 11.361ZM22.4172 13.869V4.06799H21.1412V7.69799H19.6562V8.77599H21.1412V13.869H22.4172Z' fill='white'></path>"
					str+="<path d='M32.1938 12.593V11.57H23.3388V12.593H32.1938ZM32.0068 8.57799C30.5108 8.32499 28.4428 7.03799 28.4428 5.31099V4.66199H27.1008V5.31099C27.1008 7.04899 25.1538 8.34699 23.5478 8.57799L24.1528 9.62299C25.5058 9.32599 27.2548 8.28099 27.7608 6.96099C28.3218 8.24799 30.0158 9.27099 31.3578 9.57899L32.0068 8.57799Z' fill='white'></path>"
					str+="<path d='M38.5 5.5V12.5M35 9H42' stroke='white' stroke-width='1.2'></path>";
					str+="</svg>";
					}
					str+="<div class='styled__ConfirmBadge-fi3k4t-4 gekGFB' type='confirm'>";
					str+="<span>확인매물</span>";
					str+="<font>"+data.list[i].shopItemRegDate+"</font></div></div>";
					str+="<p class='styled__RoomType-fi3k4t-8 kCTBqT styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemType1+"</p>";
					str+="<p class='styled__Price-fi3k4t-9 glovZ styled__Text-fi3k4t-7 jBkVAv'>";
					str+="<span>"+data.list[i].shopItemDealType+" "+msg+"</span></p>";
					switch(data.list[i].shopItemType1){
						case '원룸':str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor1+"층,"+data.list[i].shopItemSize2+"m², 관리비 "+data.list[i].shopItemManagePrice+"만 </p>";break;
						case '투룸':str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor1+"층,"+data.list[i].shopItemSize2+"m², 관리비 "+data.list[i].shopItemManagePrice+"만 </p>";break;
						case '쓰리룸':str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor1+"층,"+data.list[i].shopItemSize2+"m², 관리비 "+data.list[i].shopItemManagePrice+"만 </p>";break;
						case '오피스텔':str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor2+"층,"+data.list[i].shopItemSize4+"m², 관리비 "+data.list[i].shopItemManagePrice+"만 </p>";break;
						case '아파트':str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor2+"층,"+data.list[i].shopItemSize4+"m²</p>";break;
					};							
					str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemContent+"</p></a></div></li>";
					}
				mapView.append(str);
				}else if(data.list==""){
					str = "";
					str+="<div class='styled__NoRoom-ityzo6-2 kkLYaw'>";
					str+="<div><svg width='46' height='43' viewBox='0 0 46 43'>";
					str+="<g fill='none' fill-rule='evenodd'>";
					str+="<path stroke='#B3B3B3' stroke-dasharray='1,3'";
					str+="stroke-linecap='round' d='M5.497 16.505V42.5H40.52V16.048'></path>";
					str+="<path fill='#FFF' fill-rule='nonzero' d='M36 20h7.796v16.892H36z'></path>";
					str+="<path stroke='#B3B3B3' stroke-dasharray='1,3'";
					str+="stroke-linecap='round' d='M17.503 42.497v-15h11.019v15'></path>";
					str+="<path fill-rule='nonzero' stroke='#B3B3B3' stroke-dasharray='1,3'"
					str+="stroke-linecap='round' d='M0 20L23 0l23 20M10 15.478L19.855 7'></path>"
					str+="<g fill='#B3B3B3' fill-rule='nonzero'>";
					str+="<path d='M36.11 24.904l8.486 8.485-.707.707-8.485-8.485z'></path>";
					str+="<path d='M35.404 33.39l8.485-8.486.707.707-8.485 8.485z'></path></g></g></svg>";
					str+="<div class='styled__Dots-ityzo6-3 esEURt'>";
					str+="<p></p></div><p>조건에 맞는 방이 없습니다.</p><p>맞춤필터를 해제해보세요.</p></div></div>" ;													
					mapView.append(str);
				}		
			}
		 });
			
		
		$(".customoverlay").click(function(){					
			var strArray=$(this).children().val().split(',');
			var string = strArray[0];
			var string2 = strArray[1];
			var strArray2 = string.split('(');
			var strArray3 = string2.split(')');
			map.panTo(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			map.setCenter(new kakao.maps.LatLng(strArray2[1], strArray3[0]));							
			map.setLevel(8);
		});
		map.setLevel(9);
	});	
	 var geocoder = new daum.maps.services.Geocoder();	 
	kakao.maps.event.addListener(map, 'zoom_changed', function() {		
			if (map.getLevel() >10) {
				clusterer.clear();
				$(".customoverlay").css("display","block");				
			}else {
				clusterer.clear();			
				$(".customoverlay").css("display","none");
				
			 var geocoder = new daum.maps.services.Geocoder();
						for(var i=0;i<$(".test").length;i++){							
							geocoder.addressSearch($(".test").eq(i).html(), function(result, status) {	
								// 정상적으로 검색이 완료됐으면,
								if (status == daum.maps.services.Status.OK) {			
									var coords = new daum.maps.LatLng(result[0].y, result[0].x);									
									var marker = new kakao.maps.Marker({
										position:coords
									});						
									clusterer.addMarker(marker); //DB 주소값 받아와서 저장하는 구문									
									kakao.maps.event.addListener(marker, 'click', function() {							
										map.setCenter(marker.getPosition());
										
										
									});									
									var content = '<div class="wrap">' + 
							        '    <div class="info">' + 
							        '        <div class="title">'+							         
							        '        </div>' + 
							        '        <div class="body">' + 
							        '            <div class="img">' +
							        '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
							        '           </div>' + 
							        '            <div class="desc">' + 
							        '                <div class="ellipsis">'+result[0].address_name+'</div>' + 
							        '                <div class="jibun ellipsis">(우) '+result[0].address.zip_code+' (지번) '+result[0].address.region_3depth_name+" "+result[0].address.main_address_no +'</div>' +
							        '            </div>' + 
							        '        </div>' + 
							        '    </div>' +    
							        '</div>';				        
									overlay = new kakao.maps.CustomOverlay({});
									overlay.setContent(content);						
									overlay.setPosition(coords);
								    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map,coords,overlay));
								    kakao.maps.event.addListener(marker, 'mouseout',makeOutListener(overlay));				   
								}
							});
						}
					}						
	
		});	 		
	
	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
		var level = map.getLevel() - 3;
		map.setLevel(level, {
			anchor : cluster.getCenter()
		});
	});
	$(document).ready(function(){				
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
	
			
	
	
	
		
	
	

</script>
<script src="/guest/js/map/map.js"></script>
</html>