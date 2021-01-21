<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

  <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">AppTest</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="./about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./data.jsp">Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./books.jsp">Books</a>
        </li>
      </ul>
    </nav>

<h1>편집</h1>

<form action="/edit/18" method="post">
    <div class="form_horizontal">
      <div class="form-group row">
    <label class="col-form-label col-sm-2" for="Title">Title</label>
    <div class="col-sm-8">
      <input autofocus class="form-control" name="Title" value="bear" >
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="Author">Author</label>
    <div class="col-sm-7">
      <input class="form-control" name="Author" value="test" >
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="Comments">Comments</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="Comments" rows="7" cols="20">이미지올리기</textarea>
    </div>
</div>
      <div class="form-group row">
        <label class="col-form-label col-sm-2"></label>
        <div class="col-sm-10">
          <input type="submit" name="" value="Update" class="btn btn-default btn-warning" >
          <a class="btn btn-outline-dark cancel"href="./book.jsp">Cancel</a>
        </div>
      </div>
    </div>
</form>

    <footer>
      <p>&copy; 2021 - Winter Camp</p>
    </footer>

  </div>

</body>

</html>
