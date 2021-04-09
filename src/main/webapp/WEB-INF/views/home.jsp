<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="/resources/css/home.css?ver=1">
<script type="text/javascript" src="/resources/js/home.js?ver=1"></script>
</head>
<body>

<div id="wrapper">
      <div id="slider-wrap">
          <ul id="slider">
             <li>
                <div>
                    <h3>Slide #1</h3>
                    <span>Sub-title #1</span>
                </div>                
<img src="/resources/image/tesla.jpg">
             </li>
             
             <li>
                <div>
                    <h3>Slide #2</h3>
                    <span>Sub-title #2</span>
                </div>
<img src="/resources/image/tesla2.jpg">
             </li>
             
             <li>
                <div>
                    <h3>Slide #3</h3>
                    <span>Sub-title #3</span>
                </div>
<img src="https://fakeimg.pl/350x200/FF607F/000?text=33333">
             </li>
             
             <li>
                <div>
                    <h3>Slide #4</h3>
                    <span>Sub-title #4</span>
                </div>
<img src="https://fakeimg.pl/350x200/0A6E0A/000?text=44444">
             </li>
             
             <li>
                <div>
                    <h3>Slide #5</h3>
                    <span>Sub-title #5</span>
                </div>
<img src="https://fakeimg.pl/350x200/0064CD/000?text=55555">
             </li>
             
             
          </ul>
          
           <!--controls-->
          <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
          <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
          <div id="counter"></div>
          
          <div id="pagination-wrap">
            <ul>
            </ul>
          </div>
          <!--controls-->  
                 
      </div>
  
   </div>
</body>
</html>
