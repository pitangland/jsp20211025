<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">

<title>Insert title here</title>
</head>
<body>

<p>java bean property(속성)중 boolean 타입일 경우 get 메서드명이 is로 시작할 수 있다.</p>

<%-- Bean03에서 설명 --%>

<%-- 
Bean04를 java bean 규칙을 따라서 작성
아래 3개의 속성(property)을 갖도록 만들어라.
String nickName
int age
boolean vip
--%>

</body>
</html>