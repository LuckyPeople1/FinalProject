<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="shopItemView">
			<%-- 헤더  --%>
			<div class="kZTRnS" name="header">
				<div class="kBQneM">
					<ul class="ixyaqW">
						<li class="UuNuJ">
							<p class="hzbdBs">
								<span>${item.shopItemType1}<c:if test="${item.shopItemStructure!=null}">(${item.shopItemStructure})</c:if></span>
							</p>
							<div class="dUILvV">
								<h1 class="dUuerR">${item.shopItemDealType }<c:if test="${item.shopItemDeposit!=null}">${item.shopItemDeposit }/</c:if>${item.shopItemDealPrice }</h1>
								<span class="gYSPds"> 만원</span>
							</div>
						</li>
						<li class="cqojtY">
							<p class="hzbdBs">전용면적</p>
							<div class="dUILvV">
								<h1 class="dUuerR" id="sizeSqm1">
									<c:if test="${item.shopItemType1 eq '원룸'}">${item.shopItemSize2 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '투룸'}">${item.shopItemSize2 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '쓰리룸'}">${item.shopItemSize2 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '오피스텔'}">${item.shopItemSize4 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '아파트'}">${item.shopItemSize4 }㎡</c:if>
								</h1>
								<h1 class="dUuerR" id="sizePyeong1" style="display: none">
									<c:if test="${item.shopItemType1 eq '원룸'}">${item.shopItemSize1 }평</c:if>
									<c:if test="${item.shopItemType1 eq '투룸'}">${item.shopItemSize1 }평</c:if>
									<c:if test="${item.shopItemType1 eq '쓰리룸'}">${item.shopItemSize1 }평</c:if>
									<c:if test="${item.shopItemType1 eq '오피스텔'}">${item.shopItemSize3 }평</c:if>
									<c:if test="${item.shopItemType1 eq '아파트'}">${item.shopItemSize3 }평</c:if>
								</h1>
								<button class="ktfeIl sizeChange">
									<svg width="11" height="23" viewBox="0 0 11 23">
										<g fill="#222" fill-rule="evenodd" stroke="#222" stroke-width=".2">
											<path d="M8.066 8.378L6.955 9.624a.335.335 0 0 0 0 .436.26.26 0 0 0 .194.09c.07 0 .14-.03.194-.09L8.92 8.293c.054-.06.08-.14.08-.22a.32.32 0 0 0-.094-.232l-1.563-1.75a.255.255 0 0 0-.388 0 .334.334 0 0 0 0 .435l1.102 1.236h-5.49c-1.415 0-2.567 1.3-2.567 2.9v1.03c0 .17.123.308.275.308.152 0 .275-.138.275-.308v-1.03c0-1.259.905-2.284 2.018-2.284h5.498zM.934 14.622l1.11-1.246a.335.335 0 0 0 0-.436.26.26 0 0 0-.193-.09c-.07 0-.141.03-.195.09L.08 14.707a.325.325 0 0 0-.08.22.32.32 0 0 0 .093.232l1.563 1.75c.108.121.282.121.389 0a.334.334 0 0 0 0-.435L.942 15.238h5.49c1.416 0 2.567-1.3 2.567-2.9v-1.03c0-.17-.123-.308-.274-.308-.153 0-.275.138-.275.308v1.03c0 1.259-.905 2.284-2.018 2.284H.934z"></path>
										</g>
									</svg>
									<span id='sizeName'>평</span>
								</button>
							</div>
						</li>
						<li class="byeNFK">
							<div	style="float: left;">
								<p class="hhDakc">삼성공인중개사사무소</p>
								<p class="gTIMxh">김재수</p>
							</div>
							<button class="fEkbZe">
								<svg width="18" height="18" viewBox="0 0 18 18">
									<path fill="#222" fill-rule="evenodd" d="M4.324.404c.328.457.689.979 1.081 1.565.393.586.818 1.236 1.275 1.95.117.188.167.4.15.634a1.834 1.834 0 0 1-.256.756c-.058.117-.158.304-.299.562L5.73 6.873c.247.352.56.744.94 1.178.382.433.824.902 1.328 1.406.516.516.987.964 1.415 1.345.428.38.812.694 1.151.94.399-.234.73-.425.994-.571.263-.147.454-.25.57-.308.142-.082.285-.143.432-.184.146-.041.284-.062.413-.062a1.066 1.066 0 0 1 .545.14c.527.317 1.084.672 1.67 1.064.585.393 1.212.824 1.88 1.292.118.082.211.188.282.317.07.129.117.27.14.422.012.164-.006.33-.052.5-.047.17-.13.343-.247.52a2.446 2.446 0 0 1-.21.298 19.35 19.35 0 0 1-.335.404c-.117.153-.269.325-.457.519-.187.193-.41.407-.668.641-.246.235-.471.41-.676.528-.205.117-.384.175-.536.175h-.036a6.392 6.392 0 0 1-1.916-.395 11.957 11.957 0 0 1-2.109-1.028 19.487 19.487 0 0 1-2.32-1.67 38.968 38.968 0 0 1-2.532-2.303A34.717 34.717 0 0 1 3.085 9.51a20.91 20.91 0 0 1-1.67-2.32A11.08 11.08 0 0 1 .387 5.07C.152 4.397.023 3.761 0 3.164 0 3 .059 2.815.176 2.61c.117-.205.293-.436.527-.694.235-.258.445-.478.633-.66.187-.18.357-.33.51-.447.14-.106.275-.205.404-.3.129-.093.24-.175.334-.245.129-.094.264-.161.404-.202C3.128.02 3.281 0 3.445 0c.188 0 .355.032.501.097a.947.947 0 0 1 .378.307zm-1.145.694a8.368 8.368 0 0 0-.688.538c-.223.194-.44.397-.652.609-.212.211-.38.394-.503.546a1.349 1.349 0 0 0-.238.389c.023.529.147 1.093.37 1.693.224.6.547 1.238.97 1.914.424.676.947 1.388 1.57 2.135a35.836 35.836 0 0 0 2.17 2.355 35.836 35.836 0 0 0 2.355 2.17 19.601 19.601 0 0 0 2.135 1.57c.676.423 1.317.746 1.923.97a6.12 6.12 0 0 0 1.702.388c.082-.035.2-.118.353-.247.153-.13.335-.3.547-.512.212-.211.411-.432.6-.661.188-.23.37-.462.547-.697a.417.417 0 0 0 .07-.132.19.19 0 0 0 0-.115 71.472 71.472 0 0 0-1.879-1.288c-.57-.376-1.085-.711-1.543-1.005-.047 0-.1.009-.159.026a1.231 1.231 0 0 0-.194.08c-.094.058-.27.158-.53.3l-1.005.546-.582.353-.582-.388c-.377-.259-.791-.59-1.244-.997-.453-.405-.95-.879-1.49-1.42a40.393 40.393 0 0 1-1.394-1.49c-.4-.453-.73-.868-.988-1.244l-.423-.547.352-.617a101.22 101.22 0 0 1 .847-1.535c.035-.07.062-.135.08-.194a.559.559 0 0 0 .026-.159c-.412-.647-.803-1.252-1.173-1.817a81.447 81.447 0 0 0-1.067-1.588h-.036a.48.48 0 0 0-.132.018.407.407 0 0 0-.115.053z"></path>
								</svg>
								<span>연락처보기</span>
							</button>
						</li>
					</ul>
				</div>
			</div>
			<%-- 디테일 --%>
			<div class=" kZTRnS" name="detail">
				<div class="kBQneM">
					<ul class="iuNQqL" id="list">
						<li class="gWdVQs">
							<p class="gPsGgb">해당층/건물층</p>
							<div class="gbAeEp">
								<c:if test="${item.shopItemType1 eq '원룸'}">${item.shopItemFloor1 }층 / ${item.shopItemFloorAll1 }층</c:if>
									<c:if test="${item.shopItemType1 eq '투룸'}">${item.shopItemFloor1 }층 / ${item.shopItemFloorAll1 }층</c:if>
									<c:if test="${item.shopItemType1 eq '쓰리룸'}">${item.shopItemFloor1 }층 / ${item.shopItemFloorAll1 }층</c:if>
									<c:if test="${item.shopItemType1 eq '오피스텔'}">${item.shopItemFloor2 }층 / ${item.shopItemFloorAll2 }층</c:if>
									<c:if test="${item.shopItemType1 eq '아파트'}">${item.shopItemFloor2 }층 / ${item.shopItemFloorAll2 }층</c:if>
							</div>
						</li>
						<li class="gWdVQs"><p
								class="gPsGgb">전용/공급면적</p>
							<div class="gbAeEp">
								<span id="sizeSqm2">
									<c:if test="${item.shopItemType1 eq '원룸'}">${item.shopItemSize2 } / ${item.shopItemSizeAll2 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '투룸'}">${item.shopItemSize2 } / ${item.shopItemSizeAll2 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '쓰리룸'}">${item.shopItemSize2 } / ${item.shopItemSizeAll2 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '오피스텔'}">${item.shopItemSize4 } / ${item.shopItemSizeAll4 }㎡</c:if>
									<c:if test="${item.shopItemType1 eq '아파트'}">${item.shopItemSize4 } / ${item.shopItemSizeAll4 }㎡</c:if>
								</span>
								<span id="sizePyeong2" style="display: none">
									<c:if test="${item.shopItemType1 eq '원룸'}">${item.shopItemSize1 } / ${item.shopItemSizeAll1 }평</c:if>
									<c:if test="${item.shopItemType1 eq '투룸'}">${item.shopItemSize1 } / ${item.shopItemSizeAll1 }평</c:if>
									<c:if test="${item.shopItemType1 eq '쓰리룸'}">${item.shopItemSize1 } / ${item.shopItemSizeAll3 }평</c:if>
									<c:if test="${item.shopItemType1 eq '오피스텔'}">${item.shopItemSize3 } / ${item.shopItemSizeAll3 }평</c:if>
									<c:if test="${item.shopItemType1 eq '아파트'}">${item.shopItemSize3 } / ${item.shopItemSizeAll3 }평</c:if>
								</span>
								<button class="bHPFKV sizeChange2">
									<svg width="11" height="23" viewBox="0 0 11 23">
										<g fill="#222" fill-rule="evenodd" stroke="#222" stroke-width=".2">
											<path d="M8.066 8.378L6.955 9.624a.335.335 0 0 0 0 .436.26.26 0 0 0 .194.09c.07 0 .14-.03.194-.09L8.92 8.293c.054-.06.08-.14.08-.22a.32.32 0 0 0-.094-.232l-1.563-1.75a.255.255 0 0 0-.388 0 .334.334 0 0 0 0 .435l1.102 1.236h-5.49c-1.415 0-2.567 1.3-2.567 2.9v1.03c0 .17.123.308.275.308.152 0 .275-.138.275-.308v-1.03c0-1.259.905-2.284 2.018-2.284h5.498zM.934 14.622l1.11-1.246a.335.335 0 0 0 0-.436.26.26 0 0 0-.193-.09c-.07 0-.141.03-.195.09L.08 14.707a.325.325 0 0 0-.08.22.32.32 0 0 0 .093.232l1.563 1.75c.108.121.282.121.389 0a.334.334 0 0 0 0-.435L.942 15.238h5.49c1.416 0 2.567-1.3 2.567-2.9v-1.03c0-.17-.123-.308-.274-.308-.153 0-.275.138-.275.308v1.03c0 1.259-.905 2.284-2.018 2.284H.934z"></path>
										</g>
									</svg>
									<span id="sizeName1">평</span>
								</button>
							</div></li>
						<li class="gWdVQs">
							<p class="gPsGgb">난방종류</p>
							<div class="gbAeEp">
								<c:if test="${item.shopItemType1 eq '원룸'}">${item.shopItemHeating1 }</c:if>
								<c:if test="${item.shopItemType1 eq '투룸'}">${item.shopItemHeating1 }</c:if>
								<c:if test="${item.shopItemType1 eq '쓰리룸'}">${item.shopItemHeating1 }</c:if>
								<c:if test="${item.shopItemType1 eq '오피스텔'}">${item.shopItemHeating2 }</c:if>
								<c:if test="${item.shopItemType1 eq '아파트'}">${item.shopItemHeating2 }</c:if>
							</div>
						</li>
						<c:if test="${item.shopItemType1 eq '원룸'}">
							<li class="gWdVQs">
								<p class="gPsGgb">빌트인</p>
								<div class="gbAeEp">${item.shopItemBuiltIn }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">엘리베이터</p>
								<div class="gbAeEp">${item.shopItemElevator }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">반려동물</p>
								<div class="gbAeEp">${item.shopItemAnimal }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">베란다/발코니</p>
								<div class="gbAeEp">${item.shopItemBalcony }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">전세자금대출</p>
								<div class="gbAeEp">${item.shopItemLoan }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">입주가능일</p>
								<div class="gbAeEp">${item.shopItemMovingDate1 }</div>
							</li>
							<li class="">
							</li>
							<li class="">
							</li>
							<li class="">
							</li>
						</c:if>
						<c:if test="${item.shopItemType1 eq '투룸'}">
							<li class="gWdVQs">
								<p class="gPsGgb">빌트인</p>
								<div class="gbAeEp">${item.shopItemBuiltIn }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">엘리베이터</p>
								<div class="gbAeEp">${item.shopItemElevator }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">반려동물</p>
								<div class="gbAeEp">${item.shopItemAnimal }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">베란다/발코니</p>
								<div class="gbAeEp">${item.shopItemBalcony }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">전세자금대출</p>
								<div class="gbAeEp">${item.shopItemLoan }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">입주가능일</p>
								<div class="gbAeEp">${item.shopItemMovingDate1 }</div>
							</li>
							<li class="">
							</li>
							<li class="">
							</li>
							<li class="">
							</li>
						</c:if>
						<c:if test="${item.shopItemType1 eq '쓰리룸'}">
							<li class="gWdVQs">
								<p class="gPsGgb">빌트인</p>
								<div class="gbAeEp">${item.shopItemBuiltIn }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">엘리베이터</p>
								<div class="gbAeEp">${item.shopItemElevator }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">반려동물</p>
								<div class="gbAeEp">${item.shopItemAnimal }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">베란다/발코니</p>
								<div class="gbAeEp">${item.shopItemBalcony }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">전세자금대출</p>
								<div class="gbAeEp">${item.shopItemLoan }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">입주가능일</p>
								<div class="gbAeEp">${item.shopItemMovingDate1 }</div>
							</li>
							<li class="">
							</li>
							<li class="">
							</li>
							<li class="">
							</li>
						</c:if>
						<c:if test="${item.shopItemType1 eq '오피스텔' }">
							<li class="gWdVQs">
								<p class="gPsGgb">빌트인</p>
								<div class="gbAeEp">${item.shopItemBuiltIn }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">시공년도</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemBulidDate != null}">${item.shopItemBulidDate } 시공</c:if>
								<c:if test="${item.shopItemBulidDate == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">시공사</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemBulidCompany != null}">${item.shopItemBulidCompany }</c:if>
								<c:if test="${item.shopItemBulidCompany == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">총 세대수</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemHouseNumber != null}">${item.shopItemHouseNumber } 세대</c:if>
								<c:if test="${item.shopItemHouseNumber == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">복도유형</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemBulidHallway != null}">${item.shopItemBulidHallway }</c:if>
								<c:if test="${item.shopItemBulidHallway == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">반려동물</p>
								<div class="gbAeEp">${item.shopItemAnimal }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">베란다/발코니</p>
								<div class="gbAeEp">${item.shopItemBalcony }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">전세자금대출</p>
								<div class="gbAeEp">${item.shopItemLoan }</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">입주가능일</p>
								<div class="gbAeEp">${item.shopItemMovingDate2 }</div>
							</li>
						</c:if>
						<c:if test="${item.shopItemType1 eq '아파트' }">
							<li class="gWdVQs">
								<p class="gPsGgb">시공년도</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemBulidDate != null}">${item.shopItemBulidDate } 시공</c:if>
								<c:if test="${item.shopItemBulidDate == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">시공사</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemBulidCompany != null}">${item.shopItemBulidCompany }</c:if>
								<c:if test="${item.shopItemBulidCompany == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">총 세대수</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemHouseNumber != null}">${item.shopItemHouseNumber } 세대</c:if>
								<c:if test="${item.shopItemHouseNumber == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">복도유형</p>
								<div class="gbAeEp">
								<c:if test="${item.shopItemBulidHallway != null}">${item.shopItemBulidHallway }</c:if>
								<c:if test="${item.shopItemBulidHallway == null}">정보없음</c:if>
								</div>
							</li>
							<li class="gWdVQs">
								<p class="gPsGgb">입주가능일</p>
								<div class="gbAeEp">${item.shopItemMovingDate2 }</div>
							</li>
						</c:if>
					</ul>
				</div>
			</div>
			<%-- 매물 사진 --%>
			<div class="kBQneM">
				<div class="jnzTsK">
					<p>매물 번호 ${item.shopItemIdx }</p>
				</div>
				<div class="fQSDcO">
					<div id="slider-wrap">
						<ul id="slider">
							<c:forEach var="itemImg" items="${siiList }" varStatus="i">
								<li data-color="#1abc9c"><img src="${itemImg.shopImgPath }">
								</li>
							</c:forEach>
						</ul>
						<!--controls-->
						<div class="btns" id="next">
							<img src="/guest/img/right_arrow.png">
						</div>
						<div class="btns" id="previous">
							<img src="/guest/img/left_arrow.png">
						</div>
						<div id="counter"></div>
						<div id="pagination-wrap">
							<ul>
							</ul>
						</div>
						<!--controls-->
					</div>
				</div>
			</div>
			<%-- 매물 제목 --%>
			<div class="kZTRnS" name="memo">
				<div class="kBQneM">
					<div class="kVQrqD">
						<h1 class="eRkCVv">${item.shopItemTitle }</h1>
						<div class="cDEjhR">
							<div>
								${item.shopItemContent }
							</div>
						</div>
					</div>
				</div>
			</div>
			<%-- 매물 가격 정보 --%>
			<div class="kZTRnS" name="price">
				<div class="jFMhNO kBQneM">
					<h1 class="GYLAC">가격정보</h1>
					<table class="iSPaSs">
						<colgroup>
							<col width="25%">
							<col width="50%">
							<col width="25%">
						</colgroup>
						<thead>
							<tr>
								<th>${item.shopItemDealType }</th>
								<th>관리비</th>
								<th>주차비</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<p><c:if test="${item.shopItemDeposit!=null}">${item.shopItemDeposit }/</c:if>${item.shopItemDealPrice }만원</p>
								</td>
								<td>
									<p><c:if test="${item.shopItemManagePrice!=null}">${item.shopItemManagePrice } 만원</c:if><c:if test="${item.shopItemManagePrice==null}">없음</c:if></p>
									<p><span><c:if test="${item.shopItemManage eq '있음'}">(${item.shopItemManagePriceOption })</c:if></span></p>
								</td>
								<td>
									<p>${item.shopItemParking }
									<c:if test="${item.shopItemParking eq '가능'}">
										<c:if test="${item.shopItemParkingPrice==null} ">
										(무료)
										</c:if>
										(${item.shopItemParkingPrice }만원)
									</c:if>
									</p>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="boQZaR"><p>한달 생활비</p><div id="price"></div></div>
				</div>
			</div>
			<%-- 매물 옵션 --%>
			<div class="kZTRnS" name="option">
				<div	class="jFMhNO kBQneM">
					<h1 class="lnMkbZ">옵션</h1>
					<div class="dDctva">
					<c:forEach items="${sio }" varStatus="i" var="option">
						<c:if test="${option eq '에어컨'}">
							<div class="gqtsIc">
							<img src="/guest/img/에어컨.PNG">
							<p>에어컨</p>
							</div>
						</c:if>
						<c:if test="${option eq '세탁기'}">
							<div class="gqtsIc">
								<img src="/guest/img/세탁기.PNG">
							<p>세탁기</p>
							</div>
						</c:if>
						<c:if test="${option eq '침대'}">
							<div class="gqtsIc">
								<img src="/guest/img/침대.PNG">
							
							<p>침대</p>
							</div>
						</c:if>
						<c:if test="${option eq '책상'}">
							<div class="gqtsIc">
								<img src="/guest/img/책상.PNG">
							
							<p>책상</p>
							</div>
						</c:if>
						<c:if test="${option eq '옷장'}">
							<div class="gqtsIc">
								<img src="/guest/img/옷장.PNG">
							
							<p>옷장</p>
							</div>
						</c:if>
						<c:if test="${option eq 'TV'}">
							<div class="gqtsIc">
								<img src="/guest/img/TV.PNG">
							
							<p>TV</p>
							</div>
						</c:if>
						<c:if test="${option eq '신발장'}">
							<div class="gqtsIc">
								<img src="/guest/img/신발장.PNG">
							
							<p>신발장</p>
							</div>
						</c:if>
						<c:if test="${option eq '냉장고'}">
							<div class="gqtsIc">
								<img src="/guest/img/냉장고.PNG">
							
							<p>냉장고</p>
							</div>
						</c:if>
						<c:if test="${option eq '가스레인지'}">
							<div class="gqtsIc">
								<img src="/guest/img/가스레인지.PNG">
							
							<p>가스레인지</p>
							</div>
						</c:if>
						<c:if test="${option eq '인덕션'}">
							<div class="gqtsIc">
								<img src="/guest/img/인덕션.PNG">
							
							<p>인덕션</p>
							</div>
						</c:if>
						<c:if test="${option eq '전자레인지'}">
							<div class="gqtsIc">
								<img src="/guest/img/전자레인지.PNG">
							
							<p>전자레인지</p>
							</div>
						</c:if>
						<c:if test="${option eq '전자도어락'}">
							<div class="gqtsIc">
								<img src="/guest/img/전자도어락.PNG">
							<p>전자도어락</p>
							</div>
						</c:if>
						<c:if test="${option eq '비데'}">
							<div class="gqtsIc">
								<img src="/guest/img/비데.PNG">
							<p>비데</p>
							</div>
						</c:if>
					</c:forEach>
					</div>
				</div>
			</div>
			<%-- 매물 위치 --%>
			<div class="kZTRnS" name="location">
				<div	class="jFMhNO kBQneM">
					<h1 class="fIqmuM">
						위치
						<div class="qMbaJ">
							<svg width="18" height="18" viewBox="0 0 18 18">
								<g fill="none" fill-rule="evenodd">
									<circle cx="9" cy="9" r="9" fill="#E9E9E9"></circle>
								<g transform="translate(6 5)">
								<path stroke="#9498A0" stroke-linecap="round" d="M.565 1.996C.934.666 1.685 0 2.82 0c1.7 0 2.543 1.851 1.894 2.856C4.064 3.861 2.71 3.996 2.71 5.46"></path>
								<circle cx="2.7" cy="7.7" r="1" fill="#9498A0"></circle>
								</g></g>
								</svg>
						</div>
					</h1>
					<p class="hwnvlX">${item.shopItemAddr2 }</p>
					<div class="jdAEqt" id="nearMap" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"></div>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
</div>
<script>
	$(document).ready(function() {
		var dealPrice = ${item.shopItemDealPrice};
		if(${item.shopItemDealPrice==''}){
			managePrice = 0;
		}else{
			managePrice = "${item.shopItemManagePrice}"*1;
		}
		if(${item.shopItemParkingPrice==''}){
			parkingPrice = 0;
		}else{
			parkingPrice = "${item.shopItemParkingPrice}"*1;
		}
		//월세면서 관리비,주차비가 있을 시
		if(${item.shopItemDealType=='월세'} && managePrice!=0 && parkingPricePrice!=0){
			$("#price").html(dealPrice+managePrice+parkingPrice+"만 원 + α<span>(월세 + 관리비 + 주차비)</span>");
		}
		//월세면서 관리비만 있을 시
		if(${item.shopItemDealType=='월세'}&& managePrice!=0){
			$("#price").html(dealPrice+managePrice+"만 원 + α<span>(월세 + 관리비)</span>");
		}
		//월세면서 주차비만 있을 시
		if(${item.shopItemDealType=='월세'}&& parkingPricePrice!=0){
			$("#price").html(dealPrice+parkingPrice+"만 원 + α<span>(월세 + 주차비)</span>");
		}
		//월세면서 관리비, 주차비가 없을 시
		if(${item.shopItemDealType=='월세'}&& managePrice==0 && parkingPricePrice==0){
			$("#price").html(dealPrice+"만 원 + α<span>(월세)</span>");
		}
		//관리비, 주차비가 있을 시
		if(managePrice!=0 && parkingPrice!=0){
			$("#price").html(managePrice+parkingPrice+"만 원 + α<span>(관리비 + 주차비)</span>");
		}
		//관리비 있을 시
		if(managePrice!=0){
			$("#price").html(managePrice+"만 원 + α<span>(관리비)</span>");
		}
		//주차비가 있을 시
		if(parkingPrice!=0){
			$("#price").html(parkingPrice+"만 원 + α<span>(주차비)</span>");
		}
		//무료
		if(managePrice==0 && parkingPrice==0){
			$("#price").html("0만 원 + α<span></span>");
		}
		
		
		//사이즈 변경
		$(document).on('click', '.sizeChange' , function(){
			$("#sizeSqm1").hide();
			$("#sizePyeong1").show();
			$("#sizeName").html("㎡");
			$(".sizeChange").addClass('sizeChange1');
			$(".sizeChange").removeClass('sizeChange');
		});
		$(document).on('click', '.sizeChange1' , function(){
			$("#sizeSqm1").show();
			$("#sizePyeong1").hide();
			$("#sizeName").html("평");
			$(".sizeChange1").addClass('sizeChange');
			$(".sizeChange1").removeClass('sizeChange1');
		});
		
		$(document).on('click', '.sizeChange2' , function(){
			$("#sizeSqm2").hide();
			$("#sizePyeong2").show();
			$("#sizeName1").html("㎡");
			$(".sizeChange2").addClass('sizeChange3');
			$(".sizeChange2").removeClass('sizeChange2');
		});
		$(document).on('click', '.sizeChange3' , function(){
			$("#sizeSqm2").show();
			$("#sizePyeong2").hide();
			$("#sizeName1").html("평");
			$(".sizeChange3").addClass('sizeChange2');
			$(".sizeChange3").removeClass('sizeChange3');
		});
		//current position
        var pos = 0;
        //number of slides
        var totalSlides = $('#slider-wrap ul li').length;
        //get the slide width
        var sliderWidth = $('#slider-wrap').width();
            
            /*****************
             BUILD THE SLIDER
            *****************/
            //set width to be 'x' times the number of slides
            $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
            
            //next slide    
            $('#next').click(function(){
                slideRight();
            });
            
            //previous slide
            $('#previous').click(function(){
                slideLeft();
            });
            
            
            
            /*************************
             //*> OPTIONAL SETTINGS
            ************************/
         
            //for each slide 
            $.each($('#slider-wrap ul li'), function() { 

               //create a pagination
               var li = document.createElement('li');
               $('#pagination-wrap ul').append(li);    
            });
            
            //counter
            countSlides();
            
            //pagination
            pagination();
        /***********
         SLIDE LEFT
        ************/
        function slideLeft(){
            pos--;
            if(pos==-1){ pos = totalSlides-1; }
            $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));    
            
            //*> optional
            countSlides();
            pagination();
        }
        /************
         SLIDE RIGHT
        *************/
        function slideRight(){
            pos++;
            if(pos==totalSlides){ pos = 0; }
            $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
            
            //*> optional 
            countSlides();
            pagination();
        } 
        /************************
         //*> OPTIONAL SETTINGS
        ************************/
        function countSlides(){
            $('#counter').html(pos+1 + ' / ' + totalSlides);
        }

        function pagination(){
            $('#pagination-wrap ul li').removeClass('active');
            $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
        }

	});
</script>
</body>
</html>