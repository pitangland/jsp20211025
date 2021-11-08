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

<!-- form>select[name="year"]+br+input:s -->
<form action="">
	<select name="year" id="">
		<%
			for(int i = 1999; i < 2021; i++) {
				//selected 지정해서 주는 방법.
				String selected = "";
				
				if(i == 2010) {
					selected = "selected";
				}
		%>
			<option value=""<%= i %>" <%=selected %>><%= i %></option>
		<%
			}
		%>
	</select>
	<br>
	<input type="submit" value="전송">
</form>

</body>
</html>