<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    <br>
    <h1>Please Fill Details</h1>
    <br>
    
    <!-- This is Add Form  -->
    
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
  
    <label for="title">Note Title</label>
    <input required
    name="title" 
    type="text" 
    class="form-control" 
    id="title"
    aria-describedby="emailHelp" 
     placeholder="Enter email address">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea  name="content" id="content" placeholder="Enter Content"  required class="form-control"
    style="height:300px;"
    ></textarea>
  </div>
<div class="container text-center">
<button type="submit" class="btn btn-primary">Submit</button>
</div>
  
</form>
    </div>
    
    
</body>
</html>