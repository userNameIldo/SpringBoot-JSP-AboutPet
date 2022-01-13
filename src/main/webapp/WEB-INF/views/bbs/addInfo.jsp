<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css" href="resources/_css/addInfo.css">

<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<script type="text/javascript" src="resources/js/util.js"></script>

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
		
		if(check1 == false || check2 == false || check3 == false || check4 == false || check5 == false){
			
			$(".btn_off").show();
			$(".btn_on").hide();
			
		}else{
			
			$(".btn_off").hide();
			$(".btn_on").show();
			
		}
	}
	
	//아이디 체크
	$(document).on('keyup', '#join_login_id', function(){
		
		if($('#join_login_id').val().length < 6){	
			
			check1 = false;
			$('#join_login_id_error').show();
			btn_on();
			
		}else{
			
			var checkId = $('#join_login_id').val();
			
			$.ajax({
				
				url : 'checkId.action',
				type : 'post',
				data : {
					checkId : checkId
				},
				success : function(data){
					if(data == 1){
						check1 = false;
						$('#join_login_id_error').show();
						$('#join_login_id_error').text("중복된 아이디가 있습니다.");
						btn_on();
						
					}else{
						
						check1 = true;
						$('#join_login_id_error').hide();
						btn_on();
						
					}

				},
				error : function(error){
					alert("서버 오류 입니다.");
				}
			
			});
			
		}
		
	});
	
	$(document).on('keyup', '#join_pswd', function(){
		
		
		var pw = $('#join_pswd').val();
		 var num = pw.search(/[0-9]/g);
		 var eng = pw.search(/[a-z]/ig);
		 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		
		
		if(pw.length < 8 || pw.length>15){
			
			
			check2 = false;
			$('#join_pswd_error').show();
			btn_on();
			
		} else if(pw.search(/\s/) != -1){

			check2 = false;
			$('#join_pswd_error').show();
			$('#join_pswd_error').text("공백은 사용할 수 없습니다.");
			btn_on();
		}else if(num < 0 || eng < 0 || spe < 0 ){
			check2 = false;
			$('#join_pswd_error').show();
			$('#join_pswd_error').text("영문,숫자,특수문자를 각각 1자리 이상 포함해주세요.");
			btn_on();
			
		}else{
			check2 = true;
			$('#join_pswd_error').hide();
			btn_on();
		}
		
	});
	
	$(document).on('keyup', '#join_pswd_check', function(){
		
		if($('#join_pswd_check').val() != $('#join_pswd').val()){
			check3 = false;
			$('#join_pswd_check_error').show();
			btn_on();
			
		}else{
			check3 = true;
			$('#join_pswd_check_error').hide();
			btn_on();
		}
		
	});
	
	$(document).on('keyup', '#join_nickname', function(){
		
		if($('#join_nickname').val().length < 6){			
			check4 = false;
			$('#join_nickNm_error').show();
			btn_on();
			
		}else{
			
			var checkNick = $('#join_nickname').val();
			
			$.ajax({
				
				url : 'checkNick.action',
				type : 'post',
				data : {
					checkNick : checkNick
				},
				success : function(data){
					if(data == 1){
						check4 = false;
						$('#join_nickNm_error').show();
						$('#join_nickNm_error').text("중복된 닉네임 입니다.");
						btn_on();
						
												
					}else{
						check4 = true;
						$('#join_nickNm_error').hide();
						btn_on();
					}
					
					
				},
				error : function(error){
					alert("서버 오류 입니다.");
				}

			});
		}
	});
	
	$(document).on('keyup', '#join_email_id', function(){
		
		var checkEmail = $('#join_email_id').val();
		
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if(checkEmail.match(regExp)!= null){
			check5 = true;
			$('#join_email_error').hide();
			btn_on();
		}else{
			check5 = false;
			$('#join_email_error').show();
			$('#join_email_error').text("올바른 이메일을 입력해주세요");
			btn_on();
		}
		
	});
	
	
});

function sendIt(){

	f = document.myForm;

	f.action = "<%=cp%>/addInfo_ok.action";
	f.submit();
}

</script>




</head>
<body class="body login srch isPc gnb_ac">
<div>



<div class="wrap" id="wrap">

<header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;"><!-- 크롬 패스워드 자동완성 방지 -->
	<div class="hdr">
		<div class="inr">
			<div class="tdt">
				<ul class="menu">					
					<li><a href="/join/indexTerms?header=Y" class="bt">회원가입</a></li>
		                <li><a href="javascript:clickLogin();" class="bt">로그인</a></li>
		                <!-- <li><a href="javascript:;" class="bt">로그인/회원가입</a></li> -->
					<li><a href="javascript:goEvent();" class="bt">이벤트</a></li>
						<li class="custo">
							<a href="javascript:;" class="bt">고객센터</a>
							<div class="sbm">
								<ul class="sm">
									<li><a href="/customer/faq/faqList" class="bt">FAQ</a></li>
									<li><a href="/customer/inquiry/inquiryView" class="bt">고객 문의</a></li>
									<li><a href="/customer/notice/indexNoticeList" data-url="/customer/notice/indexNoticeList" data-content="" class="bt">공지사항</a></li>
								</ul>
							</div>
						</li>
					</ul>
			</div>
			<div class="hdt">
				<!-- mobile -->
				<button class="mo-header-btnType02">취소</button><!-- on 클래스 추가 시 활성화 -->
				<!-- // mobile -->
				<button class="btnGnb" type="button">메뉴</button>

				<h1 class="logo tv">
					<a class="bt" href="javascript:goShopDeleteCookie();">AboutPet</a>
				</h1>
				<!-- -->
				<!-- mobile -->
				<button class="mo-header-backNtn" onclick="storageHist.goBack();">뒤로</button>
					<div class="mo-heade-tit">
					<span class="tit"></span>
								</div>
				<div class="mo-header-rightBtn">
						<button class="mo-header-btnType01">
							<span class="mo-header-icon"></span>
							</button>
					</div>
				<button class="mo-header-close"></button>
				<!-- // mobile -->
				<nav class="tmenu">
					<ul class="list">
				<li id="liTag_20" class=""><a href="/tv/home/" class="bt">TV</a></li>
						<li id="liTag_30" class=""><a href="/log/home/" class="bt">로그</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_10" class=""><a href="/shop/home/" class="bt">스토어</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class=""><a href="/mypage/indexMyPage/" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt">
						<div class="schs">
								<div class="form ">
									<div class="input del kwd"><input id="srchWord" name="srchWord" type="search" value="" autocomplete="off" placeholder="검색어를 입력해주세요."></div>
									<button type="button" class="btnSch" data-content="" data-url="/commonSearch">검색</button>
									<!-- 자동완성 드롭박스 -->
									<div class="key-word-list" id="key-word-list" style="display:none;"><ul></ul></div>
									<!-- 자동완성 드롭박스 -->
								</div>
							</div>
						<div class="menu">
							<button id="alertBtn" class="bt alim  " type="button">알림</button>
							<button class="bt cart" type="button" onclick="location.href='/order/indexCartList/'">
									</button>
							<button id="srchClsBtn" class="bt close" type="button" style="display: none;" onclick="searchCommon.srchClsBtn();">닫기</button>
							<div class="alims" id="alertDiv">
							</div>
						</div>
						</div>
</div>
	</div>
</header>



<div class="layers">
			<!-- 레이어팝업 넣을 자리 -->
			<!-- 등급안내 팝업 추가 2021.05.13 -->
			<article class="popLayer a popLank " id="popLank">
				<div class="pbd">
					<div class="phd">
						<div class="in">
							<h1 class="tit"></h1>
							<button type="button" class="btnPopClose">닫기</button>
						</div>
					</div>
					<div class="pct">
						<main class="poptents">
							<div class="rankCont">
								<div class="rank_imgBox rank_pc">
											<img src="/_images/common/img-level-pc.png" alt="어바웃펫 패미리 등급별 혜택 이미지">
										</div>
									</div>
						</main>
					</div>
				</div>
			</article>
			<!-- //등급안내 팝업 추가 2021.05.13 -->
</div>

		

<div class="wrap" id="wrap">

<main class="container page login srch" id="container">
	
	<div class="inr" style="min-height: 850px;">
	<form action="" name="myForm" method="post">
	
		<div class="contents" id="contents">
			<div class="userPlus">
				<h2>회원가입</h2>
			</div>
			
			<div class="fake-pop">
				<div class="pct">
					<div class="poptents">
						
			

						<div class="member-input">
							<ul class="list">
								<li>
									<strong class="nametag">아이디</strong>
									<p class="info">필수입력정보</p>
									<div class="input">
									
									<input type="text"  placeholder="6자 이상 입력해주세요." name="userId" class="check_input" id="join_login_id"
									maxlength="40">
									</div>
									<p class="validation-check"  id="join_login_id_error">6~40자 이내로 입력해주세요.</p>
								</li>
								
								<li>
									<strong class="nametag">비밀번호</strong>
									<div class="input">
									<input type="password" placeholder="영문, 숫자, 특수문자 포함 8자 이상" name="userPwd" class="check_input" id="join_pswd"
									maxlength="15">
									</div>
									<p class="validation-check" id="join_pswd_error" >8~15자 이내로 입력해주세요</p>
								</li>
								
								<li>
									<strong class="nametag">비밀번호 확인</strong>
									<div class="input">
									<input type="password" placeholder="비밀번호를 다시 한번 입력해주세요."  class="check_input" id="join_pswd_check"
									maxlength="15" name="pwdChk" >
									</div>
									<p class="validation-check" id="join_pswd_check_error" >정확히 입력해주세요.</p>
								</li>
								<li>
									<strong class="nametag">닉네임</strong>
									<div class="input">
									<input type="text" placeholder="닉네임을 입력해주세요." name="userNick" class="check_input" id="join_nickname"
									maxlength="20">
									</div>
									<p id="join_nickNm_error" class="validation-check">닉네임을 입력해주세요.</p>
								</li>
								<li>
									<strong class="nametag">이메일</strong>
									<div class="input">
									<input type="text" placeholder="이메일을 입력해주세요." name="userMail" class="check_input" id="join_email_id"
									maxlength="40">
									</div>
									<p class="validation-check" id="join_email_error">메일주소를 입력해주세요.</p>
								</li>
							
							
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
		<div>
		
			<div>				
				<button disabled="disabled" class="btn_off">다음</button>
			</div>
			
			<div style="display: ">
				<button onclick="sendIt()" class="btn_on">다음</button>
			
			</div>
		
		
		</div>
	</form>
	</div>
	
</main>
</div>
</div>
<!-- footer -->
</div>

	
	



</body>
</html>