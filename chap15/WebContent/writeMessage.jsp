<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="guestbook.service.WriteMessageService"%>
<%@page import="guestbook.model.Message"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="message" class="guestbook.model.Message">
	<jsp:setProperty name="message" property="*" />
</jsp:useBean>
<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);
%>

    
<html>
<head>
<title>방명록 메세지 남김</title>
</head>
<body>
	방명록에 메세지를 남겼습니다
	<a href="list.jsp">[목록보기]</a>
</body>
</html>