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

<!-- form>input:c[name=param1]{동의}+br+input:s -->
<form action="">
	<input type="checkbox" name="param1" id=""> 동의
	<br>
	<input type="submit" value="동의함">
</form>

<%
String param1 = request.getParameter("param1");

out.print("<p>");
if(param1 != null && param1.equals("on")) {
	out.print("앞으로 스팸메일을 계속 보냈겠습니다.");
} else {
	out.print("스팸메일을 보내지 않겠습니다.");
}
out.print("</p>");
%>

</body>
</html>