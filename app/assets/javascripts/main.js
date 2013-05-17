$(document).ready(function(){
	var liCount = $(".link-list li").length;
			colorSteps = 1/liCount;
			opacity = 1;
			linkField = $('div.add-link').hide();
			folderField = $('div.add-folder').hide();
			linkList = $('ul.link-list li').hide();

	// console.log(liCount);
	// console.log(colorSteps);
	// linkList.slideDown(750);


	$('h3.new-link').on('click', function(){
		linkField.slideToggle();
	});
	$('h3.new-folder').on('click', function(){
		folderField.slideToggle();
	});

	$('li').hover(function(){
		$(this).find('.hide').toggle();
	});

	$('ul.link-list li').each(function(index){
		var $this = $(this);
				// liColor = 'rgba(0,188,235, '+opacity+')';

		setTimeout(function(){
			var liColor = 'rgba(0,188,235, '+opacity+')';
			$this.css('background-color', liColor).fadeIn();
			opacity -= colorSteps;
		}, index * 50);

			// $this.css('background-color', liColor).slideDown();
			// opacity -= colorSteps;
	});

		// for (var l = 0; l < liCount; l++) {
		// 	$("ul.link-list li:nth-child("+l+")").slideDown();
		// };

	// jQuery.fn.rollDown = function( speed, easing, callback ) {
		// for (var i = 0; i < liCount; i++) {
		// 	$("ul.link-list li:nth-child("+i+")").toggle();
		// };

		// return $this.slideDown(500, function(){
		// 	$this.delay(2000).slideUp(500);
		// });	
	// };

	// linkList.rollDown();



});

