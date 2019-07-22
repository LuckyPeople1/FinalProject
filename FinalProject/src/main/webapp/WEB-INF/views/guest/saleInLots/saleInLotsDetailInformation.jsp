<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLotsDetailInformation">
			<div class="web">
				<div class="DetailInformation_header" style="min-height: 0px;">
					<div class="DetailInformation_Box">
						<div class="DetailInformation_leftHeader">
							<div class="leftHeader_content_01">
								<c:if test="${saleVO.saleInLotsState == '분양예정'}">
								<span class="detail_state">${saleVO.saleInLotsState }</span>
								</c:if>
								<c:if test="${saleVO.saleInLotsState == '분양중'}">
								<span class="detail_state red">${saleVO.saleInLotsState }</span>
								</c:if>
								<c:if test="${saleVO.saleInLotsState == '입주모집'}">
								<span class="detail_state green">${saleVO.saleInLotsState }</span>
								</c:if>
								<c:if test="${saleVO.saleInLotsState == '준비중'}">
								<span class="detail_state gray">${saleVO.saleInLotsState }</span>
								</c:if>
								<h1 class="detail_name">${saleVO.saleInLotsName }</h1>
								<p class="detail_area">${saleVO.saleInLotsDetailArea }</p>
							</div>
							<div class="leftHeader_content_02">
								<span class="detail_buildType">${saleVO.saleInLotsBuildType }</span>
								<p class="detail_price minprice">분양가 : ${saleVO.saleInLotsPriceMinAll}</p>
								<p class="detail_price maxprice">분양가 : ${saleVO.saleInLotsPriceMaxAll}</p>
							</div>
						</div>
						<ul class="DetailInformation_rightHeader">
							<li class="right_item">
								<p class="item_title">총 세대수</p>
								<p class="item_text">${saleVO.saleInLotsHousehold}세대</p>
							</li>
							<li class="right_item">
								<p class="item_title">분양 세대수</p>
								<p class="item_text">${saleVO.saleInLotsSaleHousehold}세대</p>
							</li>
							<li class="right_item">
								<p class="item_title">최저 - 최고층</p>
								<p class="item_text">${saleVO.saleInLotsMinFloor } - ${saleVO.saleInLotsMaxFloor }</p>
							</li>
							<li class="right_item">
								<p class="item_title">단지규모</p>
								<p class="item_text">${saleVO.saleInLotsHouseScale }</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="DetailInformation_btn">
					<button class="ContactBtn">
						<svg width="18" height="18" viewBox="0 0 18 18">
							<path fill="#222" fill-rule="evenodd"
								d="M4.324.404c.328.457.689.979 1.081 1.565.393.586.818 1.236 1.275 1.95.117.188.167.4.15.634a1.834 1.834 0 0 1-.256.756c-.058.117-.158.304-.299.562L5.73 6.873c.247.352.56.744.94 1.178.382.433.824.902 1.328 1.406.516.516.987.964 1.415 1.345.428.38.812.694 1.151.94.399-.234.73-.425.994-.571.263-.147.454-.25.57-.308.142-.082.285-.143.432-.184.146-.041.284-.062.413-.062a1.066 1.066 0 0 1 .545.14c.527.317 1.084.672 1.67 1.064.585.393 1.212.824 1.88 1.292.118.082.211.188.282.317.07.129.117.27.14.422.012.164-.006.33-.052.5-.047.17-.13.343-.247.52a2.446 2.446 0 0 1-.21.298 19.35 19.35 0 0 1-.335.404c-.117.153-.269.325-.457.519-.187.193-.41.407-.668.641-.246.235-.471.41-.676.528-.205.117-.384.175-.536.175h-.036a6.392 6.392 0 0 1-1.916-.395 11.957 11.957 0 0 1-2.109-1.028 19.487 19.487 0 0 1-2.32-1.67 38.968 38.968 0 0 1-2.532-2.303A34.717 34.717 0 0 1 3.085 9.51a20.91 20.91 0 0 1-1.67-2.32A11.08 11.08 0 0 1 .387 5.07C.152 4.397.023 3.761 0 3.164 0 3 .059 2.815.176 2.61c.117-.205.293-.436.527-.694.235-.258.445-.478.633-.66.187-.18.357-.33.51-.447.14-.106.275-.205.404-.3.129-.093.24-.175.334-.245.129-.094.264-.161.404-.202C3.128.02 3.281 0 3.445 0c.188 0 .355.032.501.097a.947.947 0 0 1 .378.307zm-1.145.694a8.368 8.368 0 0 0-.688.538c-.223.194-.44.397-.652.609-.212.211-.38.394-.503.546a1.349 1.349 0 0 0-.238.389c.023.529.147 1.093.37 1.693.224.6.547 1.238.97 1.914.424.676.947 1.388 1.57 2.135a35.836 35.836 0 0 0 2.17 2.355 35.836 35.836 0 0 0 2.355 2.17 19.601 19.601 0 0 0 2.135 1.57c.676.423 1.317.746 1.923.97a6.12 6.12 0 0 0 1.702.388c.082-.035.2-.118.353-.247.153-.13.335-.3.547-.512.212-.211.411-.432.6-.661.188-.23.37-.462.547-.697a.417.417 0 0 0 .07-.132.19.19 0 0 0 0-.115 71.472 71.472 0 0 0-1.879-1.288c-.57-.376-1.085-.711-1.543-1.005-.047 0-.1.009-.159.026a1.231 1.231 0 0 0-.194.08c-.094.058-.27.158-.53.3l-1.005.546-.582.353-.582-.388c-.377-.259-.791-.59-1.244-.997-.453-.405-.95-.879-1.49-1.42a40.393 40.393 0 0 1-1.394-1.49c-.4-.453-.73-.868-.988-1.244l-.423-.547.352-.617a101.22 101.22 0 0 1 .847-1.535c.035-.07.062-.135.08-.194a.559.559 0 0 0 .026-.159c-.412-.647-.803-1.252-1.173-1.817a81.447 81.447 0 0 0-1.067-1.588h-.036a.48.48 0 0 0-.132.018.407.407 0 0 0-.115.053z"></path>
						</svg>
						<span>연락처보기</span>
					</button>
					<p class="dot">•</p>
					<p class="favoritAdd">
						<svg width="23" height="22" viewBox="0 0 23 22">
							<g fill="none" fill-rule="evenodd" stroke="#000">
								<path
								d="M12.988 2.25A8.003 8.003 0 0 1 19 10v7.437l2 3.048H1l2-3.038V10a8.003 8.003 0 0 1 6.012-7.75C9.119 1.266 9.969.502 11 .502c1.031 0 1.88.764 1.988 1.746zM8.5 20.5h5v.5a2.5 2.5 0 1 1-5 0v-.5z"></path>
								<path stroke-linecap="round"
								d="M5 1c-1.516.573-2.516 1.573-3 3M17 1c1.516.573 2.516 1.573 3 3"></path>
							</g>
						</svg>
					</p>
					<p class="copyBtn">
						<svg width="15" height="22" viewBox="0 0 15 22">
							<g fill="none" fill-rule="evenodd" stroke="#000"
								stroke-linecap="round">
								<path
								d="M10.974 7.968V4.561a3.192 3.192 0 0 0-6.384 0v4.56a3.192 3.192 0 0 0 3.192 3.192"></path>
								<path
								d="M4.646 13.842v3.408a3.192 3.192 0 1 0 6.384 0v-4.56a3.192 3.192 0 0 0-3.192-3.193"></path>
							</g>
						</svg>
					</p>
					<a class="noticeBtn" href="#none" target="_blank"> <svg
							width="32" height="14" viewBox="0 0 32 14">
							<g fill="none" fill-rule="evenodd">
								<rect width="32" height="14" fill="#444" rx="1"></rect>
								<text fill="#FFF"
								font-family="NotoSansCJKkr-Black, Noto Sans CJK KR"
								font-size="9" font-weight="700">
									<tspan x="6.82" y="10">PDF</tspan>
								</text>
							</g>
						</svg> <span>입주 공고문 보기</span>
					</a>
				</div>
				<div class="info_content">
					<div class="infoBox">
						<table class="info_table">
							<colgroup>
								<col style="width: 100px;">
								<col style="width: 195px;">
								<col style="width: 100px;">
								<col style="width: 195px;">
								<col style="width: 100px;">
								<col style="width: 195px;">
								<col style="width: 100px;">
								<col style="width: 195px;">
							</colgroup>
							<tbody>
								<tr>
									<th>건물유형</th>
									<td>${saleVO.saleInLotsBuildType }</td>
									<th>공급유형</th>
									<td>${saleVO.saleInLotsSupplyType }</td>
									<th>건설사</th>
									<td>${saleVO.saleInLotsConstructor }</td>
									<th>시행사</th>
									<td>${saleVO.saleInLotsDeveloper }</td>
								</tr>
								<tr>
									<th>전매가능 여부</th>
									<td>-</td>
									<th>규제지역</th>
									<td>-</td>
									<th>분양가상한제</th>
									<td>-</td>
									<th>규제기간</th>
									<td>-</td>
								</tr>
								<tr>
									<th>공급면적</th>
									<td>${saleVO.saleInLotsMinSupplyArea}㎡ / ${saleVO.saleInLotsMaxSupplyArea}㎡</td>
									<th>모집공고일</th>
									<td>${saleVO.saleInLotsRecruitmentDate }</td>
									<th>분양시작일</th>
									<td>${saleVO.saleInLotsStartDate }</td>
									<th></th>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="info_content">
					<div class="infoBox">
						<div class="noImgBox">
							<div class="noImg">
								<div></div>
								<p>이미지를 준비중입니다</p>
							</div>
						</div>
					</div>
				</div>
				<a class="hiddenLink"></a>
				<div class="stickyGroup" style="border-top: 1px solid rgb(211,211,211); border-bottom: 0px; right: auto;" >
					<div class="stikey_infoBar">
						
					</div>
				</div>
				<div style="padding-top: 0px;">
					<div class="detailPrice_content">
						<div class="detailPrice_contentBox DetailInformation_Box">
							<h1 class="price_title">가격정보</h1>
							<ul class="price_box">
								<li>
									<div class="price_msgBox">
										<p class="price_msgTitle">분양가</p>
										<p class="price_msgText"><span class="minprice2">${saleVO.saleInLotsPriceMinAll }</span> ~ <span class="maxprice2">${saleVO.saleInLotsPriceMaxAll }</span></p>
									</div>
								</li>
								<li>
									<div class="price_msgBox">
										<p class="price_msgTitle">평당가</p>
										<p class="price_msgText priceOne">${saleVO.saleInLotsPriceOne }<span>/3.3m²당</span></p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>

<script src="/guest/js/saleInLots/saleInLotsDetailInformation.js"></script>
</body>
</html>