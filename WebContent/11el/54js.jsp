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

<h1>javascript</h1>

<script>
console.log("hello js");

let name = "pitang";
let age = 24;
let desc = `i'm \${name} and i'm \${age}`;
/* el 앞에 \를 넣어주면 이 자체를 사용할 수 있다.*/

console.log(desc);

</script>

</body>
</html>