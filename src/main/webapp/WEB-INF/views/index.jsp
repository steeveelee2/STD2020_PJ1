<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/js/index.js"></script>
<script type="text/javascript" src="/resources/js/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/jquery.bxslider.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/index.css"/>
<link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">
<link rel="icon" href="/resources/img/favicon.ico" type="image/x-icon">
<head>
	<title>Today's Lunch</title>
</head>
<body>
<h1 id="mainTitle">점 심 선 택 기</h1>

<div id="main">
	<ul class="bxslider">
		<li>
			<img class="slideImg" src='/resources/img/dna.jpg'>
			<div class="slideNm"><font>더글러스<br>애덤스</font></div>
			<div class="slideClr"></div>
			<div class="slideTxt"><font style="font-size:16px">시간은 환상이다. 점심시간은 두 배로 그렇다.</font></div>
			<br>
		</li>
		<li>
			<img class="slideImg" src='/resources/img/aadd.jpg'>
			<div class="slideNm"><font>아델<br>데이비스</font></div>
			<div class="slideClr"></div>
			<div class="slideTxt"><font style="font-size:14px">아침은 왕처럼, 점심은 왕자처럼, 저녁은 거지처럼 먹어라.</font></div>
			<br>
		</li>
		<li>
			<img class="slideImg" src='/resources/img/ow.jpg'>
			<div class="slideNm"><font>오손<br>웰즈</font></div>
			<div class="slideClr"></div>
			<div class="slideTxt"><font style="font-size:11px">당신이 국가를 위해서 무엇을 할 수 있는지 묻지 말라. 점심이 무엇인지 물어라.</font></div>
			<br>
		</li>
		<li>
			<img class="slideImg" src='/resources/img/mp.jpg'>
			<div class="slideNm"><font>밀턴<br>프리드먼</font></div>
			<div class="slideClr"></div>
			<div class="slideTxt"><font style="font-size:16px">세상에 공짜 점심은 없다.</font></div>
			<br>
		</li>
    </ul>
    
    <div id="startBtn">
		<button onclick="start();">시작하기</button>
	</div>
</div>


<%-- <div style="position:static;width:500px;height:500px;background-color:red;">
	<font style="color:cyan;font-size:xx-large;">${testKey}</font>
</div> --%>
</body>
</html>