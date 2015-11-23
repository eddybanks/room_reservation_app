//= require jquery
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require moment
//= require fullcalendar
//= require calendar
//= require_tree .


var onResize = function() {
  // apply dynamic padding at the top of the body according to the fixed navbar height
  $("body").css("padding-top", $(".nav").height());
};

// attach the function to the window resize event
$(window).resize(onResize);

// call it also when the page is ready after load or reload
$(function() {
  onResize();
  cal_func();
});

var cal_func = function(){
  $("#calendar").fullCalendar({
    header: {
      left: 'prev, next today',
      center: 'title',
      right: 'month, basicWeek, basicDay'
    },
    editable: true,
    eventLimit: true
  });
};
