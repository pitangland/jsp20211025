<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- form>textarea+input:s -->
<form action="">
	<textarea name="text1" id="" cols="30" rows="10"></textarea>
	<br>
	<input type="text" name="text2" id="">
	<input type="submit" value="전송">
</form>

<hr>

<%
String txt = request.getParameter("text1");
%>

<!-- html로 적어넣는 것은 script요소를 써서 변경할 수도 있으므로 위험하다. -->
<div><%= txt %></div>

<hr>

<textarea name="" id="" cols="30" rows="10" readonly><%= txt %></textarea>

<div><%= request.getParameter("text2") %></div>

</body>
</html>