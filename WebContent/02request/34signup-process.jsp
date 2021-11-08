<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원정보</h1>
id : <%= request.getParameter("name") %> <br>
email : <%= request.getParameter("email") %> <br>
pw : <%= request.getParameter("password") %> <br>

<hr>

<a href="/jsp20211025/02request/33signup-form.jsp">33번 파일로 돌아가</a>
</body>
</html> 