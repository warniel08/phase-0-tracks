$(function(){
	$("p").mouseenter(function(){
		$(this).fadeTo("slow", .25);
	});
	$("p").mouseleave(function(){
		$(this).fadeTo("slow", 1);
	});

});