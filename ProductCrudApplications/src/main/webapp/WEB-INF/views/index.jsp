<!doctype html>
<html >
  <head>
<%@ page isELIgnored="false" %>  
  <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %> 
  
    <!-- Required meta tags -->
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Hello, world!</title>
    
  </head>
  <body>
  
 <!--  
  <h1>navbar</h1>
   -->
  
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">EmpSystem</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    
    
      <li class="nav-item active">
        <a class="nav-link" href="home" >Home </a>
      </li>
      
     
      
      <li class="nav-item active">
       <a class="nav-link" href="addproduct">add products</a>
       </li>
       
    </ul>
   
  </div>
</nav>

 
 <div class="container p-5">
 
 <table class="table table-striped " >
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">id</th>
      <th scope="col">Name</th>
      <th scope="col">description</th>
      <th scope="col">prize</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
   <tbody>
   

   <c:forEach items="${product}" var="p" >
        <tr>
         <th scope="row" >${p.id}</th>
         <td >${p.name}</td>
         <td >${p.description}</td>
         <td >${p.prize}</td> 
          <td>
       <a class="btn btn-sm btn-primary" href="edit/${p.id}">Edit</a>
        <a class="btn btn-sm btn-danger" href="delete/${p.id}">Delete</a>
          </td>
         </tr>
         
           </c:forEach >
  </tbody>
</table>
 
 </div>
 
    <h1></h1>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>