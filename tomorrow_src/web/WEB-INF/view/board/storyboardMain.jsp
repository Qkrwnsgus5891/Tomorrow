<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
	/* section {
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;
	}
	.boardOne {
		width: 300px;
	} */
	* {
		box-sizing: border-box;
	}
	.wrap_content {
		margin-top: 40px;
		position: relative;
		margin-left: auto;
		margin-right: auto;
		width: 1200px;
	}
	.container_content {
		display: flex;
		flex-wrap: wrap;
	}
	.story_one {
		position: relative;
		padding-left: 10px;
		padding-right: 10px;
		padding-bottom: 40px;
		box-sizing: border-box;
		flex: 0 0 25%;
		width: 100%;
	}
	.story_one_header {
		margin: 0 0 15px;
	}
	.story_writer {
		font-size: 15px;
		line-height: 19px;
		font-weight: 600;
	}
	.story_image {
		width: 100%;
	}
	.wrap_story_thumbnail {
		padding-bottom: 100%;
		border-radius: 6px;
		position: relative;
		overflow: hidden;
	}
	.story_thumbnail {
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		transition: transform .2s;
	}
	.story_bcnt {
		position: absolute;
		bottom: 15px;
		right: 15px;
		font-size: 13px;
		color: #fff;
		z-index: 10;
	}
	.story_title {
		margin: 15px 0 0;
		font-size: 15px;
		line-height: 22px;
	}
</style>
</head>
<body>
	<div class="main_wrap">
		<div class="wrap_header">
			<jsp:include page="../template_header.jsp"/>
		</div>
		<div class="wrap_content">
			<section>
				<div class="container_content">
					<c:forEach items="${listStoryBoard }" var="vo">
						<div class="story_one">
							<div class="story_one_header">
								<div class="story_writer">
									${vo.bWriter }
								</div>
								<div class="story_writer_intro">
									${vo.mIntro }
								</div>
							</div>
							<div class="story_image">
								<div class="wrap_story_thumbnail">
									<a class="story_link" href="storyread?bno=${vo.bNo }">
										<img class="story_thumbnail" src="${pageContext.request.contextPath }/${vo.bImgPath }">
										<span class="story_bcnt">
											조회수
											${vo.bCnt }
										</span>
									</a>
								</div>
							</div>
							<div class="story_title">
								${vo.bTitle }
							</div>
						</div>
					</c:forEach>
				</div>
				<p>
					<c:if test="${startPage > 1 }">
						<a href="liststory?page=${startPage - 1 }">이전</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</c:if>
					<c:forEach begin="${startPage }" end="${endPage }" var="p">
						<a href="liststory?page=${p }">${p }</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</c:forEach>
					<c:if test="${endPage < totalPageCnt }">
						<a href="liststory?page=${endPage + 1 }">다음</a>
					</c:if>
				</p>
			</section>
		</div>
		<div class="wrap_footer">
			<jsp:include page="../template_footer.jsp" />
		</div>
	</div>
	<%-- <div class="main_wrap">
		<div class="wrap_header">
			<jsp:include page="../template_header.jsp"/>
		</div>
		<div class="wrap_content">
			<div class="content">
				<section>
					<c:forEach items="${listStoryBoard }" var="vo">
						<div class="boardOne">
							<a href="storyread?bno=${vo.bNo }"><img src="${pageContext.request.contextPath }/${vo.bImgPath }" width="200"></a>
							<p><a href="storyread?bno=${vo.bNo }">${vo.bNo }</a></p>
							<p>${vo.bTitle }</p>
							<p>${vo.bWriter }</p>
							<p>${vo.bDate }</p>
						</div>
					</c:forEach>
				</section>
			</div>
		</div>
		<div class="wrap_footer">
			<jsp:include page="../template_footer.jsp" />
		</div>
	</div> --%>
</body>
</html>