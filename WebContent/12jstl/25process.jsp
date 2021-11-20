<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="sample03javabean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
//1. 파라미터 받은 값을 bean06 객체로 만들어서
String title = request.getParameter("title");
String writer = request.getParameter("writer");
//getParameter 가 받는 값이 String이기 때문에 타입은 String text 정보임.
String priceStr= request.getParameter("price");
int price = Integer.parseInt(priceStr);
String publisher = request.getParameter("publisher");
String stockStr = request.getParameter("stock");
int stock = Integer.parseInt(stockStr);

Bean06 book = new Bean06(title, writer, price, publisher);
//book.setPublisher(publisher); -> 생성자에 추가하지 않고 이렇게 해도 됨.
//생성자에 추가하지 않았으므로 setStock으로 set 해줌
book.setStock(stock);


//2. application영역에 저장
List<Bean06> list = (List<Bean06>) application.getAttribute("books");
if (list == null) {
	list = new ArrayList<>();
	application.setAttribute("books", list);
}
list.add(book);

//3. 25list-book.jsp로 redirect
response.sendRedirect("25list-book-tag.jsp");
%>