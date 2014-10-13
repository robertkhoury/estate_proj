$('#advanced_search').click(function(){
	if ($(".advanced_search").is(":visible")) {
		$(".advanced_search").fadeOut(400)
	}
	else {
		$(".advanced_search").fadeIn(400);
	}
});

$('.advanced_search').hide(1)
