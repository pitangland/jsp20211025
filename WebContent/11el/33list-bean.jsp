<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
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
List<Bean04> list = new ArrayList<>();
Bean04 b1 = new Bean04();
b1.setNickName("pitang");
b1.setAge(25);

Bean04 b2 = new Bean04();
b2.setNickName("land");
b2.setAge(30);

list.add(b1);
list.add(b2);

pageContext.setAttribute("list", list);
%>
<%--
Bean04타입의 아이템을 2개 갖는 list를 page영역에 attribute로 넣기
 --%>

<p>${list[0].nickName } : ${list[0].age }</p>
<p>${list[1].nickName } : ${list[1].age }</p>

</body>
</html>