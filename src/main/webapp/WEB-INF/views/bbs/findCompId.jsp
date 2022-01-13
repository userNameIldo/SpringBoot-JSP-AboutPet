<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	String userId = request.getParameter("userId");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css"/>
</head>
<body class="body login srch isPc gnb_ac">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<div class="wrap" id="wrap">

<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>
<div class="wrap" id="wrap">
<main class="container page login srch" id="container">
		
	<div class="inr" style="min-height: 978.047px;">
		<!-- 본문 -->
		<div class="contents" id="contents">
			<!-- PC 타이틀 모바일에서 제거  -->
			<div class="pc-tit">
				<h2>아이디 안내</h2>
			</div>
			<!-- // PC 타이틀 모바일에서 제거  -->
			<div class="fake-pop">
				<div class="result">
					<span class="blue">아이디 찾기</span>를 완료하였습니다.</div>
				<div class="end-box mt30">
					<dl>
						<dt>아이디</dt>
						<dd><%=userId %></dd>
					</dl>
				</div>
				<div class="pbt mt30">
					<div class="btnSet">
						<a href="/login.action" class="btn lg a" >로그인하기</a>
					</div>
				</div>
				<a class="lnk-pw center" href="/findPwd.action">비밀번호가 생각나지 않으세요?</a>
			</div>
		</div>

	</div>
</main>

</div>



</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>