$(document).ready(function(){


	$('#checkout_id').on("click", "a", (function(e){
		e.preventDefault();
	 
	  $('.books_status').hide();
	  $('.books_number').hide();
	  var url = $(this).attr('href');
	 
		$.get(url, function(response){
				$('body').append(response);
		 });


		})
	);


	// var show_checkout = function(link){
	// 	 $.ajax({
 //    		url: link.href,
 //    		type: "GET",
 //    			success: function(data) {
 //      			var jqObj = data;
	// 					var searchResults = $(jqObj).find(".xhr_book_info");
	// 					console.log(searchResults);
	// 					var x = searchResults.find("#header-wrap");
	// 					x.hide();
	// 					$('body').append(searchResults);
 //      		}
 //  		})

	// };
});	