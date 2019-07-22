<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.cjLhbE {
	
    width: 598px;
    height: 380px;
    box-shadow: rgba(0, 0, 0, 0.06) 0px 1px 12px 0px, rgba(0, 0, 0, 0.12) 0px 20px 15px -12px;
    background-color: rgb(255, 255, 255);
    position: relative;
    top: -95px;
    left: 250px;
    transform: translateX(-50%);
    z-index: 20;
    margin: 5px auto;
    border-width: 1px;
    border-style: solid;
    border-color: rgb(221, 221, 221);
    border-image: initial;
}
.kgnBNe {
    float: left;
    width: 100%;
    height: 100%;
    box-sizing: border-box;
}
.rKhlv {
    height: 60px;
    padding-left: 20px;
    line-height: 60px;
    text-align: left;
    vertical-align: middle;
    border-bottom: 1px solid rgb(238, 238, 238);
}
.idPLMx {
    margin-right: 5px;
    vertical-align: middle;
}
.rKhlv > span {
    font-size: 16px;
    font-weight: 700;
}
.kIxvRB {
    height: 298px;
    overflow-y: auto;
    padding: 10px 0px 0px;
}
.gLuIH {
    font-size: 14px;
    position: relative;
    cursor: pointer;
    padding: 6px 15px 6px 25px;
    list-style: none;
}
.gLuIH > span.Blue {
    color: rgb(0, 108, 255);
}

.kFYPJT {
    min-width: 18px;
    height: 18px;
    line-height: 18px;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}
</style>
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="mainSearch inner">
			<div class="mainSearchBox">
				<div class="mainTxt">
					<span class="accent">어떤 동네, 어떤방</span>에서<br/>
					살고싶으신가요?
				</div>
				<div class="searchBox">
					<input type="text" class="searchInput">
					<span class="ico search"></span>
					<a class="searchBtn">검색</a>
				</div>
			</div>			
		</section>
		<!-- <section class="easyFind inner">
			<div class="easyFindBox">
				<a href="/shop/itemView?shopItemIdx=95">방찾기</a>
				<a href="/guest/notice/noticeList?reqPage=1">공지사항</a>
			</div>
		</section> -->
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
	
	
</div>
</body>
<script>

	$(".searchInput").keyup(function(){
		var cjLhbE=$(".cjLhbE");
		cjLhbE.remove();
		var str1="";
		var shopItemAddr1=$(".searchInput").val();
		console.log(shopItemAddr1);
		if(shopItemAddr1==""){
			str1+="<div class='styled__AutoCompleteWrap-sc-10v4ocj-7 cjLhbE'>";
			str1+="<div class='styled__AutoCompleteContent-sx0e8a-0 kgnBNe' display='33.3%'>";
			str1+="<div class='styled__AutoCompleteHeader-sx0e8a-1 rKhlv'>";
			str1+="<svg class='styled__SvgIcon-sx0e8a-2 idPLMx' width='26' height='24' viewBox='0 0 26 24'>";
			str1+="<g fill='none' fill-rule='evenodd' stroke='#A2A2A2'>";
			str1+="<ellipse cx='13.07' cy='18.159' rx='7.42' ry='3.246'></ellipse>";
			str1+="<path fill='#FFF' fill-rule='nonzero' d='M13 1.417c3.92 0 7.1 2.959 7.1 6.609 0 1.138-.333 2.148-.687 2.894-.76 1.6-4.49 5.723-5.44 6.831-.224.261-.585.409-.973.409s-.748-.148-.973-.409c-.95-1.108-4.68-5.23-5.44-6.831-.354-.746-.687-1.756-.687-2.894 0-3.65 3.179-6.61 7.1-6.61z'></path>"
			str1+="<circle cx='13.07' cy='7.957' r='2.783'></circle></g></svg>";
			str1+="<span style='vertical-align: middle;'> 지역, 지하철, 대학교</span></div>";
			str1+="<ul class='styled__ListWrap-sx0e8a-3 kIxvRB'>";
			str1+="<li class='styled__ListItem-sx0e8a-4 gLuIH'>";
			str1+="<p>조건에 맞는 방이 없습니다.</p>";
			str1+="<div class='styled__TypeWrap-sx0e8a-6 kFYPJT'></div></li></ul></div></div>";
			var mainSearch = $(".mainSearch");
			mainSearch.append(str1);
		}else{
			$.ajax({
				url:"/mapSelectOne",
				data:{shopItemAddr1:shopItemAddr1},
				success: function(data){
					str1+="<div class='styled__AutoCompleteWrap-sc-10v4ocj-7 cjLhbE'>";
					str1+="<div class='styled__AutoCompleteContent-sx0e8a-0 kgnBNe' display='33.3%'>";
					str1+="<div class='styled__AutoCompleteHeader-sx0e8a-1 rKhlv'>";
					str1+="<svg class='styled__SvgIcon-sx0e8a-2 idPLMx' width='26' height='24' viewBox='0 0 26 24'>";
					str1+="<g fill='none' fill-rule='evenodd' stroke='#A2A2A2'>";
					str1+="<ellipse cx='13.07' cy='18.159' rx='7.42' ry='3.246'></ellipse>";
					str1+="<path fill='#FFF' fill-rule='nonzero' d='M13 1.417c3.92 0 7.1 2.959 7.1 6.609 0 1.138-.333 2.148-.687 2.894-.76 1.6-4.49 5.723-5.44 6.831-.224.261-.585.409-.973.409s-.748-.148-.973-.409c-.95-1.108-4.68-5.23-5.44-6.831-.354-.746-.687-1.756-.687-2.894 0-3.65 3.179-6.61 7.1-6.61z'></path>"
					str1+="<circle cx='13.07' cy='7.957' r='2.783'></circle></g></svg>";
					str1+="<span style='vertical-align: middle;'> 지역, 지하철, 대학교</span></div>";
					str1+="<ul class='styled__ListWrap-sx0e8a-3 kIxvRB'>";
					if(data.list.length=='0'){
						str1+="<li class='styled__ListItem-sx0e8a-4 gLuIH'>";
						str1+="<p>조건에 맞는 방이 없습니다.</p>";
						str1+="<div class='styled__TypeWrap-sx0e8a-6 kFYPJT'></div></li>";
						str1+="</ul></div></div>";
						var mainSearch = $(".mainSearch");
						mainSearch.append(str1);
					}else{
						for(var i=0;i<data.list.length;i++){
							str1+="<li class='styled__ListItem-sx0e8a-4 gLuIH'  onclick='test(\""+data.list[i].shopItemAddr1+"\")'>";
							str1+="<span class='Blue'>"+data.list[i].shopItemAddr1+"</span>";							
							str1+="<div class='styled__TypeWrap-sx0e8a-6 kFYPJT'></div></li>";
						}
						str1+="</ul></div></div>";
						var mainSearch = $(".mainSearch");
						mainSearch.append(str1);
					}
					
				}
			})
		}
	});
	
	$("div").not(".cjLhbE").click(function(){
	var cjLhbE = $(".cjLhbE");
	cjLhbE.remove();
	});
	
	$(".searchBtn").click(function(){

		console.log($(".searchInput").val());
		var zuso = $(".searchInput").val();
		location.href="/mapView?shopItemAddr1="+zuso;
		
	});
	
	function test(shopItemAddr1){		
		console.log(shopItemAddr1);
		var zuso = shopItemAddr1;
		location.href="/mapView?shopItemAddr1="+zuso;
		
	}
</script>
</html>