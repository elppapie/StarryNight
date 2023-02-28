<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!-- bootstrap 4 cdn -->
<!--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">   -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

.wrap {
	width: 100%;
}

.Header, .content, .Footer {
	width: 100%;
	float: left;
}

.Header, .Footer {
	height: 8em;
}

.SideBar {
	width: 10%;
	height: 100%;
	background-color: #FFBB00;
	float: left;
}

.page_content {
	width: 90%;
	float: left;
}

.Header {
	background-color: #ABF200;
}

.Footer {
	background-color: #FF00DD;
}
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="text/javascript">
	var CONTEXT_PATH = "${CONTEXT_PATH}";
	var RESOURCES_PATH = "${RESOURCES_PATH}";
</script>
<title>⭐이벤트 캘린더⭐</title>
</head>

<body>
	<div class='wrap'>
		<tiles:insertAttribute name="top" />
		<div class='content'>
			<tiles:insertAttribute name="side" />
			<div class="page_content">
				<tiles:insertAttribute name="content" />
			</div>
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>

</html>