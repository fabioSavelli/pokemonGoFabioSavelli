<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="../../css/myStyle.css"/>
	<link rel="stylesheet" type="text/css" href="../../css/datepicker3.css"/>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/popper.min.js"></script>
	<script type="text/javascript" src="/webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="../../js/bootstrap-datepicker.js"></script>
	<script src="../../js/bootstrap-datepicker.it.js"></script>
	
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
      	<div class="btn-group">
		  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    Right-aligned menu
		  </button>
		  <div class="dropdown-menu dropdown-menu-right">
		    <button class="dropdown-item" type="button">Action</button>
		    <button class="dropdown-item" type="button">Another action</button>
		    <button class="dropdown-item" type="button">Something else here</button>
		  </div>
		</div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
    		<div class="btn-group">
    
			  <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Right-aligned menu
			  </button>
			  <div class="dropdown-menu dropdown-menu-right">
			    <button class="dropdown-item" type="button">Action</button>
			    <button class="dropdown-item" type="button">Another action</button>
			    <button class="dropdown-item" type="button">Something else here</button>
			  </div>
			</div>
		</li>
		</ul>
		
  </div>
</nav>

</body>