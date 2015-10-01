$(document).ready(function() {

  $('#calendar').fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,basicWeek,basicDay'
    },
    editable: true,
    eventLimit: true, // allow "more" link when too many events
    eventSources: [
      {
        url: '/events?state_id=2',
        color: 'blue'
      },
      {
        url: '/events?state_id=3',
        color: 'green'
      }
    ],
  });

});
