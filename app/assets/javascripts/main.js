$(document).ready(function(){
	var liCount = $(".link-list li").length;
			colorSteps = 1/liCount;
			// liColor;
			opacity = 1;

	console.log(liCount);
	console.log(colorSteps);

	for (var i = 0; i<liCount; i++){
		// console.log('the opacity is now '+ opacity);
		liColor = 'rgba(168, 84, 42, '+opacity+')';
		$(".link-list li:nth-child("+i+")").css('background-color', liColor);
		opacity -= colorSteps;
	}

});

