$(document).ready(function(){
	$(window).scroll(function(){
		if(this.scrollY > 20){
			$('.gnavbar').addClass("sticky");
		}else{
			$('.gnavbar').removeClass("sticky");
		}
	
	});


	// toggle menu /navbar script //
$('.gmenu-btn').click(function(){
	$('.gnavbar .gmenu').toggleClass("active");
	$('.gmenu-btn i').toggleClass("active");
	});

});










