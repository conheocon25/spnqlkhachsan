$("#main").live( "pagecreate", function( ){
	var CurrentPage = $.session.get('cafe_category_course_current_page');
	$.mobile.changePage("#"+CurrentPage);
});

$(".category").live( "pageshow", function( ){
	var CurrentPage = $.mobile.activePage.attr("id");
	$.session.set('cafe_category_course_current_page', CurrentPage);
});