<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>메인 홈</title>
	</head>

	<body>
	<div id="home_msg">
		<p> 상준 board </p>
		<P> 접속 시간 ${serverTime} </P>
	</div>
	
	<div id="nav">
		<%@ include file="include/nav.jsp" %>
	</div>

</body>
</html>
