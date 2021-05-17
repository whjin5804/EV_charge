<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-bottom: 50px;">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link disabled" href="#">공지사항 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="검색" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
    </form>
  </div>
</nav>



<hr style="border: 1px solid #69F0AE">
<div class="row">
	<div class="col">
		${detailBoard.boardTitle }
	</div>
</div>
<hr>

<div class="row">
	<div class="col"">
		작성자 ${detailBoard.writer } | 등록일 ${detailBoard.boardDate } | 조회 ${detailBoard.readCnt } 
	</div>
</div>
<hr style="border: 1px solid black;">
<div class="row">
	<div class="col"  style="padding:80px 0;">
		${detailBoard.boardContent }	
	</div>
</div>
<hr>
<div class="row">
	<div class="col-2">
		<button type="button" class="btn btn-primary">이전</button>
	</div>
	<div class="col-8" style="text-align: center;">
		<button type="button" class="btn btn-warning">목록</button>
	</div>
	<div class="col-2">
		<button type="button" class="btn btn-primary">이후</button>
	</div>
</div>


</body>
</html>