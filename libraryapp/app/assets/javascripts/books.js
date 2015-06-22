$(document).ready(function(){



		$("#bookSearch").on('keyup', function(e){
			e.preventDefault();
			var searchContent = $('#bookSearch').val();
			bookSearch(searchContent);
		});



		var bookSearch = function(searchContent){
			//console.log('called');
			$.ajax({
				url: "/books/",
				data: {
					search: searchContent
				},
				type: "GET",
				success: function(data){
					console.log(data);
				}
			})
		}	


		// $('#newBook > div').attr('new').validate({
		// 	debug: true,
		// 	rules: {
		// 		'book[author]': {required: true},  //added this
		// 		'book[title]': {required: true},
		// 		'book[genre]': {required: true}
		// 	}
		// });
});
