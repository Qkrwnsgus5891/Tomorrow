<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomorrow : 관리자 주문 내역</title>
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
    
    #order_content {
      float: right;
      position: relative;      
      width: 80%;
      height: 100%;
    }

    #order_info_content {      
      position: absolute;
      top: 15%;      
      left: 10px;
      font-size: 16px;
      font-weight: bold;
    }

    #total_order {
      position: absolute;
      top: 13%;
      left: 90%;
    }

    #order_list {                  
      position: absolute;  
      top: 20%;
      left: 10px;
      width: 900px;
          
      font-size: 13px;
      height: 25px;
      line-height: 25px;
    }   

    #order_list tr th {      
      font-size: 14px;      
    }   

    #order_list td:not(:first-of-type) {
      text-align: center;    
      line-height: 2rem;      
    }

    .order_box {
      /* border: 1px solid #ccc; */
      display: flex;
      margin: 15px;      
      height: 90px;
    }

    .sumnail {
      flex-flow: row nowrap;
      margin: 6px;
      width: 65px; height: 65px;
      background-color: #ccc;
    }

    .order_info{
      /* border: 1px solid black; */
      flex-flow: row nowrap;
      width: 300px;      
    }

    #brand{
      font-size: 12px;
    }   
    #prod_name{
      font-weight: bold;
      font-size: 14px;
    }    
    #prod_opt{
      color: #ccc;
      font-size: 11px;
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
    <section id="order_content">
      <p id="order_info_content">주문 내역 조회</p>                    
      <!-- <button type="button" id="total_order" style="width:70px; height:30px;">전체</button>        -->
      <table id="order_list">
        <thead>
        <tr>
          <th width="300">상품 정보</th>          
          <th width="150">주문 번호(수량)</th>
          <th width="150">주문일자</th>
          <th width="150">상품 금액</th>
          <th width="150">주문한 고객</th>
         </tr>  
        </thead>
        <tbody>
        <tr>
          <td>
            <div class="order_box">
              <!-- 사진 배치 예시, 추후 img태그 사용 -->
              <div class="sumnail">img</div>                          
              <!-- <img src="resources/images/main_bg.jpg" alt="썸네일" class="sumnail"> -->
              <ul class="order_info">
                <li id="brand">브랜드명</li>
                <li id="prod_name">상품명</li>
                <li id="prod_opt">옵션명</li>
              </ul>      
            </div>
          </td>
          <td>                                    
              0000000<br>
              N개            
          </td>
          <td>2022.12.31</td>
          <td>가격(원)</td>
          <td>홍길동</td>
        </tr>
        <tr>
          <td>
            <div class="order_box">
              <!-- 사진 배치 예시, 추후 img태그 사용 -->
              <div class="sumnail">img</div>                          
              <!-- <img src="resources/images/main_bg.jpg" alt="썸네일" class="sumnail"> -->
              <ul class="order_info">
                <li id="brand">브랜드명</li>
                <li id="prod_name">상품명</li>
                <li id="prod_opt">옵션명</li>
              </ul>      
            </div>
          </td>
          <td>                                    
              0000000<br>
              N개            
          </td>
          <td>2022.12.31</td>
          <td>가격(원)</td>
          <td>홍길동</td>
        </tr>  
      </tbody>         
      </table>
    </section>
  </div>
</body>
</html>