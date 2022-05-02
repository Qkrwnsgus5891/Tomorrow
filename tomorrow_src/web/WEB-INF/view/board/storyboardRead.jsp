<link href="<%= request.getContextPath() %>/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<jsp:include page="../template_header.jsp"/>
	<article>
		<p>글번호 : ${bvo.bNo }</p>
		<p>제목 : ${bvo.bTitle }</p>
		<p>내용 : ${bvo.bContent }</p>
		썸네일 : <img src="${pageContext.request.contextPath }/${bvo.bImgPath }" width="300">
		<button onclick="location.href='storyupdate?bno=${bvo.bNo}'">수정</button>
	</article>
	<jsp:include page="../template_footer.jsp"/>
</body>
</html>