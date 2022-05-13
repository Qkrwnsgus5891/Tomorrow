
<%@page import="java.util.ArrayList"%>
<link href="<%= request.getContextPath() %>/resources/css/header.css" rel="stylesheet" type="text/css">    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <style>
        table, td, th{
	    border-top: 1px solid black;            
    </style>
    
    
    
    <script>
       $(document).ready(function(){
        $("#share1").click(function(){
            $("#share2").toggle();
       		});
        });
    </script>
    
    <script>
        window.onload = function(){ 
        var dropbox = document.getElementById("dropbox")            
            dropbox.addEventListener("dragenter", dragEnter, false);
            dropbox.addEventListener("dragexit", dragExit, false);
            dropbox.addEventListener("dragover", dragOver, false);
            dropbox.addEventListener("drop", drop, false);
        }
     
            function dragEnter(){
            event.stopPropagation();
            event.preventDefault();    
            }
            function dragExit(){
            event.stopPropagation();
            event.preventDefault(); 
            }
            function dragOver(){
            event.stopPropagation();
            event.preventDefault(); 
            }
                 
                 
            function drop(){
            event.stopPropagation();
            event.preventDefault(); 
            var files = event.dataTransfer.files;
            var count = files.length;
             
            if (count > 0){
            handleFiles(files);
            }
                 
            }
            function handleFiles(files){
                var file = files[0];
                document.getElementById("droplabel").innerHTML = "변경되었습니다. "
                var reader = new FileReader(); 
                reader.onloadend = handleReaderLoadEnd; 
                reader.readAsDataURL(file);
                handleFiles(files);
            }
            function handleReaderLoadEnd(){
                var img = document.getElementById("preview");
                img.src = event.target.result;
            }
    </script>

	<style>
   * {text-decoration: none;}
   </style>
</head>
<body>
	<jsp:include page="/WEB-INF/view/template_header.jsp"></jsp:include>	
	
       <!-- 썸네일, 회원정보수정 -->
    <div id="myPageWrap01" style="width: 100%; display: flex; margin: 50px;">

        <div id="infoWrap" style="width: 20%; padding: 100px; min-width: 300px;
         left: 50px; position: relative;">
            <div style="width: 100%; height: 400px;border: 1px solid rgb(142, 141, 141);border-radius:15px ;">
               
                <div id="myface" style="display: flex;">
                    <img name="preview" id="preview" src="<%=request.getContextPath() %>/resources/images/basicprofile.png" style="width: 240px; height: 240px;
                    margin: 35px 35px 0 35px; border-radius: 50%;">
                    
                    
                    <img src="<%=request.getContextPath() %>/resources/images/share.png" id="share1" style="width: 50px; height: 50px;
                    margin: 35px 0; border-radius: 50%; position: absolute; right: 120px;cursor: pointer;" >
                    
                </div>
                <div id="share2" style="width:160px;height: 55px; border-radius: 20px; display: none;
                background-color: rgba(190, 240, 240, 0.301); position: absolute; top: 180px; right: 60px;">
                    <div style="display: flex;">
                        <img src="<%=request.getContextPath() %>/resources/images/insta.png" style="width: 50px; height: 50px;cursor: pointer;">
                        <img src="<%=request.getContextPath() %>/resources/images/facebook.png" style="width: 50px; height: 50px;cursor: pointer;">
                        <img src="<%=request.getContextPath() %>/resources/images/twitter.png" style="width: 50px; height: 50px;cursor: pointer;">
                    </div>
                </div>
                
                <div id="dropbox" style="margin: 0 auto;text-align: center; border: 1px solid black; width: 60%;">
                <label id="droplabel"><span style="font-size: 12px;">여기에 사진을 drop해서 프로필</span><br>
                <span style="font-size: 12px;">사진을 바꿀 수 있습니다.</span></label>
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
            <h3>회원 장바구니 목록</h3>
            
            <div id="recentOrderWrap" style="width: 90%; padding: 20px;
            border: 1px solid rgb(142, 141, 141); overflow: auto;border-radius:15px ; ">
                           

<c:forEach items="${orderVoList }" var="ovo">        
          			<%-- ${ovo.odVolist[2].oDcnt } --%>
          			  <div style="border: 1px solid rgb(142, 141, 141);">
                    <div style="display: flex; padding: 10px; width: 95%; ">
                        <div id="sumNailProduct" style="background-color: rgb(116, 116, 116);
                        width: 100px;height: 100px;"></div>
                        <div style="padding-left= 10px;">주문번호:<a href="storyread?bno=${ovo.oNo }">${ovo.oNo }</a>
                        <br>주문자: ${ovo.oName }
                        <br>주문날짜:${ovo.oDate } 
                        <br>주문갯수:${ovo.pCnt }</div>
                    </div>
                    <div style="width: 95%;"><h4 style="text-align: end;">금액  ${ovo.oTotalPrice }원</h4></div>                
                </div>
</c:forEach>

                
	 </div>
            
  
             <!-- 나의 스토리 목록 -->
            <h3>나의 스토리</h3>   
            <div id="recentOrderWrap" style="width: 95%;overflow: auto;">
                
                <table border="1px" style="width: 100%; height: 40px; text-align: center;" >

        		<tr>
          			<td width="65">글번호</td>
          			<td width="500">제목</td>
          			<td width="120">작성일</td>
          			<td width="50">조회수</td>          
        		</tr>    

<c:forEach items="${boardlist }" var="vo">        
        		<tr>
          			<td><a href="storyread?bno=${vo.bNo }">${vo.bNo }</a></td>
          			<td><a href="storyread?bno=${vo.bNo }">${vo.bTitle }</a></td>
          			<td>${vo.bDate }</td>
          			<td>${vo.bCnt }</td>
        		</tr>
</c:forEach>  
		</table>    
		        
      	<p id="prev_next">		
			<c:if test="${ startPage > 1 }">
				<a href="memberinfo?page=${ startPage-1}">이전</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</c:if>
			<c:forEach begin="${startPage }" end="${endPage }" var="p">
				<a href="memberinfo?page=${ p}">${ p }</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
			<c:if test="${endPage < totalPageCnt }">
				<a href="memberinfo?page=${ endPage+1}">다음</a>
			</c:if>
		</p>





            </div>
        </div>
    </div>
       <jsp:include page="/WEB-INF/view/template_footer.jsp"></jsp:include>
</body>
</html>