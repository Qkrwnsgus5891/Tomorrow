<link href="<%=request.getContextPath()%>/resources/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/resources/css/header.css"
	rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>store</title>
<link href="<%=request.getContextPath()%>/css/reset.css"
	rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
article {
	border: 1px solid black;
	padding: 20px;
	margin-bottom: 10px;
}

td {
	padding: 20px;
	margin-bottom: 10px;
}

.furniture_wrapper {
	display: grid;
	grid-gap: 10px;
	border: 1px solid black;
}

.one {
	grid-column: 1;
	grid-row: 1;
}

.two {
	grid-column: 2;
	grid-row: 1;
}

.three {
	grid-column: 3;
	grid-row: 1;
}

table tr td {
	border: 1px solid black;
}

.banner {
	height: 40%; 
	transition : all 1s;
	overflow: hidden;
	text-align: center;
	position: relative;
	transition: all 1s;
}

.banner img {
	width : 100%;
	height : 100%;
	text-align: center;
	display: inline-block;
}
</style>
</head>
<body>

	<div class="main_wrap">
		<div class="wrap_header">
			<jsp:include page="../template_header.jsp" />
		</div>
		<div class="wrap_content">
			<div class="content">
				<section>

					<div class="banner">
						<div class="banner_slider">
							<div>
								<img src="./upload/images/banner1.jpg" alt=""
									style="text-align: center;">
								<div>
									<img src="./upload/images/banner2.jpg" alt=""
										style="text-align: center;">
								</div>
								<div>
									<img src="./upload/images/banner3.jpg" alt=""
										style="text-align: center;">
									</button>
								</div>
							</div>
						</div>
				</section>
				<section>
					<h3>인기키워드</h3>

				</section>
				<section>
					<h3>인기상품</h3>
					<div class="furniture_wrapper">
						<div class="one">

							<table>
								<tr>
									<td>${selectAllProduct.pContent }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pName }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pBrand }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pPrice }</td>
								</tr>
							</table>
						</div>
						<div class="two">
							<table>
								<tr>
									<td>${selectAllProduct.pContent }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pName }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pBrand }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pPrice }</td>
								</tr>
							</table>
						</div>
						<div class="three">
							<table>
								<tr>
									<td>${selectAllProduct.pContent }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pName }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pBrand }</td>
								</tr>
								<tr>
									<td>${selectAllProduct.pPrice }</td>
								</tr>
							</table>
						</div>
					</div>
				</section>
				<section>
					<h3>카테고리</h3>
					<button type="button" id="store_btn"
						onclick="location.href='storeproduct';">전체</button>
					<button type="button" id="furni_btn"
						onclick="location.href='storeproduct';">가구</button>
					<button type="button" id="pabric_btn"
						onclick="location.href='storeproduct';">페브릭</button>
					<button type="button" id="light_btn"
						onclick="location.href='storeproduct';">조명</button>
				</section>
			</div>
			<div class="wrap_footer">
				<jsp:include page="../template_footer.jsp" />
			</div>
		</div>

	</div>
</body>
</html>
