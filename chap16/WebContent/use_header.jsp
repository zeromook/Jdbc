<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목 출력</title>
</head>
<body>

<tf:header title="커스텀태그 텍스트 제목" level="2" />

<tf:header title="${'EL 제목'}" level="3" />

<tf:header title='<%="표현식 제목" %>' />


</body>
</html>