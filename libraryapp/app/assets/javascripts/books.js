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


	$('#newBook').validate({
		debug: true,
		rules: {
			'book[author]': {required: true},  //added this
			'book[title]': {required: true},
			'book[genre]': {required: true}
		}
	});
});

