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

<h1>31list-for-to.jsp</h1>

<%
List<String> data = (List<String>)session.getAttribute("data");
%>

<%
for(int i = 0; i < data.size(); i++) {
	pageContext.setAttribute("i", i);
%>
	<p>${i } : ${data[i] }</p>
<%
}
%>

</body>
</html>