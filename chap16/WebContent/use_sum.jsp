<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sum 사용</title>
</head>
<body>
	<tf:sum begin="1" end="10">
		1~10까지의 합은 ${sum}요
	
	</tf:sum>
</body>
</html>