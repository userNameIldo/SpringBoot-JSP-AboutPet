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
<link rel="stylesheet" type="text/css" href="resources/_css/chk.css">


<script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60=" crossorigin="anonymous"></script>

</head>
<body class="body login srch agree isPc gnb">

	
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
<!-- -->
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
	<main class="container page login srch agree" id="container">
	<div class="inr" style="min-height: 1059px;">
		<div class="contents" id="contents">
	
			<div class="pc-tit">
				<h2>회원가입</h2>
			</div>
			
			<div class="fake-wrap">
				<div class="result">
					<span class="blue">서비스 이용약관에 동의</span>해주세요.
				</div>
				<div class="chk-wrap">
					<dl>
						<dt class="chkA">
							<label class="chkB">
								<input type="checkbox" >
								<span class="txt" >약관 전체동의</span>
							</label>
						</dt>
						<dd>
							<ul>
								<li>
								<label class="chkS">
								<input type="checkbox" /> <span class="">
											[필수] 서비스 이용약관 </span>
								</label> <a href="">></a></li>
								<li><label class="chkS"> <input type="checkbox" /> <span>
											[필수] 개인정보 처리 방침 </span>
								</label> <a href="">></a></li>
								<li><label class="chkS"> <input type="checkbox" /> <span>
											[필수] 만 14세 이상입니다. </span>
								</label> <a href="">></a></li>
								<li><label class="chkS"> <input type="checkbox" /> <span>
											[필수] 개인정보 수집/이용 동의 </span>
								</label> <a href="">></a></li>
								<li><label class="chkS"> <input type="checkbox" /> <span>
											[선택] 위치정보 동의 </span>
								</label> <a href="">></a></li>
								<li><label class="chkS"> <input type="checkbox" /> <span>
											[선택] 마케팅정보 수신 동의 </span>
								</label> <a href="">></a></li>
							</ul>
						</dd>
					</dl>
				</div>
				<div class="info-txt pd" style="padding:10px 0px 10px 0px;font-size:12px;">
	
					약관 전체동의는 필수 및 선택 정보에 대한 동의도 포함되어 있으며, 개별적으로 동의를 선택하실 수 있습니다.
	
					<ul style="margin-top: 10px;">
						<li>필수항목에 대해서는 동의 거부시 회원가입이 어려우며, 선택항목에 대해서는 동의 거부시에도 서비스 이용이
							가능합니다.</li>
					</ul>
	
				</div>
				<div class="pbt fixed">
					<!-- 버튼 활성화시 -->
					<div class="bts" id="activeBtn" style="display:none;">
						<input type="button" class="btn xl a" value="가입하기" onClick="location.href='/addInfo.action'"/>
					</div>
					<!-- 버튼 비활성화시 -->
					<div class="bts" id="inactiveBtn">
						<button type="button" class="btn xl gray a" onClick="location.href='/addInfo.action'">가입하기</button>
					</div>
				</div>
		
			</div>
		</div>
		</div>
	</main>
		


	</div>





</body>
</html>