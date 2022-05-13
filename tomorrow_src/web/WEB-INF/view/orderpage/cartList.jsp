
<link href="<%=request.getContextPath()%>/resources/css/header.css"
	rel="stylesheet" type="text/css">
	<link href="<%=request.getContextPath()%>/resources/css/reset.css"
	rel="stylesheet" type="text/css">
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>




<style>
#allrevoke:hover {
	color: blue;
}

#goPay {
	background-color: rgba(72, 188, 246, 0.897);
}

#goPay:hover {
	background-color: rgb(52, 152, 219);
}
</style>


<style>
* {
	text-decoration: none;
}
</style>

<!-- 모두체크하기  -->
<script>
	$(allcheck);
	function allcheck() {
		$("#allcheck").click(function() {
			var CheckedAll = $("#allcheck").prop("checked");
			$(".checkbox").prop("checked", CheckedAll);
		});
	}
</script>

<!-- 모두 해제하기 -->
<script>
	$(allrevoke);
	function allrevoke() {
		$("#allrevoke").click(function() {
			$(".checkbox").prop("checked", function(index, value) {
				$(this).prop("checked", !value);
			});
		});
	}
</script>





</head>
<body>
	<div><jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include></div>
	<div id="cartWrap" style="display: flex; margin: 0 10% 0 10%;">
		<div id="orderWrap"
			style="width: 55%; padding: 100px 50px 100px 50px; min-width: 350px;">

			<div id="allSelect" style="width: 100%; display: flex;">
				<span style="width: 85%; margin-left: 15px"><input
					type="checkbox" id="allcheck"> 모두 선택</span> <span id="allrevoke"
					style="width: 15%; cursor: pointer;"> 선택 해제</span>
			</div>
			<div class="orderitems"
				style="border: 0px solid black; border-radius: 15px; width: 100%; padding: 10px;">

				<c:forEach items="${cartVoList}" var="vo">
			
					<div
						style="width: 92%; padding: 25px;; border-radius: 15px; text-align: right; border: 1px solid black; margin: 15px; display: flex;">
						<input type="checkbox" class="checkbox">
						<div style="width: 60%;"><img src="${pageContext.request.contextPath }/${vo.productImgName }"></div>
						<div style="width: 40%; text-align: left;">
							<p>상품번호:${vo.pNo } </p>
							<p>주문갯수:${vo.cCnt} </p>
							<p>주문옵션:${vo.pSeq} </p>
							<p style="color:blue;"><b>상품이름:${vo.pName} </b></p>
							<p>브랜드명:${vo.pBrand} </p>
						</div>
					</div>
				</c:forEach>


			</div>
		</div>


		<div id="finalPriceWrap"
			style="width: 45%; padding: 100px 0 0 50px;">
			<div
				style="border: 2px solid rgb(110, 110, 110); border-radius: 15px; width: 70%; 
				padding: 30px; min-width: 300px;">

				<div style="display: flex;">
					<span style="width: 70%;"><b> 총 상품금액</b></span> <span
						style="width: 20%; text-align: end;">금액(원)</span><br>
				</div>
				<div style="display: flex; margin-top: 40px;">
					<span style="width: 70%;"><b> 총 할인금액</b></span> <span
						style="width: 20%; text-align: end;">금액 (원)</span><br>
				</div>
				<div style="display: flex; margin-top: 40px;">
					<span style="width: 70%;"><b> 결제금액</b></span> <span
						style="width: 20%; text-align: end; font-size: medium;"><b>금액(원)</b></span><br>
				</div>

				<button onclick="location.href='orderpage'" id="goPay"
					style="margin: 40px 0 0 0; width: 100%; height: 40px; border: 0px; border-radius: 13px; color: white; font-size: 15px; cursor: pointer;">
					<b>원 상품 결제하기</b>
				</button>
			</div>
			<br>



		</div>


	</div>
	<div style="display: block"><jsp:include
			page="/WEB-INF/view/template_footer.jsp"></jsp:include></div>
</body>
</html>