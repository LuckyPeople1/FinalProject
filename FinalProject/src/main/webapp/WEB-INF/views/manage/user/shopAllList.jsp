<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
<%@include file="/WEB-INF/views/manage/user/page/userNav.jsp"%>
<link rel="stylesheet" type="text/css" href="/manage/css/user/manage.user.ui.css">
<link rel="stylesheet" type="text/css" href="/manage/css/user/manage.user.style.css">
<link rel="stylesheet" type="text/css" href="/manage/css/jquery-ui.min.css">

<div class="contents">
	<section id="manageUserAllList">
		<div class="set_field">
			<div class="field_title"><span class="title_mark">■ 회원 관리</span></div>
			<table class="set_man_userTable">
				<colgroup>
					<col width="200">
					<col width="*">
					<col width="200">
					<col width="*">
				</colgroup>
				<tbody>
				<tr>
					<th>회원 검색</th>
					<td colspan="">
						<span class="sbox small">
							<select name="searchType">
								<option value="1">아이디</option>
								<option value="2">회원명</option>
								<option value="3">휴대폰번호</option>
							</select>
						</span>
						<input class="tbox" name="searchWord" value="">
					</td>
				</tr>
				<tr>
					<th>회원 등급</th>
					<td colspan="3">
						<label>
							<input type="checkbox" class="checkUserType">
							<span>일반회원</span>
						</label>
						<label class="ml10">
							<input type="checkbox" class="checkUserType">
							<span>운송기사</span>
						</label>
						<label class="ml10">
							<input type="checkbox" class="checkUserType">
							<span>부동산</span>
						</label>
					</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td colspan="3">
						<input id="dateS" class="tbox"> ~ <input id="dateE" class="tbox">
						<a href="javascript:setSearchDate('0d')" class="btn smaller higher col_grey ml10">당일</a>
						<a href="javascript:setSearchDate('1d')" class="btn smaller higher col_grey ml5">어제</a>
						<a href="javascript:setSearchDate('1w')" class="btn smaller higher col_grey ml5">일주일</a>
						<a href="javascript:setSearchDate('1m')" class="btn smaller higher col_grey ml5">1달</a>
						<a href="javascript:setSearchDate('3m')" class="btn smaller higher col_grey ml5">3달</a>
						<a href="javascript:setSearchDate('6m')" class="btn smaller higher col_grey ml5">6달</a>
					</td>
				</tr>
				</tbody>
			</table>
			<div class="set_menu">
				<a href="javascript:void(0)" class="btn normal col_main f_w">검색</a>
				<a href="javascript:void(0)" class="btn normal col_darkGrey f_w ml5">전체목록</a>
			</div>
		</div>
		<div class="list_field">
			<table class="list_table">
				<colgroup>
					<col width="40">
					<col width="80">
					<col width="100">
					<col width="100">
					<col width="100">
					<col width="200">
					<col width="120">
					<col width="65">
					<col width="85">
				</colgroup>
				<thead>
				<tr>
					<th>No</th>
					<th>아이디</th>
					<th>회원명</th>
					<th>주소</th>
					<th>휴대폰번호</th>
					<th>이메일</th>
					<th>회원 구분</th>
					<th>회원가입일</th>
					<th>상태</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${list}">
						<tr>
							<td>${u.userIdx }</td>
							<td>${u.userId }</td>
							<td>${u.userName }</td>
							<td>${u.userAddr }</td>
							<td>${u.userPhone }</td>
							<td>${u.userEmail }</td>
							<td>${u.type }</td>
							<td>${u.enrollDate }</td>
							<td>
								<a href="/userManage/deleteUser?userIdx=${u.userIdx }" class="tag col_blue f_w">${u.userStatus}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="page_group clearFix">
			<ul class="page_box">
				<li class="first arrow">
					<a href="#none"></a>
				</li>
				<li class="prev arrow">
					<a href="#none"></a>
				</li>
				<li class="on">
					<a href="#none">1</a>
				</li>
				<li class="">
					<a href="#none">2</a>
				</li>
				<li class="next arrow">
					<a href="#none "></a>
				</li>
				<li class="end arrow">
					<a href="#none"></a>
				</li>
			</ul>
		</div>
	</section>
</div>
</body>
</html>
<script>
	
$(".checkUserType").change(function(){
	var bool = $(this).is(":checked");
	var type = $(this).next().html();
	console.log(type);
	console.log(bool);
	if(bool){
		$.ajax({
			type: "post",
			url: "/userManage/userCheckList",
			data: {type:type},
			success: function(data){
				$(".list_table").children().eq(2).html("");
				var listV = $(".list_table").children().eq(2);
				console.log(listV);
				str = "";
				for(var i=0; i<data.list.length; i++){
					str += "<tr>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userPw+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+type+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'";
					str += ">회원탈퇴</a></td>";
					str += "</tr>";
					
				}
				listV.append(str);
			}
		}); /* ajax 끝 */
	}else{ /* if */
		$.ajax({
			type: "post",
			url: "/userManage/userListAll",
			success: function(data){
				$(".list_table").children().eq(2).html("");
				var listV = $(".list_table").children().eq(2);
				console.log(listV);
				console.log(data.list);
				str = "";
				
				
				for(var i=0; i<data.list.length; i++){
					var type= "";
					if(data.list[i].userType == "1"){
						type = "운송기사";
					}else if(data.list[i].userType == "2"){
						type = "부동산";
					}else if(data.list[i].userType == "3"){
						type = "일반회원";
					}
					str += "<tr>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userPw+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+type+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'";
					str += ">회원탈퇴</a></td>";
					str += "</tr>";
				}
				listV.append(str);
			}
		}); /* ajax 끝 */
	}
});
	
</script>