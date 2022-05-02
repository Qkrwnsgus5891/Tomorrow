<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdn.ckeditor.com/4.18.0/full/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<form name="frm_sbWrite" action="enrollF.do" method="post" enctype="multipart/form-data">
	<div>
		<input type="hidden" name="bNo" value="${bvo.bNo }">
		id : <%= session.getAttribute("id") %><br>
	    <input type="text" name="bTitle" value="${bvo.bTitle }" required>
	</div>
	<div>
		<c:if test="${not empty bvo.bImgPath }">
			<img src="${pageContext.request.contextPath }/${bvo.bImgPath }" width="300"><br>
		</c:if>
		<input type="hidden" name="bFilePath" value="${bvo.bImgPath }">
		이미지 : <input type="file" name="upload"><br>
	</div>
	<div>
		<textarea id="ckeditor" name="bContent" required>${bvo.bContent }</textarea>
	    <script>
	    	CKEDITOR.replace('ckeditor', {
	    		filebrowserUploadUrl: '${pageContext.request.contextPath}/ckeditorImageUpload.do'
//				enterMode:CKEDITOR.ENTER_BR,
//				shiftEnterMode:CKEDITOR.ENTER_P
	    	});
	    	CKEDITOR.on('dialogDefinition', function(ev){
		           var dialogName = ev.data.name;
		           var dialogDefinition = ev.data.definition;
		         
		           switch (dialogName) {
		               case 'image': //Image Properties dialog
		                   //dialogDefinition.removeContents('info');
		                   dialogDefinition.removeContents('Link');
		                   dialogDefinition.removeContents('advanced');
		                   break;
		           }
		       });
	    </script>
	</div>
	<div>
		<input type="hidden" name="mId" value="<%= session.getAttribute("id") %>">
        <input type="text" name="pNo" placeholder="상품번호" value="${bvo.pNo }" required>
	</div>
        <button type="submit">게시물 수정</button>
    </form>
</body>
</html>