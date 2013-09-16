// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require foundation
//= require fullcalendar
//= require turbolinks
//= require_tree .
$(document).foundation();
$(document).ready(function() {
	// Instantiate FullCalendar object into the calendar container
    $('#mainCalendarContainer').fullCalendar({
    	// Customizing calendar options
    	header: {
    		left  : 'prev,next',
    		center: 'title',
    		right : 'today'
    	},
    	titleformat: {
    		month: 'MMMM yyyy'
    	},
    	dayClick: function(date, allDay, e, view) {
    		$('#sidebar').removeClass('hidden');
    		$('.selected').removeClass('selected');
    		$(this).addClass('selected');
    	}
    });

    // var	john    = $('<a class="th"><img src="lib/images/mii.jpg"></a>'),
    // 	jill    = $('<a class="th"><img src="lib/images/fii.png"></a>'),
    // 	day     = $('*[data-date="2013-09-20"]').find('.fc-day-content');
    
    // day.append(john);

    // Subview close button (x)
    $('#closeButton').click(function() {
    	$('#sidebar').addClass('hidden');
    });
});