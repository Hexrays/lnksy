$(document).ready(function(){
	var liCount = $(".link-list li").length;
			colorSteps = 1/liCount;
			opacity = 1;
			linkField = $('div.add-link').hide();
			folderField = $('div.add-folder').hide();
			linkList = $('ul.link-list').hide();

	// console.log(liCount);
	// console.log(colorSteps);
	linkList.slideDown(750);

	for (var i = 0; i<liCount; i++){
		// console.log('the opacity is now '+ opacity);
		liColor = 'rgba(0,188,235, '+opacity+')';
		$(".link-list li:nth-child("+i+")").css('background-color', liColor);
		opacity -= colorSteps;
	}

	$('h3.new-link').on('click', function(){
		linkField.slideToggle();
	});
	$('h3.new-folder').on('click', function(){
		folderField.slideToggle();
	});

});

