<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/layout.css" type="text/css"/>
<link rel="stylesheet" href="resources/css/pwdcheck.css" type="text/css"/>
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>
<!-- 강사님꺼 -->

<script type="text/javascript">
	
	function sendIt(){
		
		var f = document.myForm;

		if(!(f.newPwd.value==f.checkPwd.value)){
			alert("비밀번호가 일치하지 않습니다.");
			f.newPwd.focus();
			return;
		}
		
		
		f.action = "<%=cp%>/pwdupdate.do";

		f.submit();
		
	}

</script>


</head>
<body>

<main class="container page login srch" id="container">
	<div class="inr" style="min-height: 580.082px;">

		<div class="contents" id="contents">
			<div class="pc-tit">
				<h2>비밀번호 설정</h2>
			</div>
	
			<div class="fake-pop">
				<div class="result">
					<p class="sub">회원님의 소중한 개인정보 보호를 위해<br> 새로운 비밀번호를 등록해주세요.</p>
				</div>
				
				<form action="" name="myForm" method="post">
					<div class="member-input email mt60">
						<ul class="list">
							<li>
								<strong class="tit">새 비밀번호</strong>
								<div class="input del">
									<input type="password" class="inputPswd" id="newPwd" name="newPwd" placeholder="새 비밀번호를 입력해주세요" maxlength="15">
								</div>
							</li>
							
							<li>
								<strong class="tit">새 비밀번호 확인</strong>
								<div class="input del">
									<input type="password" class="inputPswd" id="checkPwd" name="checkPwd" placeholder="비밀번호를 다시 한번 입력해주세요" maxlength="15">
								</div>
							</li>
						</ul>
					</div>
			
				<div class="pbt mt30">
					<div class="btnSet">
						<!-- <a href="javascript:fncUpdatePswd();" id="updateBtn" class="btn lg a gray">완료</a> -->
							<button class="btn lg gray" onclick="sendIt();">확인</button>
					</div>
				</div>
				
				</form>
			</div>
			
		</div>
	</div>
</main>


</body>
</html>