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
      <a class="navbar-brand" href="
      /">AppTest</a>
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

<h1>Classes (5)</h1>


<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>
      <tr>
        <th> Subject</th>
        <th> professor </th>
        <th>Comment</th>
        <th class="d-print-none">
          <a class="btn btn-sm btn-success" href="./create.jsp">Add</a>
        </th>
      </tr>
    </thead>
    <tbody>
      
        <tr>
          <td>Discrete Mathematics</td>
          <td> 홍신 교수님 </td>
          <td> 화이팅! </td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="./edit.jsp">Edit</a>
            <a class="btn btn-sm btn-danger" href="./delete.jsp">Delete</a>
            <a class="btn btn-sm" href="./more.jsp">More</a>
          </td>
        </tr>
      
        <tr>
          <td>컴퓨터 구조 </td>
          <td>고윤민 교수님 </td>
          <td> 화이팅!! </td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="./edit.jsp">Edit</a>
            <a class="btn btn-sm btn-danger" href="./delete.jsp">Delete</a>
            <a class="btn btn-sm" href="./more.jsp">More</a>
          </td>
        </tr>
      
        <tr>
          <td> 논리설계  </td>
          <td> 이강 교수님 </td>
          <td> 화이팅!!!</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="./edit.jsp">Edit</a>
            <a class="btn btn-sm btn-danger" href="./delete.jsp">Delete</a>
            <a class="btn btn-sm" href="./more.jsp">More</a>
          </td>
        </tr>
      
        <tr>
          <td>실전 프로젝트1 </td>
          <td> 장소연 교수님 </td>
          <td>화이팅!!!! </td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="./edit.jsp">Edit</a>
            <a class="btn btn-sm btn-danger" href="./delete.jsp">Delete</a>
            <a class="btn btn-sm" href="./more.jsp">More</a>
          </td>
        </tr>
      
        <tr>
          <td>한동인성교육</td>
          <td> Team teaching </td>
          <td> honey</td>
          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="./edit.jsp">Edit</a>
            <a class="btn btn-sm btn-danger" href="./delete.jsp">Delete</a>
            <a class="btn btn-sm" href="./more.jsp">More</a>
          </td>
        </tr>
      
    </tbody>
  </table>
</div>



    <footer>
      <p>&copy; 2021 - Winter Camp</p>
    </footer>

  </div>

</body>

</html>
