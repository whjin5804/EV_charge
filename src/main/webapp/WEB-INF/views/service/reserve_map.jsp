<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='/resources/fullcalendar-5.6.0/lib/main.css' rel='stylesheet' />
<script type="text/javascript" src="/resources/fullcalendar-5.6.0/lib/main.js"></script>
<style>
#calendar {
	width: 60%;
	margin: 20px auto;
}
</style>
</head>
<body>


	<!-- 캘린더를 나타내는 곳 -->
	<div id='calendar'></div>


</body>
<script type='text/javascript'>

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');
  let aaa = $('.fc-daygrid-event').attr('href');
//   alert(aaa);
  
  //구글 캘린더 연동
  var calendar = new FullCalendar.Calendar(calendarEl, {
		googleCalendarApiKey: 'AIzaSyAa3zQ-7a6B_BmBjvJkWDT69rgWB6C3Kaw',	//구글캘린더api access키
	  
	  
	  	//날짜 클릭 시 	
// 		 dateClick: function() {
// 		  alert('a day has been clicked!');
// 		}
  
		//없어야 날짜 클릭 생김  
		eventSources: [
	 	 	{
	        googleCalendarId: 'aqkekffkkj4ivp5quk9ofucvss@group.calendar.google.com',	//구글api id맵
	        className: 'Audi3040',
	        color: '#880E4F', //휴관일 색상
	        href : '#'
	        //textColor: 'black' 
			},
	
	      // 대한민국의 공휴일
			{
	            googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com"
	          , className : "koHolidays"
	          , color : "#FF0000"
	          , textColor : "#FFFFFF"
			}
   
		]
   });	//구글캘린더 연동 끝
  
  
  
  
  calendar.render();
});
</script>

</html>