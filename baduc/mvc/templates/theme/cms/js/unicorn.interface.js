/**
 * Unicorn Admin Template
 * Version 2.0.1
 * Diablo9983 -> diablo9983@gmail.com
**/

$(document).ready(function(){
	
	// === jQuery Peity === //
	/*$.fn.peity.defaults.line = {
		strokeWidth: 1,
		delimeter: ",",
		height: 24,
		max: null,
		min: 0,
		width: 50
	};
	$.fn.peity.defaults.bar = {
		delimeter: ",",
		height: 24,
		max: null,
		min: 0,
		width: 50
	};*/
	
	$(".sparkline_line_good span").sparkline("html", {
		type: "line",
		fillColor: "#B1FFA9",
		lineColor: "#459D1C",
		width: "50",
		height: "24"
	});
	$(".sparkline_line_bad span").sparkline("html", {
		type: "line",
		fillColor: "#FFC4C7",
		lineColor: "#BA1E20",
		width: "50",
		height: "24"
	});	
	$(".sparkline_line_neutral span").sparkline("html", {
		type: "line",
		fillColor: "#CCCCCC",
		lineColor: "#757575",
		width: "50",
		height: "24"
	});
	
	$(".sparkline_bar_good span").sparkline('html',{
		type: "bar",
		barColor: "#459D1C",
		barWidth: "5",
		height: "24"
	});
	$(".sparkline_bar_bad span").sparkline('html',{
		type: "bar",
		barColor: "#BA1E20",
		barWidth: "5",
		height: "24"
	});	
	$(".sparkline_bar_neutral span").sparkline('html',{
		type: "bar",
		barColor: "#757575",
		barWidth: "5",
		height: "24"
	});

	// === jQeury Gritter, a growl-like notifications === //
	$('#gritter-notify .normal').click(function(){
		$.gritter.add({
			title:	'Normal notification',
			text:	'Đã cập nhật dữ liệu',
			sticky: false
		});		
	});
	
	$('#gritter-notify .sticky').click(function(){
		$.gritter.add({
			title:	'Sticky notification',
			text:	'This is a sticky notification',
			sticky: true
		});		
	});
	
	$('#gritter-notify .image').click(function(){
		var imgsrc = $(this).attr('data-image');
		$.gritter.add({
			title:	'Unread messages',
			text:	'You have 9 unread messages.',
			image: imgsrc,
			sticky: false
		});		
	});
    
    
    // === Popovers === //
    var placement = 'bottom';
    var trigger = 'hover';
    var html = true;

    $('.popover-visits').popover({
       placement: placement,
       content: '<span class="content-big">36094</span> <span class="content-small">Total Visits</span><br /><span class="content-big">220</span> <span class="content-small">Visits Today</span><br /><span class="content-big">200</span> <span class="content-small">Visits Yesterday</span><br /><span class="content-big">5677</span> <span class="content-small">Visits in This Month</span>',
       trigger: trigger,
       html: html   
    });
    $('.popover-users').popover({
       placement: placement,
       content: '<span class="content-big">1433</span> <span class="content-small">Total Users</span><br /><span class="content-big">0</span> <span class="content-small">Registered Today</span><br /><span class="content-big">0</span> <span class="content-small">Registered Yesterday</span><br /><span class="content-big">16</span> <span class="content-small">Registered Last Week</span>',
       trigger: trigger,
       html: html   
    });
    $('.popover-orders').popover({
       placement: placement,
       content: '<span class="content-big">8650</span> <span class="content-small">Total Orders</span><br /><span class="content-big">29</span> <span class="content-small">Pending Orders</span><br /><span class="content-big">32</span> <span class="content-small">Orders Today</span><br /><span class="content-big">64</span> <span class="content-small">Orders Yesterday</span>',
       trigger: trigger,
       html: html   
    });
    $('.popover-tickets').popover({
       placement: placement,
       content: '<span class="content-big">2968</span> <span class="content-small">All Tickets</span><br /><span class="content-big">48</span> <span class="content-small">New Tickets</span><br /><span class="content-big">495</span> <span class="content-small">Solved</span>',
       trigger: trigger,
       html: html   
    });

    // === jQuery UI Components === //
     $("#dialog").dialog({
		autoOpen: false,
		width: 600,
		buttons: {
			"Ok": function () {
				$(this).dialog("close");
			},
			"Cancel": function () {
				$(this).dialog("close");
			}
		},
		show: {
			effect: "fade",
			duration: 500
		},
		hide: {
			effect: "fade",
			duration: 500
		}
	});

     // Dialog message
	$("#modal-dialog").dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			Ok: function () {
				$(this).dialog("close");
			}
		}
	});
	$("#open-dialog").click(function(){
		$("#dialog").dialog("open");
		return false;
	});
	$("#open-modal").click(function(){
		$("#modal-dialog").dialog("open");
		return false;
	})

	// Datepicker
	$('#ui-datepicker').datepicker({
		inline: true
	});

	// Horizontal Slider
	$('#h-slider').slider({
		range: true,
		values: [17, 67]
	});

	// Vertical slider
    $("#v-slider").slider({
	    orientation: "vertical",
	    range: "min",
	    min: 0,
	    max: 100,
	    value: 60,
	    slide: function (event, ui) {
		    $("#amount").val(ui.value);
	    }
    });
    $("#amount").val($("#v-slider").slider("value"));

    // Autocomplete
    var availableTags = ["ActionScript", "AppleScript", "Asp", "BASIC", "C", "C++", "Clojure", "COBOL", "ColdFusion", "Erlang", "Fortran", "Groovy", "Haskell", "Java", "JavaScript", "Lisp", "Perl", "PHP", "Python", "Ruby", "Scala", "Scheme"];
     
    $("#tags").autocomplete({
    	source: availableTags
    });

    // Menu
    $("#menu").menu();

    // Spinner
	var spinner = $( "#spinner" ).spinner();
	 
	$( "#disable" ).click(function() {
		if ( spinner.spinner( "option", "disabled" ) ) {
			spinner.spinner( "enable" );
		} else {
			spinner.spinner( "disable" );
		}
	});
	$( "#destroy" ).click(function() {
		if ( spinner.data( "ui-spinner" ) ) {
			spinner.spinner( "destroy" );
		} else {
			spinner.spinner();
		}
	});
	$( "#getvalue" ).click(function() {
		alert( spinner.spinner( "value" ) );
	});
	$( "#setvalue" ).click(function() {
		spinner.spinner( "value", 5 );
	});
});
