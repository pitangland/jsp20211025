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

<title>Insert title here</title>
</head>
<body>

<button class="btn">Lorem.</button>
<button class="btn btn-primary">In.</button>
<button class="btn btn-secondary">Facilis?</button>
<button class="btn btn-success">Quidem!</button>
<button class="btn btn-info">Saepe?</button>
<button class="btn btn-warning">Obcaecati!</button>
<button class="btn btn-danger">Sint!</button>
<button class="btn btn-dark">Velit!</button>
<button class="btn btn-light">Nihil.</button>
<button class="btn btn-link">Voluptatem.</button>

<hr>

<button class="btn btn-lg">Lorem.</button>
<button class="btn btn-primary btn-lg">In.</button>
<button class="btn btn-secondary btn-sm">Facilis?</button>
<button class="btn btn-success btn-sm">Quidem!</button>
<button class="btn btn-info btn-xs">Saepe?</button>
<button class="btn btn-warning btn-xs">Obcaecati!</button>
<button class="btn btn-danger">Sint!</button>
<button class="btn btn-dark">Velit!</button>
<button class="btn btn-light">Nihil.</button>
<button class="btn btn-link">Voluptatem.</button>

<!-- outline buttons -->

<button class="btn btn-outline-primary">Lorem.</button>
<button class="btn btn-outline-secondary">Mollitia.</button>
<button class="btn btn-outline-success">Aperiam?</button>
<button class="btn btn-outline-danger">Minima!</button>
<button class="btn btn-outline-warning">Deserunt.</button>
<button class="btn btn-outline-info">Voluptates.</button>
<button class="btn btn-outline-light">Deserunt.</button>
<button class="btn btn-outline-dark">Modi.</button>

<hr>

<button class="btn btn-primary">Lorem.</button>

<input type="button" value="lorem" class="btn btn-primary">
<input type="button" value="submit" class="btn btn-primary">
<a href="#" class="btn btn-primary">lorem</a>


<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>