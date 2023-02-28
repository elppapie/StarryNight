<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href='<c:url value="/Calendar/ToCal.pog"/>'>캘린더</a>
<a href='<c:url value="/Calendar/AddEvent.pog"/>'>일정입력</a>
