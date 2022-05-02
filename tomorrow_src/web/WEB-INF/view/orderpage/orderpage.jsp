<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 / 결제 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>

    <script>
       $(document).ready(function(){
        $("#share1").click(function(){
            $("#share2").toggle();
        });
        });
    </script>
    <style>
        *{text-decoration: none;}
    </style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include>	
     <!-- 썸네일, 회원정보수정 -->
    <div id="myPageWrap01" style="width: 100%; display: flex; margin: 50px;">

        <div id="infoWrap" style="width: 20%; padding: 100px; min-width: 300px;
         left: 50px; position: relative;">
            <div style="width: 100%; height: 400px;border: 1px solid rgb(142, 141, 141);">
               
                <div id="myface" style="display: flex;">
                    <img src="./image/basicprofile.png" style="width: 240px; height: 240px;
                    margin: 35px 35px 0 35px; border-radius: 50%;">
                    <img src="./image/share.png" id="share1" style="width: 50px; height: 50px;
                    margin: 35px 0; border-radius: 50%; position: absolute; right: 120px;cursor: pointer;" >
                    
                </div>
                <div id="share2" style="width:160px;height: 55px; border-radius: 20px; display: none;
                background-color: rgba(190, 240, 240, 0.301); position: absolute; top: 180px; right: 60px;">
                    <div style="display: flex;">
                        <img src="./image/twitter.png" style="width: 50px; height: 50px;cursor: pointer;">
                        <img src="./image/insta.png" style="width: 50px; height: 50px;cursor: pointer;">
                        <img src="./image/facebook.png" style="width: 50px; height: 50px;cursor: pointer;">
                    </div>
                </div>
                <div style="margin: 0 auto;text-align: center;">
                <span style="font-size: 12px;">사진을 drop해서 프로필</span><br>
                <span style="font-size: 12px;">사진을 바꿀 수 있습니다.</span>
                </div>


                <div style="margin: 10px auto 0; width: 120px; height: 25px;
                background-color: rgba(200, 231, 244, 0.692); padding: 1px;  border-radius: 20px;">
                   <p style="text-align: center; bottom: 13px; position: relative;">
                    <a href="update">회원정보 수정<a></p>
                </div>
            </div>

        </div>

        <!-- 회원구매목록 -->
        <div id="infoWrap02" style="width: 90%; overflow:visible; 
        min-width: 600px; padding:75px 100px 0 50px;">
            <h3>회원 구매 목록</h3>
            
            <div id="recentOrderWrap" style="width: 90%; padding: 20px;
            border: 1px solid rgb(142, 141, 141); overflow: auto; ">
                <div style="border: 1px solid rgb(142, 141, 141);">
                    <div style="display: flex; padding: 10px; width: 95%; ">
                        <div id="sumNailProduct" style="background-color: rgb(116, 116, 116);
                        width: 100px;height: 100px;"></div>
                        <div>&nbsp;&nbsp;&nbsp;[브랜드명] [상품명]</div>
                    </div>

                    <div style="background-color: rgba(171, 171, 171, 0.216); width: 95%;margin-top: 10px;margin-left: 10px; height: 40px;border-radius:40px;"></div>
                    <div style="width: 95%;"><h4 style="text-align: end;">금액  원</h4></div>                
                </div>
             
                <div style="border: 1px solid rgb(142, 141, 141); margin-top: 10px;">
                    <div style="display: flex; padding: 10px; width: 95%; ">
                        <div id="sumNailProduct" style="background-color: rgb(116, 116, 116);
                        width: 100px;height: 100px;">
                        </div>
                    <div>&nbsp;&nbsp;&nbsp;[브랜드명] [상품명]</div>
                    </div>

                    <div style="background-color: rgba(171, 171, 171, 0.216); width: 95%;margin-top: 5px;margin-left: 10px; height: 45px;border-radius:40px;"></div>
                    <div style="width: 95%;"><h4 style="text-align: end;">금액  원</h4></div>                
                </div>
            </div>
            
            
             <!-- 나의 스토리 목록 -->
            <h3>나의 스토리</h3>   
            <div id="recentOrderWrap" style="width: 95%; height: 280px;;overflow: auto;">
                
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

       <div><jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include></div>
</body>
</html>