<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/js/index.js"></script>
<script type="text/javascript" src="/resources/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/jquery.bxslider.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/index.css"/>
<head>
	<title>index</title>
</head>
<body>
<h1>점 심</h1>

<div id="simonsays">
	<ul class="bxslider">
		<li><img src='/resources/img/kitty1.jpg' style="width:100%;height:220px"></li>
		<li><img src='/resources/img/kitty2.jpg' style="width:100%;height:220px"></li>
		<li><img src='/resources/img/kitty3.jpg' style="width:100%;height:220px"></li>
		<li><img src='/resources/img/kitty4.jpg' style="width:100%;height:220px"></li>
    </ul>
</div>

<div>
	<button onclick="start();">시작하기</button>
</div>

<div style="position:static;width:500px;height:500px;background-color:red;">
	<font style="color:cyan;font-size:xx-large;">${testKey}</font>
</div>
</body>
</html>

<%--

시간은 환상이다. 점심시간은 두 배로 그렇다. - 더글러스 애덤스

아침은 왕처럼, 점심은 왕자처럼, 저녁은 거지처럼 먹어라. - 아델 데이비스

당신이 국가를 위해서 무엇을 할 수 있는지 묻지 말라. 점심이 무엇인지 물어라. - 오손 웰즈

세상에 공짜 점심은 없다. – 밀턴 프리드먼

--%>