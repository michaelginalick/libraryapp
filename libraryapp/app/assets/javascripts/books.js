$(document).ready(function(){
	
		$("#bookSearch").on('keyup', function(e){
			e.preventDefault();
			var searchContent = $('#bookSearch').val();
			if(searchContent.length >= 4) {
				bookSearch(searchContent);
			}	
		});

		var bookSearch = function(searchContent){
			$.ajax({
				type: "GET",
				url: "/books/",
				data: {
					search: searchContent
				},
				success: function(data){
					var jqObj = data;
					var searchResults = $(jqObj).find(".book");
					$("#books").empty().append(searchResults);
				}
			})
		}	
});


// ajaxRequests = new Array();

// queueRequest = function(whatever, you, want) {
//     if(ajaxRequests[ajaxRequests.length - 1]) {
//         ajaxRequests[ajaxRequests.length - 1].abort();
//     }

//     ajaxRequests[ajaxRequests.length] = //Insert New jQuery AJAX call here.
// }