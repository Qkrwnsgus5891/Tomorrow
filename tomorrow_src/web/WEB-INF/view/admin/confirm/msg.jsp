<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tomorrow : msg page</title>
</head>
<body>
<%
	String msg = (String)request.getAttribute("msg");
%>
	<script>
	var msg = '${msg}';	 	
 	if(msg != ''){		
		alert(msg);
		location.replace("admain");
	} 
	if(msg != '' && msg == '상품번호가 선택되지 않았습니다. 다시 입력해주세요'){
		alert(msg);
		location.replace("adProductManage");
	}
	if(msg != '' && msg == '회원을 선택하지 않았습니다.'){
		alert(msg);
		location.replace("adMemberList");
	}
	if(msg != '' && msg == '게시물을 선택하지 않았습니다.'){
		alert(msg);
		location.replace("adProductManage");
	}
	</script>
</body>
</html>