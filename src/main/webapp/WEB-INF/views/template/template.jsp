<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title"/></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> 
<script src="https://code.jquery.com/jquery-latest.min.js" ></script> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/common/jquery.validate.js?ver=1"></script> 
<link rel="stylesheet" href="/resources/css/common/common.css?ver=1" style="text/css">
<style type="text/css">
#menu{

}

#body{
	width: 100%;
	margin-top: 55px;
	margin-bottom: 200px;
	margin-left: auto;
	margin-right: auto;
}

#foot{
	
}
</style>
</head>
<body>
		<div id="menu">
			<tiles:insertAttribute name="menu"/>
		</div>
		
	<hr>
	
		<div id="body">
			<tiles:insertAttribute name="body"/>
		</div>
		
		<div id="foot">
			<tiles:insertAttribute name="foot"/>
		</div>
</body>
</html>