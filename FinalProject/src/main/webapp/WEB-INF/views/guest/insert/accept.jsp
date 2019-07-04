<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<link rel="stylesheet" type="text/css" href="/guest/css/accept-ui.css">
<script src="/guest/js/accept.js"></script>
<section id="accept_section">
	<div class="accept_header">
		<h3>약관 동의</h3>
	</div>
	<div class="accept_content">
		<div class="accept_agreeWrap">
			<div class="accept_agreeTop">
				<label class="accept_agreeLabel">
					<h1>
						다싸 서비스 이용약관 동의
						<span>(필수)</span>
					</h1>
					<input type="checkbox" class="accept_checkBox" name="agree_required">
					<svg class="accept_svg" viewBox= "0 0 31 31">
						<g class="accept_g">
							<g>
								<circle class="circle_fill" ></circle>
								<circle class="circle_border"  ></circle>
							</g>
							<path class="circle_check" d="M7.154 15.369l6.027 6.027L23.846 10.73"></path>
						</g>
					</svg>
				</label>
			</div><!-- acceptAgreeTop -->
			<div class="accept_agreeBox">동의하세요!!</div>
		</div><!-- acceptAgreeWrap -->
		
		<div class="accept_agreeWrap">
			<div class="accept_agreeTop">
				<label class="accept_agreeLabel">
					<h1>
						다싸 서비스 이용약관 동의
						<span>(필수)</span>
					</h1>
					<input type="checkbox" class="accept_checkBox" name="agree_required">
					<svg class="accept_svg" viewBox= "0 0 31 31">
						<g class="accept_g">
							<g>
								<circle class="circle_fill" ></circle>
								<circle class="circle_border"  ></circle>
							</g>
							<path class="circle_check" d="M7.154 15.369l6.027 6.027L23.846 10.73"></path>
						</g>
					</svg>
				</label>
			</div><!-- acceptAgreeTop -->
			<div class="accept_agreeBox">동의하세요!!</div>
		</div><!-- acceptAgreeWrap -->
		
		<div class="accept_agreeWrap">
			<div class="accept_agreeTop">
				<label class="accept_agreeLabel">
					<h1>
						다싸 서비스 이용약관 동의
						<span>(선택)</span>
					</h1>
					<input type="checkbox" class="accept_checkBox" name="agree_option">
					<svg class="accept_svg" viewBox= "0 0 31 31">
						<g class="accept_g">
							<g>
								<circle class="circle_fill" ></circle>
								<circle class="circle_border"></circle>
							</g>
							<path class="circle_check" d="M7.154 15.369l6.027 6.027L23.846 10.73"></path>
						</g>
					</svg>
				</label>
			</div><!-- acceptAgreeTop -->
			<div class="accept_agreeBox">선택 이지만 동의하세요!!</div>
		</div><!-- acceptAgreeWrap -->
		
		
		<div class="accept_agreeAllWrap">
			<label class="accept_agreeAllLabel">
				<p class="accept_agreeAll">모두 동의합니다.</p>
				<input type="checkbox" class="accept_checkBox" name="agree_all">
				<svg class="accept_svg" viewBox= "0 0 31 31">
					<g class="accept_g">
						<g>
							<circle class="circle_fill"></circle>
							<circle class="circle_border"></circle>
						</g>
						<path class="circle_check" d="M7.154 15.369l6.027 6.027L23.846 10.73"></path>
					</g>
				</svg>
			</label>
		</div>
	</div><!-- acceptContent -->
	<button class="accept_button">
		확인
	</button>
	<div class="insert_wrap">
		<button class="common_insert">일반 회원가입</button>
		<button class="driver_insert">운송기사 회원가입</button>
		<button class="shop_insert">부동산 회원가입</button>
	</div>
</section>
<style>
	.insert_wrap{
		width:740px;
		margin-top: 20px;
		margin-left: 30px;
	}
	.insert_wrap .common_insert{
		width: 240px;
		height: 50px;
		color: rgb(255, 255, 255);
		font-size: 17px;
		font-weight: 500;
		background-color: rgb(100, 120, 232);
		border-width: 0px;
		border-style: initial;
		border-color: initial;
		border-image: initial;
	}
	.insert_wrap .driver_insert{
		margin-left:6px;
		width: 240px;
		height: 50px;
		color: rgb(255, 255, 255);
		font-size: 17px;
		font-weight: 500;
		background-color: rgb(100, 120, 232);
		border-width: 0px;
		border-style: initial;
		border-color: initial;
		border-image: initial;
	}
	.insert_wrap .shop_insert{
		margin-left:6px;
		width: 240px;
		height: 50px;
		color: rgb(255, 255, 255);
		font-size: 17px;
		font-weight: 500;
		background-color: rgb(100, 120, 232);
		border-width: 0px;
		border-style: initial;
		border-color: initial;
		border-image: initial;
	}
</style>
</body>
</html>