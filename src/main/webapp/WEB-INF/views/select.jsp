<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/js/select.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/select.css"/>
<link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/resources/img/favicon.ico" type="image/x-icon">
<head>
	<title>select</title>
</head>
<body>
	
	<div id="main">
		
		<%-- 표 뿌려준다 --%>
		<div id="selectTable">
			<div id="topLine">
				<div class="lunchSelect" id="tl"><font>${tl}</font></div>
				<div class="lunchSelect" id="tc"><font>${tc}</font></div>
				<div class="lunchSelect" id="tr"><font>${tr}</font></div>
			</div>
			<div id="middleLine">
				<div class="lunchSelect" id="ml"><font>${ml}</font></div>
				<div class="lunchSelect" id="mc"><font>${mc}</font></div>
				<div class="lunchSelect" id="mr"><font>${mr}</font></div>
			</div>
			<div id="bottomLine">
				<div class="lunchSelect" id="bl"><font>${bl}</font></div>
				<div class="lunchSelect" id="bc"><font>${bc}</font></div>
				<div class="lunchSelect" id="br"><font>${br}</font></div>
			</div>
		</div>
	
		<div id="retryBtn" onclick="retry();">
			<font>다시하기</font>
		</div>
	
		<%-- 결과전송폼 --%>
		<form id="form" name="form" method="post" action="">
			<input type="hidden" id="fSel" name="fSel" value="">
		</form>
		
	</div>
</body>
</html>
