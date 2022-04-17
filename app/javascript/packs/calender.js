import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';

document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');

  const calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, interactionPlugin],
    locale: 'ja',
    timeZone: 'Asia/Tokyo',
    firstDay: 1,
    customButtons: {
      myCustomButton: {
        text: 'みんなの投稿',
        click: function(){
          location.href = "/events/new";
        }
      }
    },
    headerToolbar: {
      start: 'myCustomButton',
      center: 'title',
      end: 'today prev,next' 
    },
    buttonText: {
      today: '今日',
      month: '月',
    },
    
    events: '/events.json',
    

    expandRows: true,
    height: "auto",
    dayCellContent: function(e) {
      e.dayNumberText = e.dayNumberText.replace('日', '');
    },
    dateClick: function(e){ 
      location.href = `/events/new?date=${e.dateStr}` ;
    },
  });


  
  calendar.render();
});