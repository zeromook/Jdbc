<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.PreparedStatement"%>

<%
	request.setCharacterEncoding("utf-8");


	String memberID = request.getParameter("memberID");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
       //1. jdbc 드라이버 로딩
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection conn = null;
       PreparedStatement pstmt = null;
       
       
       try{
          String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:XE";
          String dbUser = "hr";
          String dbPass = "hr";
          
          //2. 커넥션생성
          conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
          
          //3. statement생성
          pstmt = conn.prepareStatement(
        		  "insert into MEMBER2 VALUES(?,?,?,?)"
          );
          //4. 쿼리 실행
		  pstmt.setString(1,memberID);          
		  pstmt.setString(2,password);          
		  pstmt.setString(3,name);          
		  pstmt.setString(4,email);          
          
          
          
          
          pstmt.executeUpdate();
          
          //5. 출력 
          }
       finally{
           if(pstmt != null)try{pstmt.close();}catch(SQLException ex){}
           if(conn != null)try{conn.close();}catch(SQLException ex){}
        }
%>
    
<html>
<head>
<meta charset="UTF-8">
<title>이름 등록하기</title>
</head>
<body>

	MEMBER2 테이블에 새로운 레코드를 등록했습니다.^_*
</body>
</html>