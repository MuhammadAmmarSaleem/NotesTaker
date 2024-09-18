<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>

	<div class="container">
		<!-- include tag to include navbar.jsp -->
		<%@include file="navbar.jsp"%>

		<h1>Please fill your form detail</h1><br>
		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input
					name="title" type="text" class="form-control" id="title" placeholder="Enter here" required>
			</div>
			<div class="form-group">
				<label for="note_content">Note Content</label> 
				
				<textarea name="note_content" required id="note_content" placeholder="Enter content here" class="form-control" style="height: 300px;"></textarea>
			</div>
			
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			
		</form>
	</div>

</body>
</html>