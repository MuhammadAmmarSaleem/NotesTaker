<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Insert title here</title>
</head>
<body>

 <div class="container">
    	<!-- include tag to include navbar.jsp -->
    	<%@include file="navbar.jsp" %>
    	
    	<h1>Edit your Note</h1><br>
    	
    	<%
    		int noteId = Integer.parseInt(request.getParameter("note_id").trim());	
    	
    	Session openSession = FactoryProvider.getFactory().openSession();
		Note note = openSession.get(Note.class, noteId);
		
		openSession.close();
    	%>
    	
    	<form action="UpdateServlet" method="post">
    		<input type="hidden" name="note_id" value="<%= note.getId() %>" />
			<div class="form-group">
				<label for="title">Note Title</label> <input
					name="title" type="text" class="form-control" id="title" placeholder="Enter here" required value="<%= note.getTitle() %>">
			</div>
			<div class="form-group">
				<label for="note_content">Note Content</label> 
				
				<textarea name="note_content" required id="note_content" placeholder="Enter content here" class="form-control" style="height: 300px;"><%= note.getContent() %>
				</textarea>
			</div>
			
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			
		</form>
    	
    </div>


</body>
</html>