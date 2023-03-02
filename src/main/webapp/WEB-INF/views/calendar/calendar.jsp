<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!-- fullcalendar css -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
<!-- fullcalendar 언어 설정관련 js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
<script src="${path}/resources/js/fullcalendar.index.global.min.js"></script>
<!-- 제이쿼리 사용 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<div>
	<h1>
		캘린더 만드는 페이지입니다  
	</h1>
	<div id="calendar"></div>
</div>
<style>
.fc-body .fc-row { min-height: 45px; }
.fc-theme-standard .fc-scrollgrid {
    border: 1px solid white;
    border: 1px solid var(--fc-border-color, white);
    background-color: black;
}
.fc-daygrid-day-number{
    color: white;
	float:left;
	align-items:left !important;
	font-weight: bold;
}
.fc-daygrid-day-top{
	overflow:auto;
	text-align:left !important;
	
}

</style>
<script>
	$(function(){
		//fullCalendar 가져오는 함수 정의
		function fullCalendarAPI(){
			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : 'dayGridMonth', // 초기화면: 월간달력
				locale: 'ko',
				headerToolbar : {
					start : '',
					center : 'title',
					end : ''
				},
				titleFormat : function(date) {
					return date.date.year + '년 ' + (date.date.month+1) + '월';
				},
				selectable : false,
				droppable : false,
				editable : false,
				nowIndicator: true,
				handleWindowResize: false,
				aspectRatio: 0.7
				//,contentHeight: 300
			});
			calendar.render();
		}
		//풀캘린더 가져오기
		fullCalendarAPI();
	});

	$(function(){
		//console.log($('.fc-daygrid-day-number').text());
		
		// 00일 --> 00 으로 변경
		$('.fc-daygrid-day-number').each(function(){
			$(this).text($(this).text().split('일')[0]);
		});
		var oneDayEvent = '<div style="display:flex;"></div>'
		var square = '<div style="background-color:pink; border-radius:20px; height:20px; width:auto; margin:0 5px 0 5px; font-size:0.7rem; text-align:center; line-height:20px;">일일 이벤트</div>'
		var dateFormed = "2023-03-15";
		//.insertAfter($('td[data-date='+dateFormed+']'))
		$('td[data-date='+dateFormed+'] > div > div:nth-child(2)').prepend(oneDayEvent).append(square);
	});
</script>


