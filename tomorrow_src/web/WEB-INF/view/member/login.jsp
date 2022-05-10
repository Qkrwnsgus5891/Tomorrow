<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/login.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script scr="https://code://code.jquery.com/jquery-3.6.0.js"></script>
    <title>내일의 집</title>
    <style>
    	section, .con{
    		overflow: hidden;
    	}
        .text {
            border-radius:9px; width: 250px; height: 30px;
        }
        *{text-decoration: none;}
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include>	
	<section>
    <div class="con">
    <a href=""><img class="logo" src="<%=request.getContextPath() %>/resources/images/내일의집.png"></a>
    <br><br>
	    <form action="login" method="post">
		    <input type="text" name="id" class="id" placeholder="아이디"><br>
		    <input type="password" name="pwd" class="pwd" placeholder="비밀번호">
		    <br><br>
		    <a href=""><button type="submit" class="btn">로그인</button></a>
	    <a href="<%=request.getContextPath() %>/join"><button class="btn2">회원가입</button></a>
	    </form>
    </div>
    
    </section>
        
    <div style="display: block"><jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include></div>
</body>
</html>