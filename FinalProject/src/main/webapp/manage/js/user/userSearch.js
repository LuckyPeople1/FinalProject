//전체 아이디, 이름 검색
function search_btn(userType, status){
	var searchType = $("#searchType").val();
	var searchWord = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	console.log(userType);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/search",
		data: {searchType:searchType, searchWord:searchWord, userType:userType, status:status},
		success: function(data){
			var uStatus = "";
			var uType = "";
			if(data.list != ""){
				
				for(var i=0; i<data.list.length; i++){
					console.log(data.list[i].status);
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					
					
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					if(uType == "부동산"){
						str += "<td>"+data.list[i].companyName+"</td>";
						str += "<td>"+data.list[i].userEmail+"</td>";
					}else{
						str += "<td>"+data.list[i].userEmail+"</td>";
					}
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					if(uStatus == "탈퇴"){
						str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_darkGrey f_w'>"+uStatus+"</a></td>";
					}else{
						str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>"+uStatus+"</a></td>";
					}
					str += "</tr>";
					
				}
				listV.append(str);
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				if(userType == "2"){
					str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				}else{
					str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				}
				str += "</tr>";
				listV.append(str);
			}
		}
	});
}

//전체 목록
function searchAll_btn(userType, status){
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	var uStatus = "";
	$.ajax({
		type: "post",
		url: "/userManage/typeUserList",
		data: {userType:userType, status:status},
		success: function(data){
			if(data.list != ""){
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					if(uType == "부동산"){
						str += "<td>"+data.list[i].companyName+"</td>";
						str += "<td>"+data.list[i].userEmail+"</td>";
					}else{
						str += "<td>"+data.list[i].userEmail+"</td>";
					}
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					if(uStatus == "탈퇴"){
						str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_darkGrey f_w'>"+uStatus+"</a></td>";
					}else{
						str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>"+uStatus+"</a></td>";
					}
					str += "</tr>";
				}
				listV.append(str);
				$("#searchWord").val("");
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				if(userType == "2"){
					str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				}else{
					str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				}
				str += "</tr>";
				listV.append(str);
				$("#searchWord").val("");
			}
		}
	});
}

//전체회원 승인 아이디, 이름 검색
function searchApprobate_btn(status){
	var searchType = $("#searchType").val();
	console.log(searchType);
	var searchWord = $("#searchWord").val();
	console.log(searchWord);
	console.log(status);
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/searchApprobate",
		data: {searchType:searchType, searchWord:searchWord, status:status},
		success: function(data){
			if(data.list != ""){
				var uStatus = "";
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>"+uStatus+"</a></td>";
					str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>"+상세보기+"</a></td>";
					str += "</tr>";
				}
				listV.append(str);
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
			}
		}
	});
};

//전체 회원 승인 목록
function searchApprobateAll_btn(){
	var searchType = $("#searchType").val();
	var searchWord = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	var uStatus = "";
	$.ajax({
		type: "post",
		url: "/userManage/approbate",
		data: {searchType:searchType, searchWord:searchWord},
		success: function(data){
			if(data.list != ""){
				for(var i=0; i<data.list.length; i++){
					
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>"+uStatus+"</a></td>";
					str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>상세보기</a></td>";
					str += "</tr>";
				}
				listV.append(str);
				$("#searchWord").val("");
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
				$("#searchWord").val("");
			}
		}
	});
};



//체크박스 로직
$(".checkUserType").change(function(){
	var bool = $("input[name='user']:checked").length;
	var val = "";
	for(var i = 0; i<bool; i++){
		val += $("input[name='user']:checked").eq(i).val()+",";
	}
	var type = val.substring(0,val.length-1);
	console.log("val : "+val);
	console.log("type : "+type);
	console.log("bool : "+bool);
	
	if(bool==1){
		$.ajax({
			type: "post",
			url: "/userManage/userCheckList",
			data: {type:type},
			success: function(data){
				if(data.list != ""){
				$(".list_table").children().eq(2).html("");
				var listV = $(".list_table").children().eq(2);
				console.log(listV);
				var str="";
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					
					
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>"+uStatus+"</a></td>";
					str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>상세보기</a></td>";
					str += "</tr>";
					
				}//for문
				listV.append(str);
			} else if(data.list == "") {//if문
				str = "";
				str += "<tr>";
				str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
				$("#searchWord").val("");
			}
		}
		});
	}else if(bool==2){
		$.ajax({
			type: "post",
			url: "/userManage/userCheckList",
			data: {type:type},
			success: function(data){
				$(".list_table").children().eq(2).html("");
				var listV = $(".list_table").children().eq(2);
				/*console.log("user1: "+data.list[0].userType);
				console.log("user2: "+data.list[1].userType);*/
				var str ="";
				console.log(data.list);
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					
					
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>";
					str += ""+uStatus+"</a></td>";
					str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>상세보기</a></td>";
					str += "</tr>";
					
				}
				listV.append(str);
			}
		});
	}else if(bool==3){
		$.ajax({
			type: "post",
			url: "/userManage/userCheckList",
			data: {type:type},
			success: function(data){
				$(".list_table").children().eq(2).html("");
				var listV = $(".list_table").children().eq(2);
				var str ="";
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					
					
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>";
					str += ""+uStatus+"</a></td>";
					str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>상세보기</a></td>";
					str += "</tr>";
					
				}
				listV.append(str);
			}
		});
	}else if(bool==0){ 
		$.ajax({
			type: "post",
			url: "/userManage/approbate",
			success: function(data){
				$(".list_table").children().eq(2).html("");
				var listV = $(".list_table").children().eq(2);
				console.log(listV);
				console.log(data.list);
				var str = "";
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>";
					str += ""+uStatus+"</a></td>";
					str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>상세보기</a></td>";
					str += "</tr>";
				}
				listV.append(str);
			}
		});
	}
});

//가입일로 검색
function setSearchDate(start, status, userType){

	var num = start.substring(0,1);
	var str = start.substring(1,2);
	var today = new Date();
	var year = today.getYear()+1900;

	//var year = today.getFullYear();
	//var month = today.getMonth() + 1;
	//var day = today.getDate();

	var endDate = $.datepicker.formatDate('yy-mm-dd', today);
	$('#dateE').val(endDate);

	if(str == 'd'){
		today.setDate(today.getDate() - num);
	}else if (str == 'w'){
		today.setDate(today.getDate() - (num*7));
	}else if (str == 'm'){
		today.setMonth(today.getMonth() - num);
		today.setDate(today.getDate() + 1);
	}else if (str == 'y'){
		today.setMonth(today.getYear() - num);
		today.setDate(today.getDate() + 1);
	}

	var startDate = $.datepicker.formatDate('yy-mm-dd', today);
	$('#dateS').val(startDate);
	
	if(typeof userType == "undefined"){
		searchApprobateDate(status, endDate, startDate);
		console.log("userType이 없음");
		console.log(userType);
	}else{
		searchDate(status, endDate, startDate, userType);
		console.log("userType이 있음");
		console.log(userType);
	}
	
	// 종료일은 시작일 이전 날짜 선택하지 못하도록 비활성화
	$("#dateE").datepicker( "option", "minDate", startDate );

	// 시작일은 종료일 이후 날짜 선택하지 못하도록 비활성화
	$("#dateS").datepicker( "option", "maxDate", endDate );

}

function searchDate(status, endDate, startDate, userType){
	console.log("아작스 실행");
	console.log(userType);
	$.ajax({
		type: "post",
		url: "/userManage/searchDate",
		data: {status:status, endDate:endDate, startDate:startDate, userType:userType},
		success: function(data){
			$(".list_table").children().eq(2).html("");
			var listV = $(".list_table").children().eq(2);
			if(data.list != ""){
				searchSuccess(data, listV, userType);
			}else if(data.list == "") {
				var str = "";
				str += "<tr>";
				if(userType == "2"){
					str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				}else{
					str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				}
				str += "</tr>";
				listV.append(str);
				$("#searchWord").val("");
			}
			
		}
	})
};

//userType이 없을 때
function searchApprobateDate(status, endDate, startDate,userType){
	$.ajax({
		type: "post",
		url: "/userManage/searchApprobateDate",
		data: {status:status, endDate:endDate, startDate:startDate},
		success: function(data){
			$(".list_table").children().eq(2).html("");
			var listV = $(".list_table").children().eq(2);
			if(data.list != ""){
				searchSuccess(data, listV, userType);
			}else if(data.list == "") {
				var str = "";
				str += "<tr>";
				str += "<td colspan=10>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
				$("#searchWord").val("");
			}
			
		}
	})
};



function searchSuccess(data, listV, userType){
	$(".list_table").children().eq(2).html("");
	var str = "";
	for(var i=0; i<data.list.length; i++){
		if(data.list[i].userType == "1"){
			uType = "운송기사";
		}else if(data.list[i].userType == "2"){
			uType = "부동산";
		}else if(data.list[i].userType == "3"){
			uType = "일반회원";
		}
		
		if(data.list[i].status == "1"){
			uStatus = "정상";
		}
		if(data.list[i].status == "2"){
			uStatus = "승인 대기";
		}
		
		if(data.list[i].status == "3"){
			uStatus = "탈퇴";
		}
		str += "<tr>";
		str += "<td>"+data.list[i].userIdx+"</td>";
		str += "<td>"+data.list[i].userId+"</td>";
		str += "<td>"+data.list[i].userName+"</td>";
		str += "<td>"+data.list[i].userAddr+"</td>";
		str += "<td>"+data.list[i].userPhone+"</td>";
		if(uType == "부동산" && typeof userType != "undefined"){
			str += "<td>"+data.list[i].companyName+"</td>";
			str += "<td>"+data.list[i].userEmail+"</td>";
		}else{
			str += "<td>"+data.list[i].userEmail+"</td>";
		}
		str += "<td>"+uType+"</td>";
		str += "<td>"+data.list[i].enrollDate+"</td>";
		str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>";
		str += ""+uStatus+"</a></td>";
		console.log(uType);
		if(typeof userType == "undefined"){
			str += "<td><a href='/manage/user/userDetail?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>상세보기</a></td>";
		}
		str += "</tr>";
	}
	listV.append(str);	
};








/*//탈퇴 타입별 아이디, 이름으로 검색
function searchSec_btn(userType, status){
	var searchType = $("#searchType").val();
	var searchWord = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	console.log(userType);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/search",
		data: {searchType:searchType, searchWord:searchWord, userType:userType, status:status},
		success: function(data){
			if(data.list != ""){
				var uStatus = "";
				for(var i=0; i<data.list.length; i++){
					console.log(data.list[i].status);
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					
					
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_darkGrey f_w'>"+uStatus+"</a></td>";
					str += "</tr>";
					
				}
				listV.append(str);
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
			}
		}
	});
}

//승인 타입별 아이디, 이름으로 검색
function searchSec_btn(userType){
	var searchType = $("#searchType").val();
	var searchWord = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	console.log(userType);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/search",
		data: {searchType:searchType, searchWord:searchWord, userType:userType, status:3},
		success: function(data){
			if(data.list != ""){
				var uStatus = "";
				for(var i=0; i<data.list.length; i++){
					console.log(data.list[i].status);
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					
					
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_darkGrey f_w'>"+uStatus+"</a></td>";
					str += "</tr>";
					
				}
				listV.append(str);
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
			}
		}
	});
}

//탈퇴 타입별 전체 검색
function searchSecAll_btn(userType){
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	var uStatus = "";
	$.ajax({
		type: "post",
		url: "/userManage/typeUserList",
		data: {userType:userType, status:3},
		success: function(data){
			if(data.list != ""){
				
				for(var i=0; i<data.list.length; i++){
					
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					
					if(data.list[i].status == "1"){
						uStatus = "정상";
					}
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					if(data.list[i].status == "3"){
						uStatus = "탈퇴";
					}
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+uType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_darkGrey f_w'>"+uStatus+"</a></td>";
					str += "</tr>";
				}
				listV.append(str);
				$("#searchWord").val("");
			}
		}
	});
}
*/