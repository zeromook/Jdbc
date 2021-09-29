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
	<mk:set var="dateEL" value="<%=new Date()%>"/>
	
	<zr:removeHtml trim="true">
		<font size="10">현재 <style>시간</style>은 ${dateEL}</font>
	</zr:removeHtml>

	<zr:removeHtml length="15" trail="..." trim="true">
		<u>현재 시간</u>은 <b>${dateEL}</b> 입니다.
	</zr:removeHtml>
	
	<zr:removeHtml length="15">
		<jsp:body><u>현재 시간</u>은 <b>${dateEL}</b> 입니다.</jsp:body>
	</zr:removeHtml>

</body>
</html>