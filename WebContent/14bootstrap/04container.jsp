<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

<style>
	.container {
		background-color: skyblue;
	}
	div {
		background-color: silver;
	}
	.container-fluid {
		background-color: tomato;
	}
</style>

<title>Insert title here</title>
</head>
<body>

<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id praesentium sint voluptas molestiae hic incidunt exercitationem repellendus recusandae temporibus dignissimos perferendis officia sunt omnis ab alias impedit aliquid voluptates cumque!</div>
<div class="container">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur quasi libero repellendus neque totam provident voluptate aliquid itaque voluptates hic alias molestias quo natus deleniti placeat possimus magnam quisquam quas!</div>
<div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita aspernatur repudiandae numquam dignissimos similique maiores eos eveniet ut repellat iste distinctio culpa saepe? Magni eveniet obcaecati id minima ullam ratione.</div>
<%-- div와 container-fluid가 다른 이유는 살짝의 padding이 있다. --%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>