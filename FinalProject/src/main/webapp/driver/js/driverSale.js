$(document).ready(function(){
	$.ajax({
		url:"/driver/saleListAjax",
		success:function(res){
			console.log(res);
			new Morris.Bar({
				element: 'bar_example1',     // bar를 넣을 div의 아이디를 적어주세요.
				data: 						// bar를 넣을 x축과 y축의 데이터를 적어줍니다.
					res.yearSum
				,
				xkey: 'driverSaledate',                          //x축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				ykeys: ['driverSaleAmount'],                //y축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				labels: ['매출(합계)'], // 라벨칸에 나타날 이름을 적어줍니다.
				barColors :['#666'],
				hideHover :'auto'
			});
			new Morris.Bar({
				element: 'bar_example2',     // bar를 넣을 div의 아이디를 적어주세요.
				data:                                 // bar를 넣을 x축과 y축의 데이터를 적어줍니다.
					res.yearAvg
				,
				xkey: 'driverSaledate',                          //x축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				ykeys: ['driverSaleAmount'],                //y축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				labels: ['매출(평균)'], // 라벨칸에 나타날 이름을 적어줍니다.
				barColors :['#f2e23f'],
				hideHover :'auto'
			});
			new Morris.Bar({
				element: 'bar_example3',     // bar를 넣을 div의 아이디를 적어주세요.
				data:res.monthSum,
				xkey: 'driverSaledate',                          //x축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				ykeys: ['driverSaleAmount'],                //y축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				labels: ['매출(합계)'], // 라벨칸에 나타날 이름을 적어줍니다.
				barColors :['#543'],
				gridTextSize:'8',
				hideHover :'auto'
			});
			new Morris.Bar({
				element: 'bar_example4',     // bar를 넣을 div의 아이디를 적어주세요.
				data: res.monthAvg,
				xkey: 'driverSaledate',                          //x축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				ykeys: ['driverSaleAmount'],                //y축에 들어갈 이름을 넣은 data이름을 넣어줍니다
				labels: ['매출(평균)'], // 라벨칸에 나타날 이름을 적어줍니다.
				barColors :['#234'],
				gridTextSize:'8',
				hideHover :'auto'
			});
		}
	});
});



