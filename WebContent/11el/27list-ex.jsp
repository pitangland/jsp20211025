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

<%
List<String> list1 = new ArrayList<>();
list1.add("pi");
list1.add("tang");
list1.add("land");

String[] arr1 = {"pitang", "land"};

pageContext.setAttribute("arr1", arr1);
pageContext.setAttribute("list1", list1);
%>

<p>${arr1[0] }</p>
<p>${arr1[1] }</p>
<p>${list1[0] }</p>
<p>${list1["1"] }</p>
<p>${list1["2"] }</p>

</body>
</html>