$("#main").live( "pagecreate", function( ){
	var CurrentPage = $.session.get('cafe_setting_current_page');
	//alert("co");
	if (CurrentPage==null){
		CurrentPage="unit";
	}
	//Di chuyển đến trang đã lưu trước đó
	$.mobile.changePage("#"+CurrentPage);	
});

$("#category").live( "pageshow", function( ){
	$.session.set('cafe_setting_current_page', "category");
});

$("#domain").live( "pageshow", function( ){
	$.session.set('cafe_setting_current_page', "domain");
});

$("#supplier").live( "pageshow", function( ){
	$.session.set('cafe_setting_current_page', "supplier");
});

$("#employee").live( "pageshow", function( ){
	$.session.set('cafe_setting_current_page', "employee");
});

$("#unit").live( "pageshow", function( ){
	$.session.set('cafe_setting_current_page', "unit");
});

