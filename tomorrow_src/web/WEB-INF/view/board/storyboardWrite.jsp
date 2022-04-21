<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="<%= request.getContextPath() %>/js/ko.js"></script>
<style>
    .ck.ck-editor{
        max-width: 1000px;
    }
    .ck-editor__editable{
        min-height: 500px;
    }
</style>
</head>
<!--
	private String bNo;
	private String bTitle;
	private String bContent;
	private int bCnt;
	private Timestamp bDate;
	private String bNy;
	private String mId;
	private String mNickname;
	private int pNo;
-->
<body>
	<form action="enroll.do" method="post">
        <div>
            <div>
                <input type="text" name="btitle" placeholder="제목을 입력해주세요">
            </div>
            <div>
            	<textarea id="ckeditor" name="bContent" placeholder="내용을 입력해주세요">
                	
                </textarea>
            </div>
            <script>
                ClassicEditor
                    .create(document.querySelector("#ckeditor"),{
                        language:'ko'
                    })
                    .then(editor => {
                    	window.editor = editor;
                    })
                    .catch(error => {
                        console.log(error);
                    });
            </script>
        </div>
        <button type="submit">게시물 등록</button>
    </form>
</body>
</html>