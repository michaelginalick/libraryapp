$(document).ready(function(){
	
		$("#bookSearch").on('keyup', function(e){
			e.preventDefault();
			var searchContent = $('#bookSearch').val();
			bookSearch(searchContent);
		});

		var bookSearch = function(searchContent){
			$.ajax({
				url: "/books/",
				data: {
					search: searchContent
				},
				type: "GET",
				success: function(data){
					var jqObj = data;
					var searchResults = $(jqObj).find(".book");
					$("#books").empty().append(searchResults);
				}
			})
		}	
});
