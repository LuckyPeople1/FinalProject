<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="moveStep inner">
			
			<div class="sectionTitle">이사정보 정보</div>
			<div class="moveGroup">
				<div class="moveInfoGroup">
					<ul class="moveInputList required">
						<li>
							<c:choose>
							<c:when test="${startInfo != null}">
							<div class="infoGroup on" onclick="location.href='/move/detail?addrType=start'">
								</c:when>
								<c:otherwise>
								<div class="infoGroup" onclick="location.href='/move/addr?addrType=start'">
									</c:otherwise>
									</c:choose>
								<div class="default">
									<div class="iconMark"></div>
									<div class="title">
										<div class="table">
											<div class="tableCell">
												<div class="name">출발지 정보</div>
											</div>
											<div class="tableCell">
												<div class="status">
													<span class="icon-elevator ${startInfo.elevator == "Y" ? 'on' : ''}"></span>
													<span class="icon-parking ${startInfo.parking == "Y" ? 'on' : ''}"></span>
												</div>
											</div>
										</div>
									
									</div>
									<div class="caption">상세 정보 입력</div>
								</div>
								<div class="information">
									<div class="address">${startInfo.addr1} ${startInfo.addr3}</div>
									<ul class="typeList">
										<li class="type">${startInfo.type}</li>
										<li class="separate"></li>
										<li class="structure">${startInfo.structure}</li>
										<li class="separate"></li>
										<li class="size">${startInfo.size}</li>
										<li class="separate"></li>
										<li class="floor">${startInfo.floor}</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<c:choose>
							<c:when test="${endInfo != null}">
							<div class="infoGroup on" onclick="location.href='/move/detail?addrType=end'">
								</c:when>
								<c:otherwise>
								<div class="infoGroup" onclick="location.href='/move/addr?addrType=end'">
									</c:otherwise>
									</c:choose>
									<div class="default">
										<div class="iconMark"></div>
										<div class="title">
											<div class="table">
												<div class="tableCell">
													<div class="name">도착지 정보</div>
												</div>
												<div class="tableCell">
													<div class="status">
														<span class="icon-elevator ${endInfo.elevator == "Y" ? 'on' : ''}" ></span>
														<span class="icon-parking ${endInfo.parking == "Y" ? 'on' : ''}"></span>
													</div>
												</div>
											</div>										
										</div>
										<div class="caption">상세 정보 입력</div>
									</div>
									<div class="information">
										<div class="address">${endInfo.addr1} ${endInfo.addr3}</div>
										<ul class="typeList">
											<li class="type">${endInfo.type}</li>
											<li class="separate"></li>
											<li class="floor">${endInfo.floor}</li>
										</ul>
									</div>
								</div>
						</li>
						<li>
							<div class="infoGroup ${scheduleInfo != null ? 'on' : ''}">
								<div class="default schedule" onclick="location.href='/move/schedule'">
									<div class="iconMark"></div>
									<div class="title">
										<div class="table">
											<div class="tableCell">
												<div class="name">날짜 및 이사 종류</div>
											</div>
										</div>
									
									</div>
									<div class="caption">상세 정보 입력</div>
								</div>
								<div class="information ${scheduleInfo != null ? 'on' : ''}">
									<div class="address"></div>
									<ul class="typeList">
										<li class="date">${scheduleInfo.date}</li>
										<li class="separate"></li>
										<li class="time">${scheduleInfo.time}</li>
										<li class="separate"></li>
										<li class="hope">${scheduleInfo.moveHope}</li>
										<li class="separate"></li>
										<li class="help">${scheduleInfo.moveHelp == "Y" ? '도움 있음' : '도움 없음'}</li>
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
						<form id="frm">
							<div class="imgList">
								<div class="imgBox">
									<input type="file" class="hide" accept="image/*" name="fileImg" id="fileImg" onchange="package.imgSel(this, event)">
									<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				<div class="packageBtnBox">
					<a href="/move/step2" class="btn col_darkGrey f_w big">뒤로가기</a>
					<a href="javascript:package.infoFinish()" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
</div>
<script src="/guest/js/move/package.js"></script>
</body>
</html>