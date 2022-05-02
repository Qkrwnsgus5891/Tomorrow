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
	article {
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;
	}

	.boardOne {
		width: 300px;
	}
</style>
</head>
<body>
	<jsp:include page="../template_header.jsp"/>
	<article>
		<c:forEach items="${listStoryBoard }" var="vo">
					<div class="boardOne">
						<a href="storyread?bno=${vo.bNo }"><img src="${pageContext.request.contextPath }/${vo.bImgPath }" width="200"></a>
						<p><a href="storyread?bno=${vo.bNo }">${vo.bNo }</a></p>
						<p>${vo.bTitle }</p>
						<p>${vo.bWriter }</p>
						<p>${vo.bDate }</p>
					</div>
			</c:forEach>
	</article>
	<table>
			<c:forEach items="${listStoryBoard }" var="vo">
					<tr>
						<td>${vo.bNo }</td>
						<td>${vo.bTitle }</td>
						<td><a href="storyread?bno=${vo.bNo }"><img src="${pageContext.request.contextPath }/${vo.bImgPath }" width="100"></a></td>
					<%-- 
						<td>${vo.bContent }</td>
					--%>
						<td>${vo.bWriter }</td>
						<td>${vo.bDate }</td>
					</tr>
			</c:forEach>
		</table>
	<jsp:include page="../template_footer.jsp"/>    
</body>
</html>