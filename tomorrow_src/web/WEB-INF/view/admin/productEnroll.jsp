<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tomorrow : 관리자 상품 등록 페이지</title>
<script src="//cdn.ckeditor.com/4.18.0/full/ckeditor.js"></script>
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
      width: 370px;
      height: 450px;
      border: 1px dotted #ccc;
    }

    #product_enroll_grp{
      /* border: 1px solid black; */
      flex-flow: row wrap;
      margin-left: 150px;
      width : 450px;
      height: 500px;
    }    

    .enroll_content:not(:first-of-type) {
      margin-top: 25px;            
    }

    .enroll_content > label {
      font-weight: bold;
    }
    input[type="text"], select {
      margin-top: 10px;
    }
    
    #category, #prod_brand, #prod_name, #prod_price, 
    #prod_option, #opt_no, #opt_val, #opt_price, #pdNo {      
      width: 300px;
      height: 30px;
      border-radius: 5px;
	  border : 2px solid black;
    }
    
    #file_btn {
      /* margin: 5px 0 0 150px; */
      margin-left: 150px;
      /* width: 150px; */
      /* height: 40px; */
      /* border: 1px solid #ccc; */
      border-radius: 5px;
    }

    #product_info {
      margin-top: 100px;
      margin-bottom: 30px;
      font-weight: bold;
      font-size: 18px;      
    }

    #product_content {
      margin-top: 10px;
      width: 1000px;
      height: 950px;
      /* height: 1300px; */
      border: 1px solid #ccc;
      border-radius: 20px;
    }
    
    .prod_box{
      display: block;
      width: 650px;
      height: 400px;      
      border: 1px dotted #ccc;
      margin: 20px auto;
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
      width: 200px;
      height: 40px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }    
    
    #productImage {
      margin: 0 5px 15px 5px;
    }
    
    #img_btn {
      position: absolute;
      margin-top: 20px;
      left: 37%;
      width: 200px;
      height: 40px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    
  </style>
</head>
<body>
	<jsp:include page="../template_header.jsp"/>	
	
	<div id="container">
    <form action="adProductEnroll.aj" method="post" enctype="multipart/form-data" id="efrm">
      <div id="content_enroll">      
       <!-- <img src="" alt="이미지" id="product_img">   -->      
         <div id="product_img">
          <div>
            
          </div>
        </div>
        <div id="product_enroll_grp">        
          <div class="enroll_content">
          	<!-- 카테고리 종류 -->
            <label for="category" style="font-size: 15px">카테고리 종류를 입력해주세요.</label><br>
            <select name="category" id="category" required>
              <option value="0" selected>카테고리 종류</option>
              <option value="1">가구</option>
              <option value="2">패브릭</option>
              <option value="3">조명</option>
            </select>
            <input type="hidden" name="ctgry" id="ctgry">
          </div>
          <div class="enroll_content">
          	<!-- 상품 브랜드명 -->
            <label for="prod_brand" style="font-size: 15px;">브랜드명을 입력해주세요.</label><br>
            <input type="text" name="prod_brand" id="prod_brand" required placeholder="브랜드명을 입력해주세요." >
          </div>
          <div class="enroll_content">
          	<!-- 상품 이름 -->
            <label for="prod_name" style="font-size: 15px">상품명을 입력해주세요.</label><br>
            <input type="text" name="prod_name" id="prod_name" required placeholder="상품명을 입력해주세요." >
          </div>
          <div class="enroll_content">
          	<!-- 상품 가격 -->
            <label for="prod_price" style="font-size: 15px">가격을 입력해주세요.</label><br>
            <input type="text" name="prod_price" id="prod_price" required placeholder="금액(원)을 입력해주세요." >
          </div>
          <div class="enroll_content">
          	<!-- 옵션 번호 -->
            <label for="opt_no" style="font-size: 15px">옵션을 입력해주세요.</label><br>
			<select name="opt_no" id="opt_no" required>
              <option value="0" selected>옵션을 선택해주세요.</option>
              <option value="1">색상</option>
              <option value="2">사이즈</option>
              <option value="3">추가상품</option>
            </select><br>
            <!-- 옵션값 -->
            <input type="text" name="opt_val" id="opt_val" placeholder="옵션값을 입력해주세요.">                                    
          </div>
          <div class="enroll_content">
         	<!-- 옵션 추가가격 -->
            <label for="opt_price" style="font-size: 15px">옵션 추가가격을 입력해주세요.</label><br>
            <input type="text" name="opt_price" id="opt_price" value=0>
          </div>          
        </div>        
      </div>
      <div class="enroll_content">
      	파일: <input type="file" name="upload" required>
      </div>
      <!-- <button type="button" id="file_btn">파일 첨부</button>       -->
      <div id="enroll_content">
        <button type="button" id="enroll_btn">상품 등록</button>
      </div>
    </form>    
    <form action="adImageEnroll.do" method="post" method="post" enctype="multipart/form-data" id="cfrm"> 
      <p id="product_info">상품 정보</p>
<!--  	<div id="product_content"> -->
	  <div id="productImage">
	  	<label for="pdNo">상품 번호 :
	  		<input type="text" name="pdNo" id="pdNo" placeholder="상품번호를 입력하세요.">
	  	</label>
	  	<br>
<!--  	  
	  	<label for="pdName">파일 이름 :
	  		<input type="text" name="pdName" id="pdName" placeholder="파일이름을 입력하세요.">
	  	</label> 
-->	  
	  </div>
      	<textarea id="ckeditor" name="pContent" required></textarea>
	    <script>
	    	CKEDITOR.replace('ckeditor', {
	    		filebrowserUploadUrl: '${pageContext.request.contextPath}/ContentImageUpload.do'
//				filebrowserUploadUrl: '${pageContext.request.contextPath}/ckeditorImageUpload.do'
//				enterMode:CKEDITOR.ENTER_BR,
//				shiftEnterMode:CKEDITOR.ENTER_P
	    	});
	    	CKEDITOR.on('dialogDefinition', function(ev){
		           var dialogName = ev.data.name;
		           var dialogDefinition = ev.data.definition;
		         
		           switch (dialogName) {
		               case 'image': //Image Properties dialog
		                   //dialogDefinition.removeContents('info');
		                   dialogDefinition.removeContents('Link');
		                   dialogDefinition.removeContents('advanced');
		                   break;
		           }
		       });
	    </script>              
        <!-- 
        <img src="" class="prod_box">
        <input type="file" name="file_tn" id="file_btn">	           
        -->        	       
	  <div id="enroll_content">
        <button type="button" id="img_btn">상품 정보 등록</button>
      </div>        
    </form>
	</div>    
<!-- 
P_NO, P_BRAND, P_NAME, P_CONTENT_, P_PRICE, CATEGORY_ID
 -->
<script>
	$("#enroll_btn").click(enrollHandler);	
	$("#img_btn").click(contentAddtionHandler);	
	
	function enrollHandler() {	
		console.log("카테고리(가구, 패브릭, 조명)id: " +$("#category").val());
		console.log("브랜드명: " +$("#prod_brand").val());
		console.log("상품명: " +$("#prod_name").val());
		console.log("상풍 가격: " +$("#prod_price").val());
		console.log("옵션번호: " +$("#opt_no").val());
		console.log("옵션값: " +$("#opt_val").val());
		console.log("추가가격: " +$("#opt_price").val());
		
		// 조건에 따른 파일경로를 지정하기 위한 파라미터 값 전달
		
//		document.querySelector("#ctgry").value = $("#category").val(); 
//		$("#ctgry").val($("#category").val());
		$("#ctgry").prop("value", $("#category").val());
		console.log("전달할 파라미터 ctgry값: " + $("#ctgry").val());
		
		var msg = confirm("상품을 등록하시겠습니까?");			
		
		if(msg){
			efrm.submit();			
		}
		else {
			console.log("등록 취소");
		}
/*
		if(msg) {
			$.ajax({	
				url: "adProductEnroll.aj",
				type: "post",			
				data: {
					pContent : '상품상세 이미지 경로',
					cateId : $("#category").val(),
					pBrand : $("#prod_brand").val(),
					pName : $("#prod_name").val(),
					pPrice : $("#prod_price").val(),
					optNo : $("#opt_no").val(),
					optVal : $("#opt_val").val(),
					optPrice : $("#opt_price").val()
				},
				//dataType : "json",
				success : function(result) {
					if(result > 0){
						alert("상품이 성공적으로 등록되었습니다.");
						location.href= "admain";
					} else {
						console.log(result);
						alert("상품 등록에 실패했습니다. 다시 입력해주세요");
						location.reload();
					}					
				},
				error : function(request, status, error) {
					console.log(request);
					console.log(status);
					console.log(error);
//에러페이지 이동		location.href="adProductEnroll";
				}
			});	
		} 
		else {			
			alert("상품 등록이 취소되었습니다.");
			location.reload();
		} 
*/	
	} 
	
	function contentAddtionHandler() {
		var msg = confirm("상품정보 이미지를 등록하시겠습니까?");
		if(msg) {
			console.log("pdNo: " + pdNo);
			console.log("pContent: " + ckeditor);
			cfrm.submit();
		} else {
			console.log("등록 취소");
		}
	}
</script>  
</body>
</html>