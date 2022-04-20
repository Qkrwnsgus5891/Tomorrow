<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.four {
	grid-column: 1;
	grid-row: 2;
}

.five {
	grid-column: 2;
	grid-row: 2;
}

.six {
	grid-column: 3;
	grid-row: 2;
}

.seven {
	grid-column: 1;
	grid-row: 3;
}

.eight {
	grid-column: 2;
	grid-row: 3;
}

.nine {
	grid-column: 3;
	grid-row: 3;
}

table tr td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div class="main_wrap">
		<div class="wrap_header">
			<header> </header>
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
							<div class="one">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="two">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="three">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="four">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="five">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="six">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="seven">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="eight">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
							<div class="nine">
								<table>
									<tr>
										<td>이미지 경로</td>
									</tr>
									<tr>
										<td>상품이름</td>
									</tr>
									<tr>
										<td>브랜드이름</td>
									</tr>
									<tr>
										<td>상품가격</td>
									</tr>
								</table>
							</div>
						</div>
					</article>
				</section>

			</div>
			<div class="wrap_footer">
				<footer> </footer>
			</div>
		</div>

	</div>
</body>
</html>