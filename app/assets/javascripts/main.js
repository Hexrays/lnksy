$(document).ready(function(){
	var liCount = $(".link-list li").length;
			colorSteps = 1/liCount;
			opacity = 1;
			linkField = $('div.add-link').hide();
			folderField = $('div.add-folder').hide();
			linkList = $('#col-2 ul.link-list li').hide();
			settingsBox = $('.settings-box').hide();
	// console.log(liCount);
	// console.log(colorSteps);
	// linkList.slideDown(750);

	$('.open').on('click', function(){
		$(this).next('.hidden').slideToggle('fast');
	});

	$('li').hover(function(){
		$(this).find('.hide').toggle();
	});

	$('.folder').hover(function(){
		$(this).find('.hide').toggle();
	});


	linkList.each(function(index){
		var $this = $(this);
				// liColor = 'rgba(0,188,235, '+opacity+')';

		setTimeout(function(){
			var liColor = 'rgba(0,188,235, '+opacity+')';
			$this.css('background-color', liColor).fadeIn(500);
			opacity -= colorSteps;
		}, index * 50);


	});

}); // end ready