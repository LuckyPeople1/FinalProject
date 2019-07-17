//아이디, 이름 검색
$("#search_btn").click(function(){
	var searchType = $("#searchType").val();
	var userId = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/search",
		data: {searchType:searchType, userId:userId, userType:3},
		success: function(data){
			if(data.list != ""){
				for(var i=0; i<data.list.length; i++){
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+data.list[i].userType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'";
					str += ">회원탈퇴</a></td>";
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