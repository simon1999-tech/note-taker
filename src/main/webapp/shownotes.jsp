<%@page import="com.helper.Factory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List" %>
<%@page import="com.note.Note" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<%@include file="allcssjs.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="icon" type="image/x-icon" href="image/favicon.ico">
    <title>Note Taker : View notes page</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<h1 class="text-uppercase pl-3">All notes </h1>
    	<div class="row">
    	<div class="col-12">
    	<%
    	Session ses = Factory.getFactory().openSession();
    	List<Note> note = ses.createQuery("from Note").list();
    	for(Note n:note){
    	%>
    	<div class="card m-3" style="border: 1px solid black;">
		  <img class="card-img-top m-4 mx-auto" style="width: 100px;" src="image/form.png" alt="Card image cap">
		  <p style="position: absolute; left: 1300px; color: blue;"><b><%=n.getAdddate() %></b></p>
		  <div class="card-body px-5">
		    <h5 class="card-title"><%=n.getName() %></h5>
		    <p class="card-text"><%=n.getContent() %></p>
		    <div class="container text-center mt-2">
		    <a href="DeleteServlet?id=<%=n.getId()%>" class="btn btn-danger">Delete</a>
		    <a href="update.jsp?u_id=<%=n.getId()%>" class="btn btn-primary">Update</a>
		    </div>
		  </div>
		</div>
    	<%
    	}
    	ses.close();
    	%>
    	</div>
    	</div>
    </div>
</body>
</html>