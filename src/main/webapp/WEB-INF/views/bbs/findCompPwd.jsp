<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css"/>
<link rel="stylesheet" type="text/css" href="resources/_css/addInfo.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>

<script type="text/javascript">


$(document).ready(function(){
	
	window.onload = function(){
		
		$(".validation-check").hide();
		$(".btn_on").hide();
		
	}
	
	var check1 = false;
	var check2 = false;
	var check3 = false;
	var check4 = false;
	var check5 = false;
	
	function btn_on(){
		
		if(check1 == false || check2 == false){
			
			$(".btn_off").show();
			$(".btn_on").hide();
			
		}else{
			
			$(".btn_off").hide();
			$(".btn_on").show();
			
		}
	}
	
$(document).on('keyup', '#join_pswd', function(){
		
		
		var pw = $('#join_pswd').val();
		 var num = pw.search(/[0-9]/g);
		 var eng = pw.search(/[a-z]/ig);
		 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		
		
		if(pw.length < 8 || pw.length>15){
			
			
			check1 = false;
			$('#join_pswd_error').show();
			btn_on();
			
		} else if(pw.search(/\s/) != -1){

			check1 = false;
			$('#join_pswd_error').show();
			$('#join_pswd_error').text("공백은 사용할 수 없습니다.");
			btn_on();
		}else if(num < 0 || eng < 0 || spe < 0 ){
			check1 = false;
			$('#join_pswd_error').show();
			$('#join_pswd_error').text("영문,숫자,특수문자를 각각 1자리 이상 포함해주세요.");
			btn_on();
			
		}else{
			check1 = true;
			$('#join_pswd_error').hide();
			btn_on();
		}
		
	});

$(document).on('keyup', '#join_pswd_check', function(){
	
	if($('#join_pswd_check').val() != $('#join_pswd').val()){
		check2 = false;
		$('#join_pswd_check_error').show();
		btn_on();
		
	}else{
		check2 = true;
		$('#join_pswd_check_error').hide();
		btn_on();
	}
	
});






});

function sendIt() {
	
	var f = document.myForm;
	
	f.action = "/findCompPwd_ok.action";
	f.submit();
	
	
	
}


</script>







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
								<h2>비밀번호 설정</h2>
							</div>
		
							<div class="fake-pop">
								<input type="hidden" id="RSAModulus" value="aaaa0629c54c2cc490baedaf4f965720e8b1ae0f5dba6ff29d735a44c214a89b447de13012681f36ff31508d7b4650df0f1aa6baafe907e75a27def5df5107c5d2c2631aa2956fefcf9092f8a3ac94ef17df60916d0e8df5ae756584e1948f28f2ef47d6bc2d0ea1c648aaf24cf9ae526807e6f88e7e17ea72ac8ce7f5836123">
								<input type="hidden" id="RSAExponent" value="10001">
								<div class="result">
									<p class="sub">회원님의 소중한 개인정보 보호를 위해<br> 새로운 비밀번호를 등록해주세요.</p>
								</div>
								
								<form id="pswdForm" name="myForm">
								<div class="member-input email mt60">
									<ul class="list">
										<li>
										
											<strong class="tit">새 비밀번호</strong>
											
											<div class="input">
										
												<input type="hidden" name="userId" value="<%=userId%>">
												<input type="password" class="inputPswd" id="join_pswd" name="newPswd" onblur="fncPswdCheck()" placeholder="영문, 숫자, 특수문자 포함 8자 이상" autocomplete="new-password">
											</div>
											<p class="validation-check" id="join_pswd_error">8~15자 이내로 입력해주세요. </p>
										</li>
										<li>
											<strong class="tit">새 비밀번호 확인</strong>
											<div class="input">
												<input type="password" class="inputPswd" id="join_pswd_check" placeholder="비밀번호를 다시 한번 입력해주세요" autocomplete="new-password">
											</div>
											<p class="validation-check" id="newPswdCheck_error"></p>
										</li>
									</ul>
								</div>
								</form>
								<div>
									<!-- <div class="btnSet">
										<a href="javascript:alert_sample();" id="updateBtn" class="btn lg a">변경하기</a>
									</div> -->
									
									<div>				
										<button disabled="disabled" class="btn_off">완료</button>
									</div>
									
									<div style="display: ">
										<button onclick="sendIt()" class="btn_on">완료</button>
									
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</main>

</div>



</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>