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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
section {
	width: 80%;
	float: right;
}

article {
	border: 1px solid black;
	padding: 20px;
	margin-bottom: 10px;
}

nav {
	width: 20%;
	float: left;
	padding-left: 10px;
	box-sizing: border-box;
}

.furniture_wrapper {
	display: grid;
	grid-gap: 10px;
}

table tr td {
	border: 1px solid black;
}

footer {
	clear: both;
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
				<nav>
					<h3>카테고리</h3>
					<p>가구</p>
					<p>페브릭</p>
					<p>조명</p>
				</nav>
				<section>
					<article>
						<h3>전체상품</h3>
						<div class="furniture_wrapper">
							<c:forEach items="${selectAllProduct }" var="vo">

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

							</c:forEach>


						</div>
						<p>
							<c:if test="${startPage > 1 }">
								<a href="funiture?page=${startPage-1 }">이전</a>&nbsp;&nbsp;&nbsp;&nbsp;
							</c:if>
							<c:forEach begin="${startPage }" end="${endPage }" var="p">
								<a href="funiture?page=${p }">${p }</a>&nbsp;&nbsp;&nbsp;&nbsp;
							</c:forEach>
							<c:if test="${endPage < totalPageCnt }">
								<a href="funiture?page=${endPage+1 }">다음</a>
							</c:if>
						</p>
					</article>

				</section>


			</div>
			<div class="wrap_footer">
				<jsp:include page="../template_footer.jsp" />
			</div>
		</div>

	</div>
</body>
</html>