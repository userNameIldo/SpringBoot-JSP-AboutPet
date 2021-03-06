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
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css"/>
<link rel="stylesheet" type="text/css" href="resources/_css/login.css"/>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	window.onload = function(){
		
		$(".red_err").hide();
		$(".button_on").hide();
		
	}
	
	var check1 = false;
	var check2 = false;
	
	function btn_on(){
		
		if(check1 == false || check2 == false){
			
			$(".button_off").show();
			$(".button_on").hide();
			
		}else{
			
			$(".button_off").hide();
			$(".button_on").show();
			
		}
	}
	
	$(document).on('keyup', '.userId', function(){
		
		if($('.userId').val().length < 2){
			
			check1 = false;
			btn_on();
			
		}else{
			
			check1 = true;
			btn_on();
		}
		
	});
	
	$(document).on('keyup', '.userPwd', function(){
		
		if($('.userPwd').val().length < 2){
			
			check2 = false;
			btn_on();
			
		}else{
			check2 = true;
			btn_on();
		}
		
	});
	
});

function sendIt(){

	var userId = $(".userId").val();
	var userPwd = $(".userPwd").val();

	$.ajax({
		url : '/login_ok.action',
		type : 'post',
		data : {
			
			userId : userId,
			userPwd : userPwd
			
		},
		success : function(data){
			
			if(data == 1){
				
				location.href="/list.action";
				
			}else if(data == 2){
				
				$(".red_err").show();
								
			}

		},
		error : function(error){
			alert(error);
			console.log(error);
			
		}
		
	});
	

}

</script>
<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>


</head>
<body class="body login srch isPc gnb_ac">
<div class="wrap" id="wrap">
<header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;"><!-- ?????? ???????????? ???????????? ?????? -->
	<div class="hdr">
		<div class="inr">
			<div class="tdt">
				<ul class="menu">					
					<li><a href="/join/indexTerms?header=Y" class="bt">????????????</a></li>
		                <li><a href="javascript:clickLogin();" class="bt">?????????</a></li>
		                <!-- <li><a href="javascript:;" class="bt">?????????/????????????</a></li> -->
					<li><a href="javascript:goEvent();" class="bt">?????????</a></li>
						<li class="custo">
							<a href="javascript:;" class="bt">????????????</a>
							<div class="sbm">
								<ul class="sm">
									<li><a href="/customer/faq/faqList" class="bt">FAQ</a></li>
									<li><a href="/customer/inquiry/inquiryView" class="bt">?????? ??????</a></li>
									<li><a href="/customer/notice/indexNoticeList" data-url="/customer/notice/indexNoticeList" data-content="" class="bt">????????????</a></li>
								</ul>
							</div>
						</li>
					</ul>
			</div>
			<div class="hdt">
				<!-- mobile -->
				<button class="mo-header-btnType02">??????</button><!-- on ????????? ?????? ??? ????????? -->
				<!-- // mobile -->
				<button class="btnGnb" type="button">??????</button>
<!-- -->
				<h1 class="logo tv">
					<a class="bt" href="javascript:goShopDeleteCookie();">AboutPet</a>
				</h1>
				<!-- -->
				<!-- mobile -->
				<button class="mo-header-backNtn" onclick="storageHist.goBack();">??????</button>
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
						<li id="liTag_30" class=""><a href="/log/home/" class="bt">??????</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_10" class=""><a href="/shop/home/" class="bt">?????????</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class="active"><a href="/mypage/indexMyPage/" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt">
						<div class="schs">
								<div class="form ">
									<div class="input del kwd"><input id="srchWord" name="srchWord" type="search" value="" autocomplete="off" placeholder="???????????? ??????????????????."></div>
									<button type="button" class="btnSch" data-content="" data-url="/commonSearch">??????</button>
									<!-- ???????????? ???????????? -->
									<div class="key-word-list" id="key-word-list" style="display:none;"><ul></ul></div>
									<!-- ???????????? ???????????? -->
								</div>
							</div>
						<div class="menu">
							<button id="alertBtn" class="bt alim  " type="button">??????</button>
							<button class="bt cart" type="button" onclick="location.href='/order/indexCartList/'">
									</button>
							<button id="srchClsBtn" class="bt close" type="button" style="display: none;" onclick="searchCommon.srchClsBtn();">??????</button>
							<div class="alims" id="alertDiv">
							</div>
						</div>
						</div>
</div>
	</div>
</header>

	<main class="container page login srch" id="container">
		<div class="inr" style="min-height: 855px;">
			<div class="contents" id="contents">
			<div class="pc-tit">
				<h2>?????????</h2>		
			</div>
			<div class="fake-pop">
				<form class="form_login" id="login-form" name="myForm">
				<div class="pct">
					<div class="poptents">
						<div class="member-input">
							<ul class="list">
								<li>
									<div  class="input">
										<input type="text" class = "userId" name="userId" placeholder="?????????" maxlength="40" class="">
									</div>
								</li>
								<li>
									<div class="input">
										<input type="password" class = "userPwd" name="userPwd" placeholder="????????????" maxlength="15" class="">
									</div>
									<p class="red_err">
									????????? ?????? ??????????????? ?????? ??????????????????
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="check-wrap">
					<label>
						<input type="checkbox" name="keep">
						<span class="save_id">????????? ??????</span>
					</label>
				</div>
			
				
				<div class="pbt pull">  <!-- ????????? -->
					<div class="btnSet"> 
						<input type="button" class="button_on" onclick="sendIt()" value="?????????"/>
					</div>
					<div class="btnSet"> 
						<input type="button" class="button_off" value="?????????"/>
					</div>
				
				</div>
				</form>
				<div> <!-- ?????? -->
					<a href="">????????? ??????</a>
					<a href="">???????????? ??????</a>
					<a href="">????????????</a>
				</div>
				<dl>
					<dt>?????? ?????????</dt>
					<dd>
					<span><a class="naver" href="javascript:snsLogin(10);" data-content="" data-url="">?????????</a></span>
					<span><a class="kakao" href="javascript:snsLogin(20);" data-content="" data-url="">????????????</a></span>
					<span><a class="google" href="javascript:snsLogin(30);" data-content="" data-url="">??????</a></span>
					<span><a class="apple" href="javascript:snsLogin(40);" data-content="" data-url="">??????</a></span>
					
					</dd>
				</dl>
			
			</div>

			</div>
		
		</div>
	
	
	
	</main>



</div>
</body>
</html>