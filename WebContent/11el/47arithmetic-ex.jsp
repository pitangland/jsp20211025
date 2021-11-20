<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>

<%-- http://localhost:8080/jsp20211025/11el/47arithmetic-ex.jsp?a=5&a=3 --%>

<p>a + b : ${param.a + param.b }</p>
<p>a - b : ${param.a - param.b }</p>
<p>a * b : ${param.a * param.b }</p>
<p>a / b : ${param.a / param.b }</p>
<p>a % b : ${param.a % param.b }</p>

</body>
</html>