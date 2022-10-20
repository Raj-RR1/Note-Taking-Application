<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
    <div class="container">
    <%@include file="navbar.jsp" %>
        <br>
    <h1>Edit your note</h1>
   <br>
    
    <%
    int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s= FactoryProvider.getFactory().openSession();
	Transaction tx= s.beginTransaction();
	Note note=(Note)s.get(Note.class,noteId);
    %>
    <form action="UpdateServlet" method="post">
    
    <input value="<%= note.getId()%>" name="noteId" type="hidden"/>
  <div class="form-group">
  
    <label for="title">Note Title</label>
    <input required
    name="title" 
    type="text" 
    class="form-control" 
    id="title"
    aria-describedby="emailHelp" 
     placeholder="Enter email address"
      value="<%=note.getTitle() %>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>

  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea  name="content" id="content" placeholder="Enter Content"  required class="form-control"
    style="height:300px;"
    
    ><%=note.getContent() %></textarea>
  </div>
<div class="container text-center">
<button type="submit" class="btn btn-success">Save Note</button>
</div>
  
</form>
    </div>
</body>
</html>