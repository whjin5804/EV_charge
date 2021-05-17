<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a:hover {
	cursor: pointer;
	font-size: 1.3rem;
}
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
        <a class="nav-link disabled" href="#">자유게시판 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" value="${paging.searchKeyword }" name="searchKeyword" type="search" placeholder="검색" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
    </form>
  </div>
</nav>


<hr>
<c:forEach items="${boardList}" var="board">
	<div class="list-group">
		<h5>
			<a href="/board/detailBoard?boardCode=${board.boardCode }" style="font-weight: bold;">
				${board.boardTitle }
			</a>
				|	<font style="font-size: 15px;">${board.writer }</font>
		</h5>
		<div>
			${board.boardDate} / ${board.readCnt}	
		</div>
		<hr>
	</div>
</c:forEach>

	
	<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/board/publicBoard?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/board/publicBoard?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/board/publicBoard?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
<c:if test="${not empty sessionScope.loginInfo }">
<div class="row">
	<div class="offset-10 col-2">
		<button class="btn btn-primary" onclick="location.href='/board/writeFreeBoardForm';">
			글쓰기
		</button>
	</div>
</div>
</c:if>
</body>
</html>