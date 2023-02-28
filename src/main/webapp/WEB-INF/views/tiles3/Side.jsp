<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Side.jsp -->
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="res" value="${pageContext.request.contextPath}/resources" />
<style>
	#sidebar{
		background-color:pink;
	}
</style>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
	
		<li class="nav-item">23년 1월</li>
		<li class="nav-item">23년 2월</li>
		<li class="nav-item">23년 3월</li>
	</ul>
</nav>
<!-- partial -->