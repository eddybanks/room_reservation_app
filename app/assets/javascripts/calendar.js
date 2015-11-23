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
