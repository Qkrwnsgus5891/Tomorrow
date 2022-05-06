<%@page import="kh.semi.tomorrow.product.model.vo.ProductVo"%>
<link href="<%=request.getContextPath()%>/resources/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/css/header.css"
	rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tomorrow : 상품 수정 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
	border: 1px dotted #ccc;
}

#product_enroll_grp {
	/* border: 1px solid black; */
	flex-flow: row wrap;
	margin-left: 150px;
	width: 450px;
	height: 500px;
}

.enroll_content:not(:first-of-type) {
	margin-top: 25px;
}

.enroll_content>label {
	font-weight: bold;
	font-size: 15px;
}

input[type="text"], select {
	margin-top: 10px;
}

#category, #prod_brand, #prod_name, #prod_price, #prod_option, #opt_no,
	#opt_val, #opt_price, #prod_no, #opt_name, #opt_value, #opt_cash, #pno
	{
	width: 300px;
	height: 30px;
}

#file_btn {
	/* margin: 5px 0 0 150px; */
	margin-left: 150px;
	/* width: 150px; */
	/* height: 40px; */
	/* border: 1px solid #ccc; */
	border-radius: 5px;
}

#product_explanation {
	/* border: 1px solid black; */
	width: 150px;
	margin-top: 50px;
	font-weight: bold;
	font-size: 18px;
}

#product_content {
	margin-top: 20px;
	width: 1000px;
	height: 950px;
	/* height: 1300px; */
	border: 1px solid #ccc;
	border-radius: 20px;
}

.prod_box {
	display: block;
	width: 650px;
	height: 400px;
	border: 1px dotted #ccc;
	margin: 20px auto;
}

#enroll_content {
	width: 100%;
	height: 70px;
	margin-top: 10px;
}

#opt_addition_content {
	position: relative;
	width: 600px;
	height: 50px;
	margin-top: 100px;
}

#opt_explanation {
	position: absolute;
	bottom: 0px;
	width: 100px;
	height: 30px;
	font-weight: bold;
	font-size: 18px;
}

#add_btn {
	position: absolute;
	bottom: 6px;
	left: 18%;
	width: 45px;
	height: 28px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

#option_container {
	border: 1px solid #ccc;
	border-radius: 20px;
	margin: 10px 0 30px 0;
	height: 450px;
}

#option_content {
	/* border: 1px solid black; */
	margin: 30px 0 0 60px;
	width: 500px;
	height: 250px;
}

#edit_btn {
	position: absolute;
	margin-top: 20px;
	left: 45%;
	width: 200px;
	height: 40px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.underbar {
	margin-left: 0;
	width: 310px;
}
</style>
</head>
<body>
	<jsp:include page="../template_header.jsp" />


	<div id="container">
		<form action="adProductEdit" method="post">
			<section id="content_enroll">
				<div id="product_img">
					<div></div>
				</div>

				<div id="product_enroll_grp">
					<div class="enroll_content">
						<!-- 상품 번호 -->
						<label for="pno" style="font-size: 15px;">조회할 상품 번호를	입력해주세요.</label>
						<button type="button" id="search_btn">조회</button>
						<br> <input type="text" name="pno" id="pno"
							placeholder="상품 번호를 입력해주세요.">
					</div>
<%
	ProductVo vo = (ProductVo) request.getAttribute("product");
%>
					<c:if test="${vo != null }">
						<div class="enroll_content">
							<!-- 카테고리 종류 -->
							<label for="category" style="font-size: 15px">카테고리 종류를
								입력해주세요.</label><br> 
							<select name="category" id="category">
								<option value="0" selected>카테고리 종류</option>
								<option value="1">가구</option>
								<option value="2">패브릭</option>
								<option value="3">조명</option>
							</select>

						</div>
						<div class="enroll_content">
							<label for="prod_brand" style="font-size: 15px;">브랜드명을
								입력해주세요. </label><br> 
							<input type="text" name="prod_brand" id="prod_brand" value="${vo.pBrand }"	placeholder="브랜드명을 입력해주세요.">
						</div>
						<div class="enroll_content">
							<!-- 상품 이름 -->
							<label for="prod_name" style="font-size: 15px">상품명을
								입력해주세요.</label><br> 
							<input type="text" name="prod_name" id="prod_name" value="${vo.pName }" placeholder="상품명을 입력해주세요.">
						</div>
						<div class="enroll_content">
							<!-- 상품 가격 -->
							<label for="prod_price" style="font-size: 15px">가격을
								입력해주세요.</label><br> 
							<input type="text" name="prod_price" id="prod_price" value="${vo.pPrice}" placeholder="금액(원)을 입력해주세요.">
						</div>
						<div class="enroll_content">
							<!-- 옵션 번호 -->
							<label for="opt_no" style="font-size: 15px">옵션을 입력해주세요.</label><br>
							<select name="opt_no" id="opt_no">
								<option value="0" selected>옵션을 선택해주세요.</option>
								<option value="1">색상</option>
								<option value="2">사이즈</option>
								<option value="3">추가상품</option>
							</select><br>
							<!-- 옵션값 -->
							<input type="text" name="opt_val" id="opt_val"
								placeholder="옵션값을 입력해주세요.">
						</div>
						<div class="enroll_content">
							<!-- 옵션 추가가격 -->
							<label for="opt_price" style="font-size: 15px">옵션 가격을
								입력해주세요.</label><br> 
							<input type="text" name="opt_price"	id="opt_price" value=0>
						</div>
					</c:if>
				</div>
			</section>
			<input type="file" name="file_tn" id="file_btn">

			<!-- 
        P_SEQ     NOT NULL VARCHAR2(10)  
      P_NO      NOT NULL NUMBER        
      OPT_NO    NOT NULL NUMBER        
      OPT_VAL   NOT NULL VARCHAR2(500) 
      OPT_PRICE NOT NULL NUMBER 
    -->
			<section>
				<div id="opt_addition_content">
					<p id="opt_explanation">옵션 정보</p>
					<button type="button" id="add_btn">추가</button>
				</div>
				<div id="option_container">
					<div id="option_content">
						<div class="enroll_content">
							<label for="prod_no">상품번호</label>
							<hr class="underbar">
							<input type="text" name="prod_no" id="prod_no"	placeholder="상품번호를 입력해주세요."> <br>
						</div>
						<div class="enroll_content">
							<label for="opt_name">옵션명</label>
							<hr class="underbar">
							<select name="opt_name" id="opt_name">
								<option value="0" selected>옵션을 선택해주세요.</option>
								<option value="1">색상</option>
								<option value="2">사이즈</option>
								<option value="3">추가상품</option>
							</select> <br>
						</div>
						<div class="enroll_content">
							<label for="opt_value">옵션값</label>
							<hr class="underbar">
							<input type="text" name="opt_value" id="opt_value"	placeholder="옵션값을 입력해주세요."> <br>
						</div>
						<div class="enroll_content">
							<label for="opt_cash">옵션 추가가격</label>
							<hr class="underbar">
							<input type="text" name="opt_cash" id="opt_cash" value="0">
						</div>
					</div>

				</div>
			</section>

			<section>
				<p id="product_explanation">상품 정보</p>
				<div id="product_content">
					<img src="#" alt="" class="prod_box"> 
					<input type="file" name="file_tn" id="file_btn"> 
					<img src="#" alt=""	class="prod_box"> 
					<input type="file" name="file_tn"	id="file_btn">
				</div>
				<div id="enroll_content">
					<button type="button" id="edit_btn">상품 수정</button>
				</div>
			</section>
		</form>
	</div>

	<script>
		$("#search_btn").on("click", searchHandler);
		$("#edit_btn").on("click", editHandler);
		$("#add_btn").on("click", optAddtionHandler);

		function searchHandler() {
			console.log("조회한 상품번호: " + $("#pno").val());

			$.ajax({
				url : "adPdSearch.aj",
				type : "post",
				data : {
					pNo : $("#pno").val()
				},
				success : function(result) {
					alert("상품이 조회되었습니다.");
				},
				error : function(request, status, error) {
					console.log(request);
					console.log(status);
					console.log(error);
					//에러페이지 이동					
				}
			});
		}

		function editHandler() {
			var msg = confirm("상품을 수정하시겠습니까?");
			console.log("상품번호: " + $("#pno").val());
			console.log("카테고리(가구, 패브릭, 조명)id: " + $("#category").val());
			console.log("브랜드명: " + $("#prod_brand").val());
			console.log("상품명: " + $("#prod_name").val());
			console.log("상풍 가격: " + $("#prod_price").val());
			console.log("옵션번호: " + $("#opt_no").val());
			console.log("옵션값: " + $("#opt_val").val());
			console.log("추가가격: " + $("#opt_price").val());
			if (msg) {
				$.ajax({
					url : "adProductEdit",
					type : "post",
					data : {
						pNo : $("#pno").val(),
						pContent : '상품상세 이미지 경로',
						cateId : $("#category").val(),
						pBrand : $("#prod_brand").val(),
						pName : $("#prod_name").val(),
						pPrice : $("#prod_price").val(),
						optNo : $("#opt_no").val(),
						optVal : $("#opt_val").val(),
						optPrice : $("#opt_price").val()
					},
					success : function(result) {
						if (result > 0) {
							alert("상품이 성공적으로 수정되었습니다.");
							location.href = "adProductManage";
						} else {
							console.log(result);
							alert("상품 수정에 실패했습니다. 다시 입력해주세요");
							location.reload();
						}
					},
					error : function(request, status, error) {
						console.log(request);
						console.log(status);
						console.log(error);
						//에러페이지 이동		
						//location.href="adProductEnroll";
					}
				});
			} else {
				alert("상품 수정이 취소되었습니다.");
				location.reload();
			}
		}

		function optAddtionHandler() {
			var msg = confirm("옵션을 추가하시겠습니까?");
			console.log("상품번호: " + $("#prod_no").val());
			console.log("옵션번호: " + $("#opt_name").val());
			console.log("옵션값: " + $("#opt_value").val());
			console.log("옵션가격: " + $("#opt_cash").val());

			if (msg) {
				$.ajax({
					url : "adOptionAddtion.aj",
					type : "post",
					data : {
						pNo : $("#prod_no").val(),
						optNo : $("#opt_name").val(),
						optVal : $("#opt_value").val(),
						optPrice : $("#opt_cash").val()
					},
					success : function(result) {
						if (result > 0) {
							alert("상품이 성공적으로 등록되었습니다.");
							location.href = "admain";
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
						//에러페이지 이동		
						//location.href="adProductEnroll";
					}
				});
			} else {
				alert("옵션 추가를 취소하였습니다.");
				location.reload();
			}

		}
	</script>
</body>
</html>