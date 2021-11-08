<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
out.write("hello jsp");
out.print("<p>hello out object</p>");
out.println("<p>hello out println</p>");
out.println("<p>implicit object 8개</p>");

// 객체를 선언한 이후에 사용할 수 있다는 점.
// Object a = new Object();
// a.toString();
%>

</body>
</html>