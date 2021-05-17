<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EV_charge</title>
<script type="text/javascript" src="/resources/js/common/home.js?ver=12"></script>
<link href="/resources/css/common/home.css?ver=12">
<style>
.ev_charge {
	text-align: center;
}

img {
	margin: 0 auto;
}

.slide {
	height: 80vh;
}

.slide li {
	list-style: none;
}

#popup_layer {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 10000;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}
/*팝업 박스*/
.popup_box {
	position: relative;
	top: 50%;
	left: 50%;
	width: 550px;
	transform: translate(-50%, -50%);
	z-index: 1002;
	box-sizing: border-box;
	background: #fff;
	box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
	-webkit-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
	-moz-box-shadow: 2px 5px 10px 0px rgba(0, 0, 0, 0.35);
}
/*컨텐츠 영역*/
.popup_box .popup_cont {
	padding: 50px;
	line-height: 1.4rem;
	font-size: 14px;
	word-break: break-word;
}

.popup_box .popup_cont h2 {
	padding: 15px 0;
	color: #333;
	margin: 0;
}

.popup_box .popup_cont p {
	border-top: 1px solid #666;
	padding-top: 30px;
}
/*버튼영역*/
.popup_box .popup_btn {
	display: table;
	table-layout: fixed;
	width: 100%;
	height: 70px;
	background: #5d5d5d;
	word-break: break-word;
}

.popup_box .popup_btn a {
	position: relative;
	display: table-cell;
	height: 70px;
	color: #fff;
	font-size: 17px;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	background: #102c5c;
}

.popup_box .popup_btn a:before {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #fff;
	-moz-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.popup_box .popup_btn a:after {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: #fff;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

.popup_box .popup_btn a.close_day {
	background: #5d5d5d;
}

.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after
	{
	display: none;
}
/*오버레이 뒷배경*/
.popup_overlay {
	position: fixed;
	top: 0px;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1001;;
	background: rgba(0, 0, 0, 0.5);
}
</style>
<script type="text/javascript">
	function setCookie(name, value, expiredays) {
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = name + "=" + escape(value) + "; path=/; expires="
				+ todayDate.toGMTString() + ";"
	}
	function closeWin() {
		if (document.notice_form.chkbox.checked) {
			setCookie("maindiv", "done", 1);
		}
		document.all['divpop'].style.visibility = "hidden";
	}
</script>
</head>
<body>
	<div class="contianer ev_charge">

		<!-- 슬라이드 -->
		<div class="slide">
			<ul>
				<li><img alt="" src="/resources/image/tesla.jpg" width="800px"
					height="430px"></li>
				<li><img alt="" src="/resources/image/tesla3.jpg" width="800px"
					height="430px"></li>
				<li><img alt="" src="/resources/image/tesla4.jpg" width="800px"
					height="430px"></li>
				<li><img alt="" src="/resources/image/tesla5.jpg" width="800px"
					height="430px"></li>
			</ul>
		</div>





		<!-- POPUP start -->
		<div id="divpop"
			style="position: absolute; left: 100px; top: 150px; z-index: 200; visibility: hidden;">
			<table width=490px height=480px cellpadding=0 cellspacing=0>
				<tr>
					<td style="border: 1px #666666 solid" height=480px align=center bgcolor=white>
						<a href="https://github.com/whjin5804/EV_charge" target="_blank"> 
						<img src="/resources/image/homepopUp.png" width=490px height=480px alt="이미지 로딩 중.."></a></td>
				</tr>
				<tr>
					<td height=10 bgcolor="#000000"></td>
				</tr>
				<tr>
					<form name="notice_form">
						<td height=25 align=right bgcolor="#000000" >
							<input type="checkbox" name="chkbox" value="checkbox">
							<font color=#eeeeee>오늘 하루 이 창을 열지 않음 </font> 
							<a href="javascript:closeWin();">
								<font color=#eeeeee>
								<B>[닫기]</B>
								</font>
							</a>
						</td>
					</form>
				</tr>
			</table>

		</div>
		<script language="Javascript">
			cookiedata = document.cookie;
			if (cookiedata.indexOf("maindiv=done") < 0) {
				document.all['divpop'].style.visibility = "visible";
			} else {
				document.all['divpop'].style.visibility = "hidden";
			}
		</script>
		<!-- POPUP end -->

	</div>
</body>
</html>