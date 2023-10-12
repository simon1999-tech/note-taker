<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="allcssjs.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="icon" type="image/x-icon" href="image/favicon.ico">
    <title>Note Taker : Add notes page</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<h1 class="text-uppercase pl-3">Please fill your note details</h1>
    	<br>
    	<form action="SaveNoteServlet" method="post">
		  <div class="form-group m-3">
		    <label for="title"><b>Note title</b></label>
		    <input type="text" class="form-control" name="title" id="title" aria-describedby="emailHelp" placeholder="Enter title" required>
		  </div>
		  <div class="form-group m-3">
		    <label for="content"><b>Note content</b></label>
		    <textarea class="form-control" onkeyup="area(event)" name="content" placeholder="Enter content here" style="height: 300px;" required></textarea>
		    <span id="area" style="color: red; "></span>
		  </div>
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary">Add</button>
		  </div>
		</form>
    </div>
    
</body>
<script type="text/javascript" src="js/check.js"></script>
</html>