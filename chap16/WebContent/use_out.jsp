<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="mk" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="zr" tagdir="/WEB-INF/tags" %>
<html>
<head>
<meta charset="UTF-8">
<title>removeHtml</title></head>
<body>
	
	<zr:out>
		<jsp:body><u>현재 시간</u>은 <b>${dateEL}</b>입니다.</jsp:body>
	</zr:out>

	<zr:out>
		<%= new Date() %><u>현재 시간</u>은 <b>${dateEL}</b>입니다.
	</zr:out>
	
	<zr:out>
		<font size="10">현재 시간은 ${dateEL}</font>
	</zr:out>

</body>
</html>