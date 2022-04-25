<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomorrow : 회원 관리 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<script>
    $(function() {
      // header jquery
       $("#my_info").hover( function() { 
         // console.log("hover 실행");
         $(".admin_modal").show();
       });      
       $(window).on("click", function() {
         // console.log("window 클릭");
         $(".admin_modal").hide();
       });      
    });
  
  </script>
<style>
    @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400;600&family=Nanum+Pen+Script&display=swap');
    table, td, th{
	    border-top: 1px solid black;            
      font-family: 'IBM Plex Sans KR', sans-serif;      
      /* font-family: 'Nanum Pen Script', cursive; */
	  }
    #container {
     margin: 0 auto;
      width: 1300px;
      height: 700px;
    }
    #nav_menu {
      float: left;
      width: 20%;
      height: 100%;
      /* background-color: #ccc; */
    }

    #nav_menu ul {
      margin-top: 100px;      
    }

    #nav_menu li a {
      display: inline-block;
      color: black;
      font-size: 20px;
      font-weight: bold;
      margin: 10px 5px 5px 30px;            
    }   
    
    #member_content {
      float: right;
      position: relative;      
      width: 80%;
      height: 100%;
    }

    #member_info_content {      
      position: absolute;
      top: 15%;      
      left: 100px;
      font-size: 15px;
      font-weight: bold;
    }

    #member_del {
      position: absolute;
      top: 13%;
      left: 83%;
    }

    #member_list {                  
      position: absolute;  
      top: 20%;
      left: 100px;
      width: 850px;
      
      text-align: center;      
      font-size: 13px;
      line-height: 25px;
    }   
    
    #member_list tr:first-of-type {
      background-color: #ccc;
      height: 50px;
      line-height: 50px;
    }   
  </style>
</head>
<body>
	<jsp:include page="../template_header.jsp"/>

	<div id="container">
    <nav id="nav_menu">
      <ul>
        <li><a href="admain">상품 관리</a></li>
        <li><a href="admain" style="font-size:16px">-상품 목록</a></li>
        <li><a href="adProductEnroll" style="font-size:16px">-상품 등록</a></li>
        <li><a href="adProductManage" style="font-size:16px">-상품 수정/삭제</a></li>
        <li><a href="adMemberOrderList">주문 내역 조회</a></li>
        <li><a href="adMemberList">회원 관리</a></li>
        <li><a href="adArticleManage">게시물 관리</a></li>
      </ul>
    </nav>    
    <section id="member_content">
      <p id="member_info_content">회원 정보 조회</p>                    
      <button type="button" id="member_del" style="width:70px; height:30px;">탈퇴</button>       
      <table id="member_list">
        <tr>
          <td>회원 ID</td>
          <td>회원 이름</td>
          <td>닉네임</td>
          <td>생년월일</td>
          <td>연락처</td>
          <td>가입날짜</td>
        </tr>     
        <tr>
          <td>guset1</td>
          <td>김철수</td>
          <td>손님1</td>
          <td>940912</td>
          <td>010-1234-1234</td>
          <td>2022.12.31</td>
        </tr>
        <tr>
          <td>guest2</td>
          <td>홍진경</td>
          <td>손님2</td>
          <td>910327</td>
          <td>010-1414-1415</td>
          <td>2022.12.31</td>
        </tr>   
      </table>
    </section>
  </div>
</body>
</html>