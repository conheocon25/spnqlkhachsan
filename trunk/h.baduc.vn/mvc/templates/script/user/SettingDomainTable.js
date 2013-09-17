$("#main").live( "pagecreate", function( ){
	var CurrentPage = $.session.get('cafe_domain_table_current_page');
	$.mobile.changePage("#"+CurrentPage);
});

$(".domain").live( "pageshow", function( ){
	var CurrentPage = $.mobile.activePage.attr("id");
	$.session.set('cafe_domain_table_current_page', CurrentPage);	
});