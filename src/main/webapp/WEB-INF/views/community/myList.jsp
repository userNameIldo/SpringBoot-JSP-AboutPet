<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String pictureName[] = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<!-- 
<link rel="stylesheet" href="resources/css/style.css" type="text/css"/>
<link rel="stylesheet" href="resources/css/list.css" type="text/css"/>
 -->
 <script type="text/javascript" src="resources/js/jquery.bxslider.js"></script>
 <link rel="stylesheet" type="text/css" href="resources/_css/jquery.bxslider.css">
 <link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
 <link rel="stylesheet" type="text/css" href="resources/_css/list.css">
<style type="text/css">
.tempImgSize{
	border-radius: 15px 0 0 6px;
}
</style>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.searchForm;
		
		f.action = "<%=cp%>/list.action";
		f.submit();
		
	}
	function openComment(no){
		
		var no;

		$("#pop_" + no).attr("class", "commentBoxAp logcommentBox pop1 open ton");
		
		$.ajax({
			url : 'commentList.action',
			type : 'post',
			data : {
				no : no
			},
			success : function(data){
				
				var sp = '';
				
				for(var i=0 in data){
					
					console.log(data[i].profile);
					
					sp += '<li>';
					sp += '<div class="pic"><img src="/profile/' + data[i].profile + '" alt=""></div>';
					sp += '<div class ="tit"><span style="cursor:pointer;">' + data[i].userNick +'</span></div>';
					sp += '<div class="txt" id="aply_">' + data[i].contents + '</div>';
					sp += '<div class="date"></div>';
					sp += '<div class="date" id="modify_">' + data[i].created + '</div>';
					
				} 

				
				$(".commendListBox."+no).html(sp);

				
			},
			error : function(error){
				
				alert(error);
				
			}
			
			
		});
		
	}

		$(document).ready(function(){
			
			window.onload = function(){
				
			}
			
			$('.ac').click(function(){
				
				var no = $(this).attr("idx");
				var contents = $('#reply_'+no).val();
				
				contents = contents.trim();
				
				if(contents == null || contents == ""){
					
					return;	
					
				}else{
				
				$.ajax({
					
					url : 'saveComment.action',
					type : 'post',
					data : {
						
						no : no,
						contents : contents
						
					},
					success : function(data){
						
						
						$('#reply_' + no).val('');
						openComment(no);
						
					},
					error : function(data){
						
						
					}				
					
				});
				
				}
				
			});
			
			//북마크
			$('.logBtnBasic.btn-bookmark').click(function(){
				
				if($(this).hasClass("true")){
					var no = $(this).attr("idx");
					$.ajax({
						url : 'cancleZzim.action',
						type : 'post',
						data : {
							no : no
						},
						success : function(data){
						
							alert(data);
							
						},
						error : function(error){
							
							console.log(error);
							
						}
						
					});
					
					$(this).attr('class', '.logBtnBasic btn-bookmark false');
					
				}else{
					var no = $(this).attr("idx");
					$.ajax({
						url : 'saveZzim.action',
						type : 'post',
						data : {
							
							no : no
							
						},
						success : function(data){

							alert(data);
							
						},
						error : function(error){
							
							console.log(error);
							
						}
						
					});
					
					$(this).attr('class', '.logBtnBasic btn-bookmark true');
				}
					
				
				
				
			});	
			
			$('.like_btn').click(function(){
				//좋아요 삭제
				if($(this).hasClass("true")){
					var no = $(this).attr("idx");
					$.ajax({
						url : 'cancleLike.action',
						type : 'post',
						data : {
							no : no
						},
						success : function(data){
						
							$('#like_' + no).val(data);
							
						},
						error : function(error){
							
							console.log(error);
							
						}
						
					});
					
					$(this).attr('class', '.like_btn false');
					
				}else{
					var no = $(this).attr("idx");
					$.ajax({
						url : 'saveLike.action',
						type : 'post',
						data : {
							
							no : no
							
						},
						success : function(data){

							$('#like_' + no).val(data);
							
						},
						error : function(error){
							
							console.log(error);
							
						}
						
					});
					
					$(this).attr('class', '.like_btn true');
					
				}			
				
				
			});	
			
			
		});
	
	$(document).ready(function(){
		
		$('.bxslider').bxSlider({
			
			infiniteLoop:false,
			hideControlOnEnd:true,
			autoControls:true,
			pager:true,
			pagerType:'short'
			
		});
		
	});
	
	

</script>

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
	

	

<!-- 사진  -->
	<main class="container page logmain" id="container">
		<div class="inr" style="min-height: 854.047px;"> 
			<div class="contents log main" id="contents"> 
			
				<section class="log_listviewTop">
					<div class="pic" onclick="">							
						<img alt="" src="profile/${mdto.saveName }">
					</div>
					<h1><a href="/userPage.action?userName=${mdto.userId }">${mdto.userNick }</a></h1>
				</section>
				<div name="petLogListView">
					<div id="list-Box">
						<div name="petLogListView">
						<!-- 글가져오는곳 -->
							<section class="logContentBox" style= "margin-top: 20px;">
							<div class="lcbPicture" style="height:800px;">
								<ul class="bxslider">
						<c:set var="saveName" value="${fn:split(dto.saveName,',')}">
							</c:set>
							
							<c:forEach var="Name" items="${saveName}">
							<li class="swiper-slide">	
								<div class="inr">
								<img alt="1" src="upload/${Name }" class="tempImgSize" style="position:relative;height:799px;">
								<!--  <a href="${articleUrl }&num=${dto.num}"> </a>-->
								</div>
							</li>
							</c:forEach>
						</ul>
							</div>
							
							
							<div class="lcbWebRconBox">
								<div class="lcbConTxt">
									<div class="userInfo  ">
										<div class="pic">
											<img alt="" src="profile/${mdto.saveName }">
										</div>
										<div class="con">
											<div class="txt">
												<a class="nickname" href="/userPage.action?userName=${mdto.userId }" data-orgin-nick="닉네임">${mdto.userNick }</a>										
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
 
										<a href="/log/indexPetLogTagList?tag=%EC%83%81%ED%92%88%ED%9B%84%EA%B8%B0" style="color:#669aff;">#태그</a>
									</div>
							<!-- // content txt -->
								</div>
<!-- menu bar -->
								<div class="lcbmenuBar">
							<div class="inner">
								<ul class="bar-btn-area">
									<li class="checkLike">
									<c:choose>										
											<c:when test="${!empty userId}">
												<c:choose>
													<c:when test="${dto.checklike eq 'true' }">
														<input type="button" id="like_${dto.num }" idx = "${dto.num }" class="like_btn true" value="${dto.likes }" />														
													</c:when>
													<c:otherwise>
														<input type="button" id="liks_${dto.num }" idx = "${dto.num }"  class="like_btn false"  value="${dto.likes }" />
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<input type="button" id="${dto.num }" class="like_btn login" onclick="location.href='/login.action'" value="${dto.likes }" />									
											</c:otherwise>
									</c:choose>
									</li>
									<li>
									<!-- 댓글 버튼 -->
										<input type="button" id="com_${dto.num }" idx="${dto.num }" class="logBtnBasic btn-comment" onclick="openComment(${dto.num})" value="${dto.countComment }" />														
									</li>
										<li class="ml20" id="bookBtn_${dto.num }">
											<c:choose>										
											<c:when test="${!empty userId}">
												<c:choose>
													<c:when test="${dto.checkzzim eq 'true' }">
														<input type="button" id="book_${dto.num }" idx = "${dto.num }" class="logBtnBasic btn-bookmark true" value="북마크" />														
													</c:when>
													<c:otherwise>
														<input type="button" id="book_${dto.num }" idx = "${dto.num }"  class="logBtnBasic btn-bookmark false"  value="북마크" />
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<input type="button" id="${dto.num }" class="logBtnBasic btn-bookmark login" onclick="location.href='/login.action'" value="북마크" />									
											</c:otherwise>
											</c:choose>
										</li>
									</ul>
								
								</div>
						</div>
							<!-- // menu bar -->
								<div class="commentBoxAp logcommentBox pop1" id="pop_${dto.num }">
								<div class="head t2">
								<div class="con">
									<div class="tit">
										댓글
										<span class="price-box">${dto.countComment }</span>
									</div>
									<a href="" class="close" onclick=""></a>
								</div>
							</div>
							<div class="con t2">
							<div class="box inf">
								<div class="commendListBox">
									<ul class="commendListBox ${dto.num }">
									
									</ul>
								</div>
							</div>
							<div class="input">
								<span id="reply_${dto.num }_byte"></span>
								<textarea rows="" cols="" id="reply_${dto.num }" name="reply" tabindex="1" style="padding-right:0px; height: 48px;"></textarea>
								<div class="btn_wrap">
									<input type="button" style="display: none;" value="close"/>
									<c:choose>										
										<c:when test="${!empty userId}">
											<input type="button" id="regBtn_${dto.num }" idx="${dto.num }" name="regBtn" class="ac" value="등록"/>
										</c:when>
										<c:otherwise>
											<input type="button" id="regBtn_${dto.num }" idx="${dto.num }" name="regBtn" onclick="location.href='/login.action'/" value="등록"/>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							</div>
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




































