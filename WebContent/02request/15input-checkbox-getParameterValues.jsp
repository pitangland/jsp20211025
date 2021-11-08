
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
<!-- 코드작성 -->
<form action="">
	<input type="checkbox" name="movie" value="라라랜드" id=""> 라라랜드
	<input type="checkbox" name="movie" value="오징어게임" id=""> 오징어게임
	<input type="checkbox" name="movie" value="인턴" id=""> 인턴
	<input type="checkbox" name="movie" value="비긴어게인" id=""> 비긴어게인
	<input type="checkbox" name="movie" value="미드나잇 인 파리" id=""> 미드나잇 인 파리
	<br>
	<input type="submit" value="제출">
</form>

<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if(movies != null) {
	for(String movie : movies) {
		out.print("<li>");
		out.print(movie);
		out.print("</li>");
	}
}
%>
</ul>


</body>
</html>