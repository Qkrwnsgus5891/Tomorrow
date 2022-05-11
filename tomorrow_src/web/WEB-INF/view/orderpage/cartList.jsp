<%@page import="java.util.ArrayList"%>
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<%@page import="kh.semi.tomorrow.product.model.vo.ProductVo"%>
<%@page import="kh.semi.tomorrow.product.model.vo.ProductDetailVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<!--   <script>
  
    
    $(pageLoadedHandler);
    function pageLoadedHandler(){
    
    var orderItemEle = '<type="값">';
    for(var i=1; i<orderitem + 1 ; i++){
    $(".orderItems").append(orderItemEle);
    }   
    
    $("#all_check").click(function(){
    var isCheckedAll = $("#all_check").prop("checked");
    $(".orderItems").prop("checked", isCheckedAll);
    });
            
    $("#rev_check").click(function(){
    $(".orderItems").prop("checked", function(index, value){
    $(this).prop("checked",!value);
    });
    </script> -->


<style>
* {text-decoration: none;}
</style>

</head>
<body>
	<div><jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include></div>
	<div id="cartWrap" style="display: flex; margin:0 10% 0 10%;">
		<div id="orderWrap"
			style="width: 60%; padding: 100px 50px 100px 50px; min-width: 350px;">

			<div id="allSelect" style="width: 100%; display: flex;">
				<span style="width: 80%;"><input type="checkbox"
					id="all_check"> 모두 선택</span> <span style="width: 20%;"><input
					type="checkbox" id="rev_check"> 선택 해제</span>
			</div>
			<div class="orderitems"
				style="border: 1px solid black;border-radius:15px ; width: 100%; margin-top: 20px; padding: 10px 0;">
				<div
					style="width: 90%; height: 150px; border: 1px solid black; margin: 15px auto 0px;">

				</div>
 <%
	ArrayList<ProductVo> ProductVo = (ArrayList<ProductVo>)request.getAttribute("ProductVo");
%>    
<table>
<c:forEach items="${ProductVo }" var="vo">        
        		<tr>
          			<td>${vo.pNo }</td>
          			<td>${vo.pPrice }</td>
          			<td>${vo.pBrand }</td>
          			<td>${vo.pName }</td>
        		</tr>
</c:forEach>      
     </table>           
				<div
					style="width: 90%; height: 150px; border: 1px solid black; margin: 15px auto 0px;">

				</div>
				<div
					style="width: 90%; height: 150px; border: 1px solid black; margin: 15px auto 0px;">

				</div>
			</div>
		</div>


		<div id="finalPriceWrap"
			style="width: 40%; padding: 100px 0 0 50px; height: 800px;">
			<div
				style="border: 2px solid rgb(110, 110, 110);border-radius:15px ;width: 70%; height: 150px; padding: 15px; min-width: 300px;">
			
					<div style="display: flex;">
						<span style="width: 70%;"><b> 총 상품금액</b></span> <span
							style="width: 20%; text-align: end;">금액(원)</span><br>
					</div>
					<div style="display: flex; margin-top: 40px;">
						<span style="width: 70%;"><b> 총 할인금액</b></span> <span
							style="width: 20%; text-align: end;">금액(원)</span><br>
					</div>
					<div style="display: flex; margin-top: 40px;">
						<span style="width: 70%;"><b> 결제금액</b></span> <span
							style="width: 20%; text-align: end; font-size: medium;"><b>금액(원)</b></span><br>
					</div>
			</div>
			<br>
			<button onclick="location.href='orderpage'; ">( ) 개 상품 구매하기</button>
			
		</div>


	</div>
<div style="display: block"><jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include></div>
</body>
</html>