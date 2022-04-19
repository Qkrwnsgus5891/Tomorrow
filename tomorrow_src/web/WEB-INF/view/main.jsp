<%@page import="kh.semi.tomorrow.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomorrow : test</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>  
	<link href="<%= request.getContextPath() %>/css/reset.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>	
		<%
	MemberVo ssMV = (MemberVo)session.getAttribute("ssMV");
	if(ssMV == null) {
%>
            	<button id="login">로그인</button>
<% } else { %>
            	<button id="logout">로그아웃</button>
<% } %>
	<hr>
    </header>
	<section>
          <article>
            <h3>제목1</h3>
            <div>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit,Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
            </div>  
          </article>
    <div id="container">
      <div class="btn_group">
        <button type="button" id="cmty_btn" onclick="location.href='index.html';">커뮤니티 페이지 바로가기</button>
        <button type="button" id="store_btn" onclick="location.href='index/index2.html';">스토어 페이지 바로가기</button>      
      </div>
    </div> 
    </section>  
    
    <script>
    { /* 로그인 & 로그아웃 jQery */
    	$("#login").click(function() {
    		location.href="login";
    	});
		$("#logout").click(function() {
			location.href="logout";
    	});    	
    }
    	
    
    </script>   
</body>
</html>