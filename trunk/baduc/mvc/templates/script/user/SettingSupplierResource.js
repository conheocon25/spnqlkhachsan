$("#main").live( "pagecreate", function( ){
	var CurrentPage = $.session.get('cafe_setting_supplier_current_page');
	$.mobile.changePage("#"+CurrentPage);
});

$(".supplier").live( "pageshow", function( ){
	var CurrentPage = $.mobile.activePage.attr("id");
	$.session.set('cafe_setting_supplier_current_page', CurrentPage);
});