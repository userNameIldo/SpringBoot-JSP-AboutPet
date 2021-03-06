<%@ page  contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String userId = (String)request.getAttribute("userId");
	String userMail = (String)request.getAttribute("userMail");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css"/>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<style type="text/css">

.sendM{
word-wrap: break-word;
    word-break: keep-all;
    -webkit-text-size-adjust: none;
    letter-spacing: -0.2px;
    font-family: "Roboto", "Apple SD Gothic Neo", "NotoSansKR", "Malgun Gothic", "BaseLine", Tahoma, "Dotum", "sans-serif", "apple color emoji", "segoe ui emoji", "noto color emoji", "android emoji", "emojisymbols", "emojione mozilla", "twemoji mozilla", "segoe ui symbol";
    list-style: none;
    box-sizing: border-box;
    outline: none !important;
    margin: 0;
    max-height: 1000000px;
    -webkit-tap-highlight-color: transparent;
    border: 1px solid #dddddd;
    background: #ffffff;
    overflow: hidden;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    vertical-align: middle;
    cursor: pointer;
    white-space: nowrap;
    border-radius: 4px;
    line-height: 1;
    text-decoration: none;
    height: 48px;
    padding: 0 10px;
    font-size: 15rem;
    margin-left: 10px;
    padding-left: 13px;
    padding-right: 13px;
    font-weight: 700;
    min-width: 100px;
    color: #000;}

.tit{
    word-wrap: break-word;
    word-break: keep-all;
    color: #000000;
    line-height: 1.6;
    -webkit-text-size-adjust: none;
    letter-spacing: -0.2px;
    font-family: "Roboto", "Apple SD Gothic Neo", "NotoSansKR", "Malgun Gothic", "BaseLine", Tahoma, "Dotum", "sans-serif", "apple color emoji", "segoe ui emoji", "noto color emoji", "android emoji", "emojisymbols", "emojione mozilla", "twemoji mozilla", "segoe ui symbol";
    white-space: normal;
    -webkit-tap-highlight-color: transparent;
    list-style: none;
    box-sizing: border-box;
    outline: none !important;
    margin: 0;
    padding: 0;
    border: 0;
    max-height: 1000000px;
    display: inline-block;
    font-size: 14rem;
    font-weight: 700;
    position: relative;
    padding-right: 10px;
    margin-bottom: 4px;}







</style>
<script type="text/javascript">


	function sendIt() {
	
		var f = document.myForm;
		
		f.action = "/findPwd_ok.action";
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
		
	<div class="inr" style="min-height: 1229px;">
		<!-- ?????? -->
		<div class="contents" id="contents">
			<!-- PC ????????? ??????????????? ??????  -->
			<div class="pc-tit">
				<h2>???????????? ??????</h2>
			</div>
			<!-- // PC ????????? ??????????????? ??????  -->
			<!-- ??????????????? (????????? ?????? top) -->
			<div class="fake-pop top">
				<div class="result">
					<span class="blue">????????????</span>??? ???????????? ?????????????
					<p class="sub">???????????? ??? ??????????????? ?????? ??????????????????.</p>
				</div>
			</div>
			<section class="sect petTabContent">
				<!-- ????????? -->
				<ul class="uiTab a mt50">
					
					<li class="active">
						<a class="bt" href="javascript:;" data-content="" data-url=""><span>???????????? ??????</span></a>
					</li>
				</ul>
				<!-- ????????? -->
				<div class="uiTab_content">
					<ul style="left: 0%;">
					
						<li style="min-height: 1110px;" class="active">
							<!-- ??????????????? -->
							<div class="member-input email mt30">
							<form id="login_id_find_email_form" name="myForm" method="post"> 							
								<ul class="list">
									<li>
										<strong class="tit">?????????</strong>
										<div class="input">
											<input type="text" id="userId" name="userId" placeholder="???????????? ??????????????????" maxlength="40" style="padding-right: 29px;"> 
										</div>
										<p class="validation-check" id="loginId-error" style="display: none;">???????????? ??????????????????</p>
									</li>
									<li>
										<strong class="tit">?????????</strong>
										<div class="input" style="display: flex;">
											<input type="text" id="userMail" name="userMail" placeholder="???????????? ??????????????????">
											<input type="button" onclick="sendIt();" class="sendM" id="sendBtn" value="??????"> 
											
										</div>
										<p class="validation-check" id="email-error" style="display: none;">???????????? ??????????????????</p>
									</li>
									<li id="ctfArea" style="display: none;">
										<strong class="tit">????????????</strong>
										<div class="input flex" data-txt="????????????">
											<input type="text" id="ctfNoInp" placeholder="???????????? 6?????? ??????">
											<div class="inputInfoTxt time" id="crtfCountDownArea">00:00</div>
											<a href="javascript:fncCheckOtp();" class="btn md" data-content="" data-url="">?????? ??????</a>
										</div>
										<p class="validation-check" id="otp-error" style="display: none;">??????????????? ?????? ??????????????????.</p>
									</li>
								</ul>
								</form>
							</div>
						</li>
					</ul>	
				</div>
			</section>
			
			<style>
				#ctfArea input{padding-right: 45px !important;}
			</style>
		</div>
	</div>
</main>

</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>