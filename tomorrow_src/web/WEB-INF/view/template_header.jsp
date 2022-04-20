<%@page import="kh.semi.tomorrow.member.model.vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header>
    <div id="navigation_content">   
      <div id="navigation_primary_menu">
        <div id="navigation_bar_logo">        
            <a href="#" id="logo" onclick="location.href='main';">내일의 집</a>
            <div id="navigation_bar_menu">
              <a href="#"id="cmty_btn" onclick="location.href='#';">커뮤니티</a>
              <a href="#"id="store_btn" onclick="location.href='#';">스토어</a>
            </div>      
        </div>
      </div>        
      <div id="navigation_primary_right">
        <div id="navigation_bar_right">
          <a href="#" style="color: black;" id="cart" onclick="location.href='#'; ">
            <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
              <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
            </svg>
          </a>         
<%
	MemberVo ssMV = (MemberVo)session.getAttribute("ssMV");
	if(ssMV == null) { 
%>
          <a href="#" class="navigation_bar_right_btn" id="login_btn" style="left:50px; bottom:5px;">로그인</a>
<%	} else { %>
          <a href="#" class="navigation_bar_right_btn" id="logout_btn" style="left:50px; bottom:5px;">로그아웃</a>
<%  } %>
          <a href="#" class="navigation_bar_right_btn" id="join_btn">회원가입</a>
<% if(ssMV != null) { %>    
          <a href="#" style="color: black;" id="my_info">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
              <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
              <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
            </svg>  
          </a>  
<% } %>
          <button type="button" id="write_btn" onclick="location.href='#'; ">글쓰기</button>
        </div>      
      </div> 
    </div>    
    <script>
    { /* 로그인 & 로그아웃 jQery */
    	$("#login_btn").click(function() {
    		location.href="login";
    	});
		$("#logout_btn").click(function() {
			location.href="logout";
    	});    	
    }
    </script>
 </header>
