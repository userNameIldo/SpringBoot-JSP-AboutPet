<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">

</head>
<body class="body logmain isPc gnb_ac isTalk isFoot">

<div id="wrap" class="wrap">

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
				<h1 class="logo log">
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
						<li id="liTag_30" class="active"><a href="/log/home/" class="bt">로그</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_10" class=""><a href="/shop/home/" class="bt">스토어</a></li> <!-- APET-1250 210728 kjh02  -->
						<li id="liTag_00" class=""><a href="/mypage/indexMyPage/" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt">
						<div class="schs">
								<div class="form ">
									<div class="input del kwd"><input id="srchWord" name="srchWord" type="search" maxlength="50" value="" autocomplete="off" placeholder="검색어를 입력해주세요."></div>
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
<div class="layers"></div>
<div class="layers tv seriesHome" id="gnbSrisListPopup"></div>

<main class="container page logmain" id="container">
		<div class="inr" style="min-height: 854.047px;"> 
			<div class="contents log main" id="contents"> 
			
				<section class="log_listviewTop">
					
					<h1><a href="javascript:goMyPetLog('9F85130AAF','938590');">${dto.title }</a></h1>
				</section>
				<div name="petLogListView">
					<div id="list-Box">
						<div name="petLogListView">
						<!-- 글가져오는곳 -->
							<section class="logContentBox" style= "margin-top: 20px;">
							<div class="lcbPicture" style="height:800px;">
								<img src="upload/${dto.saveName }" alt="img01" class="tempImgSize" style="position:relative;height:799px;">
							</div>
							
							
							<div class="lcbWebRconBox">
								<div class="lcbConTxt">
									<div class="userInfo  ">
										<div class="pic">
											<img src="../../_images/common/icon-img-profile-default-m@2x.png" alt="dog">
										</div>
										<div class="con">
											<div class="txt">
												<a class="nickname" href="comUserPage.action">${dto.userName }</a>										
												<span class="dotIcon2x2 onWeb_ib"></span>
												<span class="time">${dto.created }</span>
											</div>
										</div>									
									<!-- select box -->
										<div class="menu dopMenuIcon" onclick="ui.popSel.open(this,event)">
											<div class="popSelect r">
												<input type="text" class="popSelInput">
												<div class="popSelInnerWrap" style="height: 0px;">
													<ul>
														<li>
														<a class="bt" href="javascript:layerPetLogReport('75960','', '1','Y');" id="btRptp1_75960"><b class="t">신고</b>
														</a>
														</li>
													</ul>
												</div>
											</div>
										</div>
									<!-- // select box -->
									</div>
								<!-- content txt -->
									<span class="iconOm_arr"></span>
									<div class="lcbConTxt_content">${dto.content }
 
										<a href="/log/indexPetLogTagList?tag=%EC%83%81%ED%92%88%ED%9B%84%EA%B8%B0" style="color:#669aff;">#상품후기</a>
									</div>
							<!-- // content txt -->
								</div>
<!-- menu bar -->
								<div class="lcbmenuBar">
									<div class="inner">
										<ul class="bar-btn-area">
											<li id="likeBtn1_75960">
												<button class="logBtnBasic btn-like" onclick="savePetLogInterest('75960', '10', 'I', '1');">0</button>
											</li>
											<li>
												<button class="logBtnBasic btn-comment" onclick="viewReply('75960','1', this);" id="replyCnt1_75960">0</button>
											</li>
											<li>
												<button class="logBtnBasic btn-share" data-message="링크가 복사되었어요" title="COPY URL" onclick="sharePetLog('75960', this.id, 'P');" id="share1_75960" data-title="남보름" data-clipboard-text=""><span>공유</span></button>
											</li>
											<li class="ml20" id="bookBtn1_75960">
												<button class="logBtnBasic btn-bookmark" onclick="savePetLogInterest('75960', '20', 'I', '1');">
													<span>북마크</span>
												</button>
											</li>
										</ul>
										
									</div>
								</div>
							<!-- // menu bar -->
								<div class="commentBoxAp logcommentBox pop1" id="pop1_75960">
								</div>
							</div>	
								
								
								
							</section>
						</div>
					</div>
				</div>
			
			</div>
		</div>
	</main>	



</div>
</body>
</html>




































