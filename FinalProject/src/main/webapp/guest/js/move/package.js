
var package = {

	packageSelect	: function (event,e) {

		var count	=	$(e).find('.packageSelect .qty');
		var countNumber	=	parseInt(count.text());
		countNumber++;
		count.text(countNumber);

		if(countNumber >= 1){
			$(e).addClass('on');
		}



	},

	packageMinus : function (event,e) {

		// 버블링 방지
		event.stopPropagation();

		var count	=		$(e).siblings('.qty');
		var countNumber	=	parseInt(count.text());
		countNumber--;
		count.text(countNumber);

		if(countNumber === 0){
			$(e).parents('.packageBtn').removeClass('on');

		}
	}
};
