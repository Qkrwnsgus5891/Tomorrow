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
	</script>
</body>
</html>