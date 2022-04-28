<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

	<style>
   * {text-decoration: none;}
   </style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include>	
	
    <div id="myPageWrap01" style="width: 100%;;display: flex; margin: 50px;">
        <div id="infoWrap" style="width: 20%; padding: 100px; min-width: 350px;
        height: 600px; left: 50px; position: relative;">
            <div style="width: 100%; height: 400px;border: 2px solid rgb(142, 141, 141);">
                <div id="myFace" style="width: 200px; height: 200px; border: 2px solid rgb(142, 141, 141);
                margin: 35px auto 0; border-radius: 50%;">
                </div>
                <div style="margin: 50px auto 0; width: 120px; height: 25px;
                background-color: aliceblue; padding: 1px; border: 2px solid rgb(142, 141, 141);">
                   <p style="text-align: center; bottom: 13px; position: relative;"><a href="update">회원정보 수정<a></a></p>
                </div>
            </div>

        </div>

        <div id="infoWrap02" style="width: 80%; height: 1000px; overflow:visible; 
        min-width: 600px; padding:100px 100px 0 50px;">
            <h3>회원 구매 목록</h3>
            <div id="recentOrderWrap" style="width: 90%; height: 280px;padding: 40px;
            border: 2px solid rgb(142, 141, 141); overflow: auto; ">
            <div style="display: flex;">
                <div id="sumNailProduct" style="background-color: aquamarine;
                width: 130px;height: 130px;"></div>
                <div>&nbsp;&nbsp;&nbsp;[브랜드명] [상품명]</div>
            </div>
            <div style="background-color: rgba(171, 171, 171, 0.323); width: 100%;margin-top: 10px; height: 60px;border-radius:40px;"></div>
            <div style="width: 100%;"><h3 style="text-align: end;">금액  원</h3></div>                

             
            </div>
            <h3>나의 스토리</h3>   
            <div id="recentOrderWrap" style="width: 100%; height: 280px;;overflow: auto;">
                
                <table border="1px" style="width: 100%; height: 130px; text-align: center;" >
                    <tr>
                        <th>제목 </th>
                        <th>작성일</th>
                        <th>조회</th>
                    </tr>
                    <tr>
                        <td>안녕하세요 </td>
                        <td>2022-04-26</td>
                        <td>2345</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
       <jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include>
</body>
</html>