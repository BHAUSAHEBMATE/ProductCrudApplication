<!doctype html>
<html >
  <head>
  <%@ page isELIgnored="false" %>  
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 
    <!-- Required meta tags --

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
        <a class="nav-link" href="home">Home </a>
      </li>
      
    
      <li class="nav-item active">
       <a class="nav-link " th:href="addproduct">add product</a>
       </li>
       
      </li>
      
    </ul>
   
  </div>
</nav>


<!-- 
<h1>navbar</h1>
 -->
 
 <div class="container">
 <div class="row">
 <div class="col-md-6 offset-md-3"> 
 <div class="card">
 <div class="card-body">
 <h4 class="text-centre text-primary">productApplication </h4>
 
 <form action="register" method="post">
 
 <div class="form-group">
 <label>Enter product name</label>
 <input type="text" name="name" class="form-control"  >
 </div>
 
 
 <div class="form-group">
 <label>Enter description</label>
 <input type="text" name="description" class="form-control"  >
 </div>
 
 
 <div class="form-group">
 <label>Enter prize</label>
 <input type="number" name="prize" class="form-control"  >
 </div>
 
 
 <button  class="btn-btn-primary btn-block">submit</button>
 
 </form>


 </div>
 
 </div>
 
 
 </div>
 
 
 </div>
 
 </div>
 
  </body>
</html>