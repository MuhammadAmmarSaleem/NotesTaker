<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>All notes: Note Taker</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<!-- scriptlet tag  -->
		<div class="row">
			<div class="col-12"></div>
		</div>
		<%
		Session s = FactoryProvider.getFactory().openSession();

		Query query = s.createQuery("from Note");
		List<Note> notes = query.list();
		for (Note note : notes) {
		%>


		<div class="card mt-3">
			<img src="img/notes.png" style="max-width:100px;" class="card-img-top pl-4 pt-4" alt="...">
			<div class="card-body">
				<h5 class="card-title"><%=note.getTitle() %></h5>
				<p class="card-text"><%= note.getContent() %></p>
				<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
				<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
			</div>
		</div>

		<%
		}

		s.close();
		%>

	</div>

</body>
</html>