<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- Top.jsp -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
<c:set var="res" value="${pageContext.request.contextPath}/resources"/>
<c:set var="view" value="${pageContext.request.contextPath}/WEB-INF/views"/>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>StarryNight</title>
  <!-- 플러그인 여기서 넣어놨었음 -->
  <!-- font-awesome Kit Code -->
  <script src="https://kit.fontawesome.com/672ea2e509.js" crossorigin="anonymous"></script>
  <!-- bootstrap 4 cdn -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!--  Custom CSS   -->
  <style>
	@font-face {
		font-family: 'S-CoreDream-3Light';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
		font-weight: normal;
		font-style: normal;
	}
	@font-face {
	    font-family: 'NEXON Lv2 Gothic';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv2 Gothic.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'Pretendard-Regular';
	    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
	    font-weight: 400;
	    font-style: normal;
	}
	
	*{
		font-family: 'S-CoreDream-3Light';
	}
	
	/*
	.navbar .navbar-menu-wrapper{
		border-bottom:1.5px solid #c1c1c1;
	}
	.sidebar{
		/*width:273px !important;
	}
	.sidebar-icon-only .sidebar{
		/*width:75px !important;
		background: #232227 !important;
	}
	.sidebar-icon-only .navbar-brand-wrapper{
		background: #232227 !important;
	}
	.sidebar-icon-only .navbar-brand-wrapper .icon-menu::before{
		color: #ffffff;
	}
	.sidebar-icon-only .menu-icon::before{
		color: #ffffff;
	}
	.sidebar-icon-only .load-immediate-icon{
		display:none;
	}
	.sticky {
		position: fixed;
		width: 220px;
	}
	#sidebar.active {
		background-color: rgba(0,0,0,45%);
	}
	*/
	#TopNav{
		background-color:green;
	}
	
</style>
</head>
<body class="sidebar-dark">
  <div class="container-scroller"> 
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 d-flex align-items-top" id="TopNav">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
        <div class="me-3">
          <button class="navbar-toggler navbar-toggler align-self-center" id="top-nav-3bar-menu-ic" type="button" data-bs-toggle="minimize">
            <span class="icon-menu"></span>
          </button>
        </div>
        <div>
          <a class="navbar-brand brand-logo" href="${path}/home.pog">⭐</a>
	      <a class="navbar-brand brand-logo-mini" href="${path}/home.pog">⭐</a>
        </div>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-top"> 
        <ul class="navbar-nav fg-1">
          <li class="nav-item font-weight-semibold d-none d-lg-block mra">
            <h1 class="welcome-text">날씨 스크래핑 <span class="text-black fw-bold">${m_id}</span></h1>
          </li>
          <!-- 구성원 검색 -->
          <li class="nav-item d-flex align-items-center mla">

          </li> 
  
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
    
    
      <!-- partial:partials/_settings-panel.html -->
      <!--   
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="ti-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close ti-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border me-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border me-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      -->
      

      
      <div class="main-panel padding-left-220px">
	    <div class="content-wrapper">
          <div class="row">
            <div class="col-sm-12">
              <div class="home-tab">
<!-- ------------------TOP.JSP END------------------ -->
<script></script>           
<!-- ------------------BODY START------------------ -->      

				