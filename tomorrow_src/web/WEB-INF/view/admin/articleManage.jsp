<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomorrow : 관리자 게시글 관리</title>
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
    table,  td, th{
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
    
    #story_content {
      float: right;
      position: relative;      
      width: 80%;
      height: 100%;
    }

    #story_info_content {      
      position: absolute;
      top: 15%;      
      left: 70px;
      font-size: 15px;
      font-weight: bold;
    }

    #story_manage_grp {      
      position: absolute;      
      width: 150px;
      height: 40px; 
      top: 13%;
      left: 85%;
    }

    #story_ins, #story_del {      
      font-weight: bold;
      font-size: 12px;      
    }   

    #story_list {                  
      position: absolute;  
      top: 20%;
      left: 70px;
      width: 970px;
      text-align: center;      
      font-size: 13px;
      height: 25px;
      line-height: 25px;
    }   
    
    #story_list tr:first-of-type {
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
    <section id="story_content">
      <p id="story_info_content">오늘의 스토리</p>                   
      <div id="story_manage_grp">
        <button type="button" id="story_ins" style="width:70px; height:30px;">작성</button>
        <button type="button" id="story_del" style="width:70px; height:30px;">삭제</button>       
      </div>       
      <table id="story_list">
        <tr>
          <td width="65">글번호</td>
          <td width="500">제목</td>
          <td width="120">작성자</td>
          <td width="120">작성일</td>
          <td width="50">조회수</td>          
        </tr>     
        <tr>
          <td>1</td>
          <td>2</td>
          <td>3</td>
          <td>4</td>
          <td>5</td>
        </tr>
        <tr>
          <td>6</td>
          <td>2022년 아시안게임 결승 예상</td>
          <td>8</td>
          <td>9</td>
          <td>10</td>
        </tr>
      </table>
    </section>
  </div>
</body>
</html>