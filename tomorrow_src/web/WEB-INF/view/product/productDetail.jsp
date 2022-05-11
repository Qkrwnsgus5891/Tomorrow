<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/css/header.css"
	rel="stylesheet" type="text/css">
<link href="./css/reset.css" rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
#productdetail {
	margin: 15px 10%;
	width: 90%;
}

#detail_img {
	padding: 0 10px;
	width: 45%;
	height: 500px;
	float: left;
}

#detail_img img {
	width: 100%;
	height: 100%;
	border-radius: 6px;
}

#detailcontent {
	padding: 0 10px;
	width: 45%;
	height: 427px;
	float: left;
}

.pbrand {
	font-size: 15px;
	color: #656e75;
	font-weight: 700;
}

.pname {
	font-size: 22px;
	line-height: 33px;
	min-height: 43px;
	margin: 10 92px 0 0;
}

.pprice {
	color: #35c5f0;
	font-size: 30px;
	font-weight: 900;
	margin: 10PX 0;
}

.optName {
	font-size: 14px;
	line-height: 21px;
	color: #828c94;
	margin: 10PX 0 0;
}

.optName {
	width: 100px;
}

#price {
	font-size: 30px;
	font-weight: 700;
	color: #000;
}

.pp {
	margin: 20px 0;
	text-align: right;
	flex: 0 0 auto;
	font-weight: 700;
	color: #000;
	text-align: right;
}

.orderBtn {
	width: 48%;
	float: right;
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #35c5f0;
	background: none;
	font-weight: 700;
	text-align: center;
	border-radius: 4px;
	background-color: #35c5f0;
	border-color: #35c5f0;
	color: #fff;
	padding: 13px 10px 14px;
	font-size: 17px;
	line-height: 26px;
	display: inline-block;
}

.cartBtn {
	width: 48%;
	display: inline-block;
	box-sizing: border-box;
	border: 1px solid #35c5f0;
	background: none;
	font-weight: 700;
	text-align: center;
	border-radius: 4px;
	background-color: #fff;
	border-color: #35c5f0;
	color: #35c5f0;
	padding: 13px 10px 14px;
	font-size: 17px;
	line-height: 26px;
	display: inline-block;
}
</style>
<style>
#productInfoBtns {
	clear: both;
	padding: 3px 0;
	width: 100%;
	height: 35px;
	background-color: rgb(217, 209, 209);
	text-align: center;
}

#productInfoBtns a {
	color: black;
	padding: 0 30px;
	font-size: 20px;
	font-weight: 700;
	line-height: 30px;
	padding: 0 30px;
}

#productInform {
	width: 90%;
}

#information {
	margin: 10px 25%;
	width: 60%;
	font-weight: 700;
}

#ship {
	margin: 10px 25%;
	width: 60%;
}

#shipInfo {
	margin: 10px 25%;
	width: 60%;
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
				<c:set var="vo" value="${selectProduct }"></c:set>
				<section id="detail_img">
					<img src="${vo.productImgName }">
				</section>
				<section id="detailcontent">
					<form class="frmInf">
						<div class="pbrand">${vo.pBrand }</div>
						<div class="pname">${vo.pName }</div>
						<div class="pprice">${vo.pPrice }<a>(원)</a>
						</div>

						<c:if test="${not empty vo.pdvo }">
							<div>
								<c:forEach items="${vo.pdvo }" var="pdOpt" varStatus="status">
									<c:choose>
										<c:when test="${status.index eq 0}">
											<c:set var="setOpt" value="${pdOpt.optNo }"></c:set>
											<div class="optName">${pdOpt.optName }</div>
											<select name="option_${setOpt }" class="form-select">
												<option selected value="${pdOpt.pSeq }">${pdOpt.optVal }</option>
										</c:when>
										<c:when test="${status.index ne 0 and setOpt ne pdOpt.optNo}">
											<c:set var="setOpt" value="${pdOpt.optNo }"></c:set>
											</select>
											<div class="optName">${pdOpt.optName }</div>
											<select name="option_${setOpt }" class="form-select">
												<option selected value="${pdOpt.pSeq }">${pdOpt.optVal }</option>
										</c:when>
										<c:otherwise>
											<option value="${pdOpt.pSeq }">${pdOpt.optVal }</option>
										</c:otherwise>
									</c:choose>
									<option disabled hidden class="optPrice"
										value="${pdOpt.optPrice }">${pdOpt.optPrice }</option>
									<option disabled hidden class="pSeq" value="${pdOpt.pSeq }">${pdOpt.pSeq }</option>
								</c:forEach>

								</select>
							</div>
						</c:if>
						<p class="pp">
							<span>주문금액 </span><span id="price"></span><span>(원)</span>
						</p>
						<button type="button" class="cartBtn" onclick="location.href='/'">장바구니</button>
						<button type="button" class="orderBtn" onclick="location.href='/'">바로구매</button>
					</form>
				</section>
			</section>
			<script>
				calPrice();
				function calPrice() {
					var basicPrice = Number('${vo.pPrice }');
					if (isNaN(basicPrice)) {
						basicPrice = 0;
					}
					var optPrice = 0;
					$("select").each(function(index, element) {
						var checkedEle = $(element).children(":checked");
						console.log(checkedEle);
						var optOnePrice = Number(checkedEle.next().text());
						console.log(optOnePrice);
						if (isNaN(optOnePrice)) {
							optOnePrice = 0;
						}
						optPrice += optOnePrice;
					});
					var totalPrice = basicPrice + optPrice;
					console.log(totalPrice);
					$("#price").html(totalPrice);
				}
			</script>
			<script>
				$("select").change(function() {
					console.log(this);
					calPrice();
				});
			</script>
		</section>

		<section id="productInfoBtns">
			<a href="#productInform">상품정보</a> 
			<a href="#storylist">리뷰</a> 
			<a href="#ship">배송/환불</a>
		</section>

		<section id="productInform">
			<img src="${vo.pContent }" id="information">
			<div id="storylist">
				<table>
					<tr>
						<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</td>
						<td>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat.</td>
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