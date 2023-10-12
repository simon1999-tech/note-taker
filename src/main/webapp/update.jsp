<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.Factory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.note.Note" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcssjs.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="icon" type="image/x-icon" href="image/favicon.ico">
    <title>Note Taker : Update notes page</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<h1 class="text-uppercase pl-3">Please update your note details</h1>
    	<br>
    	<%
    	int id = Integer.parseInt(request.getParameter("u_id"));
    	Session ses = Factory.getFactory().openSession();
    	Note n = (Note)ses.get(Note.class, id);
    	%>
    	<form action="UpdateServlet" method="post">
    	<input type="text" name="id" value=<%=id %> hidden>
		  <div class="form-group m-3">
		    <label for="title"><b>Note title</b></label>
		    <input type="text" class="form-control" name="title" id="title" aria-describedby="emailHelp" value="<%=n.getName() %>" required>
		  </div>
		  <div class="form-group m-3">
		    <label for="content"><b>Note content</b></label>
		    <textarea class="form-control" onkeyup="area(event)" name="content" placeholder="Enter content here" style="height: 300px;" required><%=n.getContent()%></textarea>
		    <span id="area" style="color: red; "></span>
		  </div>
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-success">Save</button>
		  </div>
		</form>
    </div>
    
</body>
<script type="text/javascript" src="js/check.js"></script>
</html>