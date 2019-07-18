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
				str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
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
					str += "<td>"+data.list[i].userEmail+"</td>";
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
				str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
				$("#searchWord").val("");
			}
		}
	});
}

//전체회원 승인 아이디, 이름 검색
$("#searchApprobate_btn").click(function(){
	var searchType = $("#searchType").val();
	var searchWord = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/searchApprobate",
		data: {searchType:searchType, searchWord:searchWord},
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
					
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
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
});

//전체 회원 승인 목록
$("#searchApprobateAll_btn").click(function(){
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
					str += "</tr>";
					
				}
				listV.append(str);
				$("#searchWord").val("");
			}
		}
	});
});


//체크박스 로직
$(".checkUserType").change(function(){
	var bool = $("input[name='user']:checked").length;
	var val = "";
	for(var i = 0; i<bool; i++){
		val += $("input[name='user']:checked").eq(i).val()+",";
	}
	var type = val.substring(0,val.length-1);
	console.log(type);
	console.log(bool);
	if(bool==1){
		$.ajax({
			type: "post",
			url: "/userManage/userCheckList",
			data: {type:type},
			success: function(data){
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
					
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
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
					str += "</tr>";
					
				}
				listV.append(str);
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
				console.log("user1: "+data.list[0].userType);
				console.log("user2: "+data.list[1].userType);
				var str ="";
				for(var i=0; i<data.list.length; i++){
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
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
					
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
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
				var str2 = "";
				for(var i=0; i<data.list.length; i++){
					var type= "";
					if(data.list[i].userType == "1"){
						uType = "운송기사";
					}else if(data.list[i].userType == "2"){
						uType = "부동산";
					}else if(data.list[i].userType == "3"){
						uType = "일반회원";
					}
					
					if(data.list[i].status == "2"){
						uStatus = "승인 대기";
					}
					
					
					str2 += "<tr>";
					str2 += "<td>"+data.list[i].userIdx+"</td>";
					str2 += "<td>"+data.list[i].userId+"</td>";
					str2 += "<td>"+data.list[i].userName+"</td>";
					str2 += "<td>"+data.list[i].userAddr+"</td>";
					str2 += "<td>"+data.list[i].userPhone+"</td>";
					str2 += "<td>"+data.list[i].userEmail+"</td>";
					str2 += "<td>"+uType+"</td>";
					str2 += "<td>"+data.list[i].enrollDate+"</td>";
					str2 += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'>";
					str2 += ""+uStatus+"</a></td>";
					str2 += "</tr>";
				}
				listV.append(str2);
			}
		});
	}
});












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