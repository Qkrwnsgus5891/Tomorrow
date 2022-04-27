<link href="<%=request.getContextPath()%>/resources/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/css/header.css"
	rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="./css/reset.css" rel="stylesheet">
<style>
#productdetail {
	margin: 0 10%;
	width: 90%;
}

#detail_img {
	padding: 0 10px;
	width: 45%;
	height: 427px;
	float: left;
}

#detail_img img {
	width: 100%;
	height: 100%;
}

#detailcontent {
	padding: 0 10px;
	width: 45%;
	height: 427px;
	float: left;
}

#productInfoBtns {
	clear: both;
	padding: 3px 0;
	width: 100%;
	height: 30px;
	background-color: rgb(217, 209, 209);
	text-align: center;
}

#productInfoBtns a {
	padding: 0 30px;
}

#productInform {
	width: 90%;
	
}
#information{
	margin: 10px 30%;	
}
#ship, #shipInfo{
	margin: 10px 30%;	
}
</style>
</head>
<body>
	<div class="main_wrap">
		<div class="wrap_header">
			<jsp:include page="../template_header.jsp" />
		</div>
		<section>
			<section id="productdetail">
				<section id="detail_img">
					<img src="./upload/images/sample.jpg">
				</section>
				<section id="detailcontent">
					<h5>브랜드명</h5>
					<h3>상품이름 어쩌구 저쩌구 이러쿵 저러쿵 엄청 길게 나올거니까 일단 넣어놓기</h3>
					<p>금액(원)</p>
					<p>옵션1</p>
					<div>
						<select name="option_one">
							<option value="color1">빨강</option>
							<option value="color2">노랑</option>
							<option value="color3">파랑</option>
							<option value="color4">초록</option>
						</select>
					</div>
					<p>옵션2</p>
					<div>
						<select name="option_two">
							<option value="size1">싱글</option>
							<option value="size2">슈퍼싱글</option>
							<option value="size3">퀸</option>
							<option value="size4">킹</option>
						</select>
					</div>
					<p>주문금액 금액+옵션가격(원)</p>
					<button type="submit">장바구니</button>
					<button type="submit">바로구매</button>
				</section>
			</section>
		</section>

		<section id="productInfoBtns">
			<a href="#productInform">상품정보</a> <a href="#storylist">리뷰</a> <a
				href="#ship">배송/환불</a>
		</section>

		<section id="productInform">
			<img src="./upload/images/sample.jpg" id="information">
			<div id="storylist">
				<table>
					<tr>
						<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</td>
					</tr>
				</table>
			</div>
			<p id="ship">배송관련 안내</p>
			<table id="shipInfo">
				<tr>
					<td>배송</td>
					<td>일반택배</td>
				</tr>
				<tr>
					<td>배송비</td>
					<td>3,500원(70,000원 이상 구매시 무료 배송)</td>
				</tr>

				<tr>
					<td>도서산간 추가 배송비</td>
					<td>5,000원</td>
				</tr>
				<tr>
					<td>배송불가 지역</td>
					<td>배송불가 지역이 없습니다.</td>
				</tr>
			</table>

		</section>
		<div class="wrap_footer">
			<jsp:include page="../template_footer.jsp" />
		</div>
	</div>

</body>
</html>