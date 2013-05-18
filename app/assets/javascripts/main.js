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


	$('h3.new-link').on('click', function(){
		linkField.slideToggle();
	});
	$('h3.new-folder').on('click', function(){
		folderField.slideToggle();
	});
	$('.reveal').on('click', function(){
		settingsBox.slideToggle();
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

			// $this.css('background-color', liColor).slideDown();
			// opacity -= colorSteps;
	});


	// var signBox = $('div.sign-up').hide();
	// 		sw = $(window).width() / 2 - signBox.outerWidth() / 2,
	// 		sh = $(window).height() / 2 - signBox.outerHeight() / 2;


	// $('h3.sign').on('click', function(){
	// 	signBox.css({
	// 		'position': 'absolute',
	// 		'top': sh,
	// 		'left': sw
	// 	}).fadeToggle();
	// });

	// var logBox = $('div.log-in').hide();
	// 		lw = $(window).width() / 2 - logBox.outerWidth() / 2,
	// 		lh = $(window).height() / 2 - logBox.outerHeight() / 2;


	// $('h3.log').on('click', function(){
	// 	logBox.css({
	// 		'position': 'absolute',
	// 		'top': lh,
	// 		'left': lw
	// 	}).fadeToggle();
	// });


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

