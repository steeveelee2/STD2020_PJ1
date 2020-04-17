/**
 * 
 */
$(document).ready(function(){
	bannerRolling();
});

function bannerRolling(){
	$('.bxslider').bxSlider({
		mode:'horizontal', 
		speed:500, 
		auto: true,
		captions: true, 
		autoControls: false, 
	});
} 