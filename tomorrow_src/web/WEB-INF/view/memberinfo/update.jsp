<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>
        .text {
            border-radius:9px; width: 250px; height: 30px;
        }
        *{text-decoration: none;}
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include>	
       <div style="width: 70%; min-width:400px; margin:150px auto;">
        <div  style="display: flex; width: 100%;">
            <span style=" width: 80%;"><b style="font-size: larger ;">회원정보수정</b></span>
            <span style="width: 20%;"><a href="deleteAccount">탈퇴하기</a></span>
        </div>
    
    
    <div id="updateWrap" style="width:100%; margin-top: 50px;">
        <table>  
            <tr>
                <td>아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>ID출력</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td>닉네임</td>
                <td><input class="text" type="text" "></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>생년월일</td>
                <td><input class="text" type="text" placeholder="YYMMDD"></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>연락처</td>
                <td><input class="text" type="text"></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>한줄소개</td>
                <td><input class="text" type="text" ></td>
            </tr>
            <tr><td>&nbsp;</td></tr>

            <tr>
                <td></td>
                <td><button>회원정보수정</button></td>
            </tr>
        </table>
        </div>
    </div>

    <div style="display: block"><jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include></div>
</body>
</html>