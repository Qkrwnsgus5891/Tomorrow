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
		<p>${bvo.bNo }</p>
		<p>${bvo.bTitle }</p>
		<p>${bvo.bContent }</p>
		<img src="${pageContext.request.contextPath }/${bvo.bImgPath }" width="300">
	</article>
	<jsp:include page="../template_footer.jsp"/>
</body>
</html>