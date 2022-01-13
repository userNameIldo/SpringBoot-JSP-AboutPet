<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function sendIt(){
		
		f = document.myForm;
		
		f.action = "/login.action";
		f.submit();
		
	}

</script>
</head>
<body>
<form action="" name="myForm" method="post">
<input type="text" name = "userId">
<input type="text" name = "userPwd">
<input type="button" value = "로그인" onclick="sendIt();">
<a href="<%=cp%>/jArticle.action">찜목록</a>
</form>
</body>
</html>