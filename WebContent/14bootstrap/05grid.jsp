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
	.row {
		background-color: silver;
	}
	.row :nth-child(even) {
		background-color: seaGreen;
	}
	.row :nth-child(odd) {
		background-color: springGreen;
	}
</style>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h1>Lorem ipsum dolor sit amet.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos ipsam tempore voluptatum at amet eum corporis in consectetur officia praesentium facere quam omnis rem expedita iste adipisci quo. Libero quibusdam.</p>
</div>

<div class="container">
	<div class="row">
		<div class="col">
			<h1>Lorem ipsum dolor sit amet.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet ab ipsam voluptate numquam modi enim. Dicta soluta at voluptatem vitae illo quisquam reprehenderit sint nam dolore veniam repellendus voluptas deleniti!</p>
		</div>
	</div>
</div>

<hr>

<!-- .container>.row>.col*12>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Couatur!</div>
		<div class="col">Nihil?</div>
		<div class="col">Amet!</div>
		<div class="col">Laudantium!</div>
		<div class="col">Nemo.</div>
		<div class="col">Ad.</div>
		<div class="col">Quidem.</div>
		<div class="col">Odio.</div>
		<div class="col">Sapiente!</div>
		<div class="col">Cupiditate.</div>
		<div class="col">Alias.</div>
	</div>
</div>

<hr>

<!-- .container>.row>.col*4>lorem1 -->
<div class="container">
	<div class="row">
		<div class="col">Lorem.</div>
		<div class="col">Suscipit.</div>
		<div class="col">Ex.</div>
		<div class="col">Explicabo.</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>