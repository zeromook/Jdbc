<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="mook" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select 태그 사용</title>
</head>
<body>
	<mook:select name="code" value="RGB 모드" wb="흑백 모드"/>&nbsp;
	<mook:select name="genre" rock="락" ballad="발라드" metal="메탈"/>
</body>
</html>