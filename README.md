# EV_charge

전기자동차충전소_개인프로젝트

+ 개요
개발을 시작하게 된 계기
제주도에서 전기차 충전소를 찾다가, 스스로 개발해보고자 느낌.  HTML, CSS, JS 화면을 구성하였음
충전소와 예약기능, 게시판 등의 기능을 만드려고 찾다보니 서버와 데이터베이스의 필요성을 느낌
12월부터 자바와 스프링을 배우고 4월부터 개발 

-----------------
+ 개발 환경
  + 목표시스템 : 전기자동차 충전소 현황 및 사용시간 공유
  + 개발언어 : JAVA SPRING
    JS, Jquery, AJAX, BootStrap
  + 운영체제 : window, mac
  + 하드웨어 : AMD4800U
  + 데이터베이스 : ORACLE, Mybatis
  + 형상관리도구 : GIT

-----------------
+ 모듈
  1. 전기차 소개
      + Grid이용 화면구성(부트스트랩)
  3. 정보마당 - 충전소 예약 / 현황
      + 카카오 맵 API 사용
      + 전기차 충전소 예약기능
  5. 참여마당 - 게시판
      + 검색기능
      + 페이징처리
  7. 관리자
      + CREATE
          + 공지사항 등록
          + 전기차 충전소 등록
      + READ
          + 전기차 충전소 검색
      + UPDATE
          + 전기 충전소 위치, 이름 등 수정
          + 회원 정보 수정
          + 공지사항 내용 수정
      + DELETE
          + 전기차 
          + 공지사항 / 자유게시판 삭제
          + 회원정보 삭제
  9. 기타/홈화면
      + tiles사용(스프링 라이브러리)
      + 슬라이드(자바스크립트)
      + 토스트박스(부트스트랩)
      + 회원가입/로그인
          + Spring Security(단방향, salt처리)
          + validation처리(자바스크립트 라이브러리)
          + 모달사용(부트스트랩)
      
