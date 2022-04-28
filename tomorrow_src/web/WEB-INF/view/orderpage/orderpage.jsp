<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 / 결제 페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
    <style>
        *{text-decoration: none;}
    </style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include>	
   <div id="cartWrap" style="display: flex;">
        <div id="orderWrap" style="width: 60%; padding: 100px 0 200px 200px; min-width: 550px;
        ">

            <p><h2>주문/결제</h2></p>
            <p><h4>주문자</h4></p>
            <hr>
            <br><br>
            <table border="0" style="text-align: left;">
                <tr>
                    <td id="orderName">이름</td>
                    <td colspan="2"><input type="text" placeholder="이름" 
                        style="height: 25px; width: 200px; margin-left: 20px;"> </td>
                </tr>
            
                <tr>
                    <td id="orderEmail">이메일</td>
                    <td colspan="2"><input type="text" placeholder="email" 
                        style="height: 25px; width: 200px; margin-left: 20px;"> </td>
                    <td>@</td>    
                    <td colspan="2"><input type="text" 
                        style="height: 25px; width: 150px;"> </td>            
                </tr>
                <tr>
                    <td id="orderPhone">연락처</td>
                    <td colspan="2"> 
                        <select size="1" id="phoneSelect" style="height: 25px;width: 55px; margin-left: 20px;">
                                <option value="v1" selected>010</option>
                                <option value="v2">011</option>
                                <option value="v3">012</option>
                                <option value="v3">112</option>
                                <option value="v3">119</option>
                                <option value="v3">070</option>
                        </select>
                        <input type="text" placeholder="나머지 입력" 
                        style="height: 25px; width: 140px; "> </td>

                </tr>
            </table>

            <br><br><br>
            <div style="display: flex;">
                <span style="width: 70%;"> 
                    <b>배송지</b>
                </span>
                <span id="fillSame" style="width: 30%;color: rgb(77, 77, 255); cursor: pointer;"> 
                위와 동일하게 채우기
                </span>
            </div><br>
            <hr>
            <br><br>
            <table border="0" style="text-align: left;">
                <tr>
                    <td>배송지명</td>
                    <td colspan="2"><input type="text" 
                        style="height: 25px; width: 200px; margin-left: 20px;"> </td>
                </tr>
                <tr>
                    <td>받는사람</td>
                    <td colspan="2"><input type="text" 
                        style="height: 25px; width: 200px; margin-left: 20px;"> </td>
                </tr>
                <tr>
                    <td id="orderPhone">연락처</td>
                    <td colspan="2"> 
                        <select size="1" id="phoneSelect" style="height: 25px; ;width: 55px; margin-left: 20px;">
                                <option value="v1" selected>010</option>
                                <option value="v2">011</option>
                                <option value="v3">012</option>
                                <option value="v3">112</option>
                                <option value="v3">119</option>
                                <option value="v3">070</option>
                        </select>
                        <input type="text" placeholder="나머지 입력" 
                        style="height: 25px; width: 140px; "> </td>

                </tr>
                <tr>
                    <td>주소</td>
                    <td colspan="3"><input type="text" 
                        style="height: 25px; width: 400px; margin-left: 20px;"> </td>
                </tr>

                <tr>
                    <td id="orderRequest" colspan="4"> 
                        <select size="1" id="phoneSelect" style="height: 40px;width: 500px;">
                                <option value="" selected>배송시 요청사항을 선택해주세요</option>
                                <option value="v2">경비실에 맡겨주세요.</option>
                                <option value="v3">도착하기 전에 연락주세요.</option>
                                <option value="v3">현관문 앞에 놓아주세요.</option>
                                <option value="v3">안전하게 운전해주세요.</option>
                                <option value="v3">벨을 누르지 말아주세요.</option>
                        </select>
                    </td>

                </tr>
            </table>
            <br><br><br>
            <p><h4>주문상품</h4></p>
            <hr>
            

            <div id="orderProducts" >
					<div class="orderitems"
				style="border: 1px solid black; width: 100%; margin-top: 20px; padding: 10px 0;">
				<div
					style="width: 90%; height: 150px; border: 1px solid black; margin: 15px auto 0px;">

				</div>
				<div
					style="width: 90%; height: 150px; border: 1px solid black; margin: 15px auto 0px;">

				</div>
				<div
					style="width: 90%; height: 150px; border: 1px solid black; margin: 15px auto 0px;">

				</div>
			</div>
            </div>
        </div>





        <div id="finalPriceWrap" style="width: 40%;padding: 100px 200px 0 50px;
        height: 800px;">
            <div style="width: 400px; height: 400px; padding: 20px;
            border: 2px solid rgb(117, 117, 117);">
                <h3>결제금액</h3>
                <div style="display: flex;">
                    <span style="width:70%;"> 총 할인 금액</span>
                    <span style="width:20%;"></span>
                    <span style="width:10%;"> 원 </span>
                </div><br>
                <div style="display: flex;">
                    <span style="width:70%;"> 총 상품 금액</span>
                    <span style="width:20%;"></span>
                    <span style="width:10%;"> 원 </span>
                </div><br>
            <hr style=" border: 1px solid rgb(117, 117, 117);">
            
            <div style="position: absolute;">
            <input type="checkbox" style="height: 15px;width: 15px; "> 아래 내용에 모두 동의합니다. (필수)

            <br><br>
            <p>개인정보 수집 허용 및 제 3자 제공 동의</p>
            <p>결제대행 서비스 이용약관 동의</p>
            <p>본인은 만 14세 이상이며, 주문 내용을 확인하였습니다.</p>

            <button>결제하기</button>
           </div>   


            </div>
        </div>

    </div>
       <div><jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include></div>
</body>
</html>