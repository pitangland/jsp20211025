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

<c:url value="25process.jsp" var="addBook2">
	<c:param name="title" value="pitangland"></c:param>
	<c:param name="writer" value="kimpitang"></c:param>
	<c:param name="price" value="200000"></c:param>
	<c:param name="stock" value="1"></c:param>
	<c:param name="publisher" value="land"></c:param>
</c:url>

<a href="${addBook2 }">pitangland 책 추가하기</a>

</body>
</html>