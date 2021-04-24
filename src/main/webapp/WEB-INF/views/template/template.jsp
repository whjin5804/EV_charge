<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<script src="https://code.jquery.com/jquery-latest.min.js" ></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> 
<link rel="stylesheet" href="/resources/css/common/common.css?ver=1" style="text/css">

<style type="text/css">
#menu{

}

#body{
	margin-top: 55px;
	margin-bottom: 200px;
	margin-left: 200px;
	margin-right: 200px;
}

#foot{
	background-color: #69F0AE;
	height: 200px;	
}
</style>
</head>
<body>
<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropdown link
  </a>

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    <a class="dropdown-item" href="#">Action</a>
    <a class="dropdown-item" href="#">Another action</a>
    <a class="dropdown-item" href="#">Something else here</a>
  </div>
</div>
		<div id="menu">
			<tiles:insertAttribute name="menu"/>
		</div>
		
	<hr>
	
		<div id="body" class="EV_CHARGE">
			<tiles:insertAttribute name="body"/>
		</div>
		
		<div id="foot">
			<tiles:insertAttribute name="foot"/>
		</div>
</body>
<script type="text/javascript" src="/resources/js/common/jquery.validate.js?ver=31"></script> 
</html>