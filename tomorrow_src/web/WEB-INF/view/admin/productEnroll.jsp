<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomorrow : 관리자 상품 등록 페이지</title>
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
    #container {                  
      margin: 70px auto;
      width: 1000px;
      height: 100%;      
    }
    #content_enroll {
      /* border: 1px solid black; */
      margin: 0 auto;
      display: flex;
      width: 950px;
    }
    #product_img {
      flex-flow: row wrap;
      width: 450px;
      height: 450px;
      background: #ccc;
    }

    #product_enroll_grp{
      /* border: 1px solid black; */
      flex-flow: row wrap;
      margin-left: 150px;
      width : 450px;
      height: 500px;
    }    

    .enroll_grp:not(:first-of-type) {
      margin-top: 30px;            
    }

    .enroll_grp > label {
      font-weight: bold;
    }
    input[type="text"], select {
      margin-top: 10px;
    }
    
    #category, #prod_brand, #prod_name, #prod_price, #prod_option {      
      width: 300px;
      height: 30px;
    }
    
    #file_btn {
      margin: 5px 0 0 150px;
      /* width: 150px; */
      /* height: 40px; */
      /* border: 1px solid #ccc; */
      border-radius: 5px;
    }

    #product_info {
      margin-top: 100px;
      font-weight: bold;
      font-size: 18px;      
    }

    #product_content {
      margin-top: 10px;
      width: 1000px;
      height: 100%;
      border: 1px solid #ccc;
      border-radius: 20px;
    }
    
    .prod_box{
      width: 800px;
      height: 600px;
      border-radius: 10px;
      background-color: #ccc;
      margin: 10px auto;
    }

    #enroll_content {
      position: relative;
      width: 100%;
      height: 70px;
    }

    #enroll_btn {
      position: absolute;
      margin-top: 20px;
      left: 37%;
      width: 300px;
      height: 40px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }    
  </style>
</head>
<body>
	<jsp:include page="../template_header.jsp"/>	
	
	<div id="container">
    <form action="#" >
      <section id="content_enroll">
        <div id="product_img">        
        
        </div>
        <div id="product_enroll_grp">
          <div class="enroll_grp">
            <label for="category" style="font-size: 15px">카테고리 종류를 입력해주세요.</label><br>
            <select name="category" id="category">
              <option value="category" selected>카테고리 종류</option>
              <option value="furniture">가구</option>
              <option value="fabric">패브릭</option>
              <option value="light">조명</option>
            </select>
          </div>
          <div class="enroll_grp">
            <label for="prod_brand" style="font-size: 15px;">브랜드명을 입력해주세요.</label><br>
            <input type="text" name="prod_brand" id="prod_brand" placeholder="브랜드명을 입력해주세요." required>
          </div>
          <div class="enroll_grp">
            <label for="prod_name" style="font-size: 15px">상품명을 입력해주세요.</label><br>
            <input type="text" name="prod_name" id="prod_name" placeholder="상품명을 입력해주세요." required>
          </div>
          <div class="enroll_grp">
            <label for="prod_price" style="font-size: 15px">가격을 입력해주세요.</label><br>
            <input type="text" name="prod_price" id="prod_price" placeholder="금액(원)을 입력해주세요." required>
          </div>
          <div class="enroll_grp">
            <label for="prod_option" style="font-size: 15px">옵션을 입력해주세요.</label><br>
            <input type="text" name="prod_option" id="prod_option" placeholder="옵션을 자세히 입력해주세요." required>            
          </div>
          
        </div>
      </section>
      <input type="file" name="file_tn" id="file_btn"">
      <!-- <button type="button" id="file_btn">파일 첨부</button>       -->
      
      <p id="product_info">상품 정보</p>
      <div id="product_content">
        <div class="prod_box">

        </div>
        <div class="prod_box">

        </div>
        <div class="prod_box">

        </div>
      </div>
      </section>
      <div id="enroll_content">
        <button type="submit" id="enroll_btn">상품 등록</button>
      </div>      
    </form>
  </div>
</body>
</html>