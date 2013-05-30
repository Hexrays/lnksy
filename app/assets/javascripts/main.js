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
		$(this).next('.hidden').stop().slideToggle(300);
	});

	$('li').hover(function(){
		$(this).find('.hide').toggle();
	});

	$('.folder').hover(function(){
		$(this).find('.hide').toggle();
	});

	$('.post-form').on('submit', function(evt){
		if ($('#post_link_url').val() === '') {
			alert('Your submission is useless without a lnk.');
			evt.preventDefault();
		} else {
			$('.button').attr('disabled', true);
		}
	}); // end stop multi submissions


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