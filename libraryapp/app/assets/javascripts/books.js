$(document).ready(function(){



	// $("#bookSearch").on('keyup', function(e){
	// 	e.preventDefault();
	// 	bookSearch();
	// });



	// var bookSearch = function(){
	// 	$.ajax({
	// 		url: "/books/",
	// 		type: "GET",
	// 		success: function(data){
	// 			console.log(data);
	// 		}
	// 	})
	// }


	$("#bookSearch").keyup(function() {
		$.get($("#bookSearch").attr("action"), 
		$("#bookSearch").serialize(), null, "script");
		return false;  
	});
});

