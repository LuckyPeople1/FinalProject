<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="moveStep inner">
			
			<div class="sectionTitle">이사정보 정보</div>
			<div class="moveGroup">
				<div class="moveInfoGroup">
					<ul class="moveInputList required">
						<li>
							<div class="infoGroup">
								<div class="default">
									<div class="iconMark"></div>
									<div class="title">
										<div class="table">
											<div class="tableCell">
												<div class="name">출발지 정보</div>
											</div>
											<div class="tableCell">
												<div class="status">
													<span class="icon-elevator"></span>
													<span class="icon-parking"></span>
												</div>
											</div>
										</div>
									
									</div>
									<div class="caption">상세 정보 입력</div>
								</div>
								<div class="information">
									<div class="address"></div>
									<ul class="typeList">
										<li class="house"></li>
										<li class="separate"></li>
										<li class="floor"></li>
										<li class="separate"></li>
										<li class="space"></li>
										<li class="separate"></li>
										<li class="floor"></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="infoGroup">
								<div class="default">
									<div class="iconMark"></div>
									<div class="title">
										<div class="table">
											<div class="tableCell">
												<div class="name">도착지 정보</div>
											</div>
											<div class="tableCell">
												<div class="status">
													<span class="icon-elevator"></span>
													<span class="icon-parking"></span>
												</div>
											</div>
										</div>
									
									</div>
									<div class="caption">상세 정보 입력</div>
								</div>
								<div class="information">
									<div class="address"></div>
									<ul class="typeList">
										<li class="house"></li>
										<li class="separate"></li>
										<li class="floor"></li>
										<li class="separate"></li>
										<li class="space"></li>
										<li class="separate"></li>
										<li class="floor"></li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="infoGroup">
								<div class="default schedule">
									<div class="iconMark "></div>
									<div class="title">
										<div class="table">
											<div class="tableCell">
												<div class="name">날짜 및 이사 종류</div>
											</div>
											<div class="tableCell">
												<div class="status">
													<span class="icon-elevator"></span>
													<span class="icon-parking"></span>
												</div>
											</div>
										</div>
									
									</div>
									<div class="caption">상세 정보 입력</div>
								</div>
								<div class="information">
									<div class="address"></div>
									<ul class="typeList">
										<li class="house"></li>
										<li class="separate"></li>
										<li class="floor"></li>
										<li class="separate"></li>
										<li class="space"></li>
										<li class="separate"></li>
										<li class="floor"></li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
					<div class="imgUploadBox">
						<div class="imgUploadTitle">
							사진을 첨부하고 더 정확한 견적을 받으세요!
						</div>
						<div class="imgUploadInfo">
							(최대 12장, 사진 없어도 견적 신청 가능)
						</div>
						<div class="imgList">
							<div class="imgBox">
							
							</div>
						</div>
					</div>
				</div>
				
				<div class="packageBtnBox">
					<a href="javascript:history.back()" class="btn col_darkGrey f_w big">취소</a>
					<a href="#none" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>


</div>
<script src="/guest/js/move/package.js"></script>
</body>
</html>