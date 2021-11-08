<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String code = request.getParameter("code");
%>

<%
if("food".equals(code)) {
	String[] food = {"apple", "melon", "banana"};
	request.setAttribute("food",food);
%>
	<jsp:forward page="10pagea.jsp"></jsp:forward>
<%
} else if ("song".equals(code)) {
	List<String> song = new ArrayList<>();
	song.add("yesterday");
	song.add("let it be");
	song.add("butter");
	song.add("jean");
	request.setAttribute("song", song);
%>
	<jsp:forward page="10pageb.jsp"></jsp:forward>
<% 
}
%>