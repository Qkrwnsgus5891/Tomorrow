<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>store</title>
<link href="<%= request.getContextPath() %>/css/reset.css"
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
</style>
</head>
<body>
	
	<div class="main_wrap">
		<div class="wrap_header">
			<jsp:include page="../template_header.jsp"/>
		</div>
		<div class="wrap_content">
			<div class="content">
				<section>
					<article>배너이미지</article>
				</section>
				<section>
					<h3>인기키워드</h3>
					<table>
						<tr>
							<td>인기 키워드 이미지</td>
							<td>인기 키워드 이미지</td>
							<td>인기 키워드 이미지</td>
						</tr>
					</table>
				</section>
				<section>
					<h3>인기상품</h3>
					<div class="furniture_wrapper">
					<div class="one">
						<table>
							<tr>
								<td>${vo.pContent }</td>
							</tr>
							<tr>
								<td>${vo.pName }</td>
							</tr>
							<tr>
								<td>${vo.pBrand }</td>
							</tr>
							<tr>
								<td>${vo.pPrice }</td>
							</tr>
						</table>
					</div>
					<div class="two">
						<table>
							<tr>
								<td>${vo.pContent }</td>
							</tr>
							<tr>
								<td>${vo.pName }</td>
							</tr>
							<tr>
								<td>${vo.pBrand }</td>
							</tr>
							<tr>
								<td>${vo.pPrice }</td>
							</tr>
						</table>
					</div>
					<div class="three">
						<table>
							<tr>
								<td>${vo.pContent }</td>
							</tr>
							<tr>
								<td>${vo.pName }</td>
							</tr>
							<tr>
								<td>${vo.pBrand }</td>
							</tr>
							<tr>
								<td>${vo.pPrice }</td>
							</tr>
						</table>
					</div>
			</div>
			</section>
			<section>
				<h3>카테고리</h3>
				<button type="button" id="store_btn"
					onclick="location.href='funiture';">가구</button>
				<button type="button" id="store_btn"
					onclick="location.href='funiture';">페브릭</button>
				<button type="button" id="store_btn"
					onclick="location.href='funiture';">조명</button>
			</section>
		</div>
		<div class="wrap_footer">
			<jsp:include page="../template_footer.jsp"/>
		</div>
	</div>

	</div>
</body>
</html>
