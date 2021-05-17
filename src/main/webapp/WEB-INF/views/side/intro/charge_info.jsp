<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/common/common.css?ver=1">
<style type="text/css">
.table{
	text-align: center;
}

li{
	text-align: left;
}
</style>
</head>
<body>
<div class="jumbotron">
  <h2 class="display-4">전기차 충전정보</h2>
</div>

<div class="list-group">
	<h2><b style="color: #28a745">ㅣ</b>충전속도에 따른 분류</h2>
	<div class="row">
		<div class="col">
			<h5><b style="color: #28a745">&nbsp; ></b>&nbsp; 급속 충전기</h5>
			<ul>
				<li>완전방전상태에서 80%충전까지 30분이 소요됨</li>
				<li>주로 고속도로 휴게소, 공공기관 등 외부장소에 설치 됨</li>
				<li>충전기는 고용량의 전력을 공급하여야 하므로 50kW급이 주로 설치됨</li>
				<li>사용요금은 100km 당 2,700원 정도임</li>
			</ul>
		</div>
		<div class="col">
			<h5><b style="color: #28a745">&nbsp; ></b>&nbsp; 완속 충전기(개인용 완속 충전기 기준)</h5>
			<ul>
				<li>완전방전에서 완전충전까지 4~5시간이 소요됨</li>
				<li>주로 주택이나 아파트에 설치됨</li>
				<li>배터리 용량은 약 6~7kW 전력용량을 가진 충전기가 주로 설치됨</li>
				<li>전기요금은 100km당, 1,100원 정도임</li>
			</ul>
		</div>
	</div>
		<table class="table">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">구분</th>
	      <th scope="col">급속 충전기</th>
	      <th scope="col">완속 충전기</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">공급용량</th>
	      <td>50kW</td>
	      <td>3~7kW</td>
	    </tr>
	    <tr>
			<th scope="row">충전시간</th>
			<td>15~30분</td>
			<td>4~5시간</td>
		</tr>
	  </tbody>
	</table>
</div>




<!-- 설치유형에 따른 분류 -->
<div class="list-group">
	<h2><b style="color: #28a745">ㅣ</b>설치유형에 따른 분류</h2>
	<div class="row">
		<div class="col">
			<h5><b style="color: #28a745">&nbsp; ></b>&nbsp; 완속 충전기(개인용 완속 충전기 기준)</h5>
			<ul>
				<li>완전방전에서 완전충전까지 4~5시간이 소요됨</li>
				<li>주로 주택이나 아파트에 설치됨</li>
				<li>배터리 용량은 약 6~7kW 전력용량을 가진 충전기가 주로 설치됨</li>
				<li>전기요금은 100km당, 1,100원 정도임</li>
			</ul>
		</div>
	</div>
	<table class="table">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">구분</th>
	      <th scope="col">벽부형 충전기</th>
	      <th scope="col">스탠드형 충전기</th>
	      <th scope="col">이동형 충전기</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">용량</th>
	      <td>3~7kW</td>
	      <td>3~7kW</td>
	      <td>3kW(Max)</td>
	    </tr>
	    <tr>
	      <th scope="row">충전시간</th>
	      <td>4~6시간</td>
	      <td>4~6시간</td>
	      <td>6~9시간</td>
	    </tr>
	    <tr>
	      <th scope="row">특징</th>
	      <td>
	      	<ul>
	      		<li>분전함, 기초패드 설치</li>
	      		<li>U형볼라드, 차량스토퍼, 차선도색(설치 또는 미설치)</li>
	      		<li>충전기 위치가 외부에 설치되어 눈, 비에 노출될 경우만 케노피 설치</li>
	      	</ul>
	      </td>
	      <td colspan="2">
	      	<ul>
		      	<li>220V 콘센트에 간단한 식별장치(RFID태그) 부착하여 충전</li>
		      	<li>태그가 부착된 다른 건물에서도 충전 가능</li>
	      	</ul>
  		  </td>
	    </tr>
	    <tr>
	      <th scope="row">사진</th>
			<td><img alt="" src="/resources/image/chargImg1.jpg" width="100px;"></td>
			<td><img alt="" src="/resources/image/chargImg2.jpg" width="100px;"></td>
			<td><img alt="" src="/resources/image/chargImg3.jpg" width="100px;"></td>
	    </tr>
	  </tbody>
	</table>
</div>
</body>
</html>