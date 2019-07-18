$(document).ready(function(){
	var minIndex= $(".minPrice").length;
	var maxIndex= $(".maxPrice").length;
	var minstr = new Array();
	var maxstr = new Array();
	for(var i=0; i<minIndex; i++){
		minstr.push($(".minPrice").eq(i).html());
		
	}
	for(var i=0; i<maxIndex; i++){
		maxstr.push($(".maxPrice").eq(i).html());
		
	}
	for(var i=0; i<minIndex; i++){
		if(minstr[i].length < 14){
			$(".minPrice").eq(i).html("최저 : "+minstr[i].substring(4,5)+"억 "+minstr[i].substring(5,9)+"만원");
		}else{
			$(".minPrice").eq(i).html("최저 : "+minstr[i].substring(4,6)+"억 "+minstr[i].substring(6,10)+"만원");
		}
	}
	for(var i=0; i<maxIndex; i++){
		if(maxstr[i].length < 14){
			$(".maxPrice").eq(i).html("최저 : "+maxstr[i].substring(4,5)+"억 "+maxstr[i].substring(5,9)+"만원");
		}else{
			$(".maxPrice").eq(i).html("최저 : "+maxstr[i].substring(4,6)+"억 "+maxstr[i].substring(6,10)+"만원");
		}
	}

});

$(".brandCard").click(function(){
	var brandName = $(this).children('.brandName').html();
	$('.brandCard').removeClass('on');
	$(this).addClass('on');
	$.ajax({
		url:"/saleInLots/saleInLotsBrandAjax",
		data:{brandName : brandName},
		success:function(res){
		var html = "";
			for(var i =0;i<res.list.length;i++){
				html+= '<tr><td><p class="saleInLotsState">'+res.list[i].saleInLotsState+'</p></td>';
				html+= '<td><p class="saleInLotsType">'+res.list[i].saleInLotsBuildType+'</p></td>';
				html+= '<td><p class="saleInLotsType">'+res.list[i].saleInLotsSupplyType+'</p></td>';
				html+= '<td><a href="/saleInLots/saleInLotsDetailInformation?saleInLotsIDX='+res.list[i].saleInLotsIDX+'">';
				html+= '<div class="saleInLotsInfoBox">';
				html+= '<div class="saleInLotsInfoBox_content">';
				html+= '<p class="saleInLotsName">'+res.list[i].saleInLotsName+'</p>';
				html+= '<p class="saleInLotsDetailArea">'+res.list[i].saleInLotsDetailArea+'</p></div></div></a></td>';
				html+= '<td>';
				if(res.list[i].saleInLotsPriceMinAll == '0'){
					html+= '<p class="saleInLotsType">준비중</p></td>';
				}else{
					html+= '<p class="saleInLotsType minPrice">최저 :'+res.list[i].saleInLotsPriceMinAll+'</p>';
					html+= '<p class="saleInLotsType maxPrice">최고 :'+res.list[i].saleInLotsPriceMaxAll+'</p></td>';
				}
				html+= '<td>';
				if(res.list[i].saleInLotsSaleHousehold !='0' ){
					html+= '<p class="saleInLotsType">'+res.list[i].saleInLotsSaleHousehold+'세대</p></td>';
				}else{
					html+= '<p class="saleInLotsType">'+res.list[i].saleInLotsSaleHousehold+'세대</p></td>';
				}
				html+= '<td>';
				if(res.list[i].saleInLotsMinSupplyArea == null && res.list[i].saleInLotsMaxSupplyArea == null){
					html+= '<p class="saleInLotsType" style="padding: 0px 13px;">-</p></td>';
				}else{
					html+= '<p class="saleInLotsType" style="padding: 0px 13px;">'+res.list[i].saleInLotsMinSupplyArea +'㎡/'+ res.list[i].saleInLotsMaxSupplyArea+'㎡</p></td>';
				}
				html+= '</tr>';
			}
			$('.dataTable').children('tbody').html(html);
			$('.pagination').html(res.pageNavi);
			var minIndex= $(".minPrice").length;
			var maxIndex= $(".maxPrice").length;
			var minstr = new Array();
			var maxstr = new Array();
			for(var i=0; i<minIndex; i++){
				minstr.push($(".minPrice").eq(i).html());
				
			}
			for(var i=0; i<maxIndex; i++){
				maxstr.push($(".maxPrice").eq(i).html());
				
			}
			for(var i=0; i<minIndex; i++){
				if(minstr[i].length < 14){
					$(".minPrice").eq(i).html("최저 : "+minstr[i].substring(4,5)+"억 "+minstr[i].substring(5,9)+"만원");
				}else{
					$(".minPrice").eq(i).html("최저 : "+minstr[i].substring(4,6)+"억 "+minstr[i].substring(6,10)+"만원");
				}
			}
			for(var i=0; i<maxIndex; i++){
				if(maxstr[i].length < 14){
					$(".maxPrice").eq(i).html("최저 : "+maxstr[i].substring(4,5)+"억 "+maxstr[i].substring(5,9)+"만원");
				}else{
					$(".maxPrice").eq(i).html("최저 : "+maxstr[i].substring(4,6)+"억 "+maxstr[i].substring(6,10)+"만원");
				}
			}
		}
	});
});
