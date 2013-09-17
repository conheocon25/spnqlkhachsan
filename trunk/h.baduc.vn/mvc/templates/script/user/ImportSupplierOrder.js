$("#main").live( "pagecreate", function( ){
	var CurrentPage = $.session.get('cafe_import_order_current_page');
	$.mobile.changePage("#"+CurrentPage);
});

$(".order").live( "pageshow", function( ){
	var CurrentPage = $.mobile.activePage.attr("id");
	$.session.set('cafe_import_order_current_page', CurrentPage);	
});