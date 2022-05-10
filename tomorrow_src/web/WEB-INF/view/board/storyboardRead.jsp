<%@page import="kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo"%>
<%@page import="kh.semi.tomorrow.storyboard.model.vo.StoryRecommentVo"%>
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
<style>
	* {
        box-sizing: border-box;
    }
    .wrap_content {
        margin: 0 auto;
        width: 800px;
    }
    .container_content {
        margin: 60px 0;
    }
    .story_title {
        font-size: 45px;
        line-height: 60px;
        word-break: keep-all;
        color: #2f3438;
        font-weight: 1000;
    }
    .story_header {
        margin: 30px 0 0px;
    }
    .story_writer {
        font-size: 20px;
        font-weight: 700;
        color: #2f3438;
        white-space: nowrap;
        text-overflow: ellipsis;
    }
    .story_writer_intro {
        font-size: 17px;
        line-height: 30px;
        color: #656e75;
    }
    .story_content {
        margin: 50px 0 30px;
    }
    .container_recomment {
    	border-bottom: 1px solid black;
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
                    <div class="story_title">
                        <h1>${bvo.bTitle }</h1>
                    </div>
                    <div class="story_header">
                        <div class="story_writer">
                            ${bvo.bWriter }
                        </div>
                        <div class="story_writer_intro">
                            한줄소개
                        </div>
                    </div>
                    <div class="story_content">
                        ${bvo.bContent }
                    </div>
                    <c:if test="${ssMV.mId eq bvo.mId }">
                    	<button onclick="location.href='storyupdate?bno=${bvo.bNo}'">수정</button>
                    </c:if>
                </div>
			</section>
			<c:if test="${not empty ssMV.mId }">
				<div class="story_recomment_write">
					<form action="reEnroll" method="post">
						<input type="hidden" name="bNo" value="${bvo.bNo }">
						<input type="hidden" name="mId" value="${ssMV.mId }">
						<textarea name="bRecomment" required></textarea>
						<button type="submit">댓글등록</button>
					</form>
				</div>
			</c:if>
			<hr>
			<div class="story_recomment_view">
				<c:if test="${not empty bvo.bRecommentList }">
<%
					StoryBoardVo vo = (StoryBoardVo)request.getAttribute("bvo");
					for(StoryRecommentVo rvo : vo.getbRecommentList()) {
%>
						<div class="container_recomment">
							<div class="recomment_writer">
								<p><%= rvo.getrWriter() %></p>
							</div>
							<div class="recomment_content">
								<p><%= rvo.getrContent() %></p>
							</div>
							<div class="recomment_date">
								<p><%= rvo.getrDate() %></p>
							</div>
						</div>
<%
					}
%>
					<%-- <c:forEach items="${brvoList }" var="rvo">
						<div class="container_recomment">
							<div class="recomment_writer">
								<p><c:out value="${rvo.rWriter }" /></p>
							</div>
							<div class="recomment_content">
								<p><c:out value="${rvo.rContent }" /></p>
								
							</div>
							<div class="recomment_date">
								<p><c:out value="${rvo.rDate }" /></p>
							</div>
						</div>
					</c:forEach> --%>
				</c:if>
			</div>
		</div>
		<div class="wrap_footer">
			<jsp:include page="../template_footer.jsp" />
		</div>
	</div>
	<%-- <jsp:include page="../template_header.jsp"/>
	<article>
		<p>글번호 : ${bvo.bNo }</p>
		<p>제목 : ${bvo.bTitle }</p>
		<p>내용 : ${bvo.bContent }</p>
		썸네일 : <img src="${pageContext.request.contextPath }/${bvo.bImgPath }" width="300">
		<button onclick="location.href='storyupdate?bno=${bvo.bNo}'">수정</button>
	</article>
	<jsp:include page="../template_footer.jsp"/> --%>
</body>
</html>