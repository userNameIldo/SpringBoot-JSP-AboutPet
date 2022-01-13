<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script type="text/javascript">

let isLoading = false;
let currentPage = ${currentPage};
$(window).on("scroll", function(){		
	
	let $window = $(this);
	let scrollTop = $window.scrollTop();
	let windowHeight = $window.height();
	let documentHeight = $(document).height();
	
	if(scrollTop + windowHeight + 30 > documentHeight){
		if(currentPage == ${totalPage}){
			return;
		}
		
		isLoading = true;
		
		currentPage++;
		
		GetList(currentPage);
	}


});

function GetList(currentPage){
	
	var userName = '${userName}';
	
	$.ajax({
	
		url : 'moreUserPage.action',
		method : "get",
		data : {
			"pageNum" : currentPage,
			"userName" : userName
		},
		success : function(data){

			$('#myPetLogList').append(data);
			
		},
		error : function(error){
			
			console.log(error);
			
		}
		
		
	});
	
	
	
}

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<!--   <link rel="stylesheet" type="text/css" href="resources/_css/comUserPage.css"> -->



</head>
<body class="body logmain isPc gnb_ac isTalk isFoot" >
<div class="wrap" id="wrap">
<header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;"><!-- 크롬 패스워드 자동완성 방지 -->
	<div class="hdr">
		<div class="inr">
			<div class="tdt">
				<div class="usr">
						<a class="rank_icon" href="javascript:rankBox();"><em class="lv welcome">웰컴</em></a>
							<a href="javascript:;" class="name"><b class="t">sk62171</b><i class="i">님</i></a>
						<div class="sbm">
							<ul class="sm">
							<li><a href="/mypage/info/indexPswdUpdate" data-content="1011662" data-url="/mypage/info/indexPswdUpdate" class="bt">비밀번호 설정</a></li>
									<li><a href="/mypage/info/indexManageDetail" data-content="1011662" data-url="/mypage/info/indexManageDetail" class="bt">회원정보 수정</a></li>
									<li><a href="/logout" data-content="1011662" data-url="/logout" class="bt">로그아웃</a></li>
								</ul>
						</div>
					</div>
				<ul class="menu">					
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
<div class="inr" style="min-height: 978.047px;">
	<div class="contents log my" id="contents">
		<div id="myPetLogListInfo" class="mylog_area info">
			<div class="mylog_area_innerWrap">
				<div class="mylog_userInfo">
					<div class="mylog_user">
						<div class="pic">
							<a>
								<img src="profile/${mdto.saveName }" alt="">
							</a>
						</div>
						<div class="profile">
							<div class="nick scroll_tit_ac ">
								<span>${mdto.userNick }</span>
							</div>
							<div class="pro_btn scroll_move_wrap">
								
								<a href="" onclick="saveFollowMapMember('927227', 'I', this);" id="follow" class="btn a">팔로우</a>
								<button class="logBtnBasic btn-share" data-message="링크가 복사되었어요" data-title="모모군" title="COPY URL" onclick="sharePetLog('927227', this.id, 'M');" id="share_4929A183B6" data-clipboard-text="">
									<span>공유</span>
									</button>
							</div>
						</div>
					</div>
					<div id="petLogIntrdc" class="txt" style="white-space: pre-line;"></div>
					<div class="mylog_contents">
							<ul>
								<li>
									<a>
									<div class="tit">게시물</div>
									<div class="num">${count }</div>
									</a>
								</li>
							</ul>
						</div>			
				</div>
			</div>
		</div>
		<div class="mylog_area con">
			<div class="logPicMetric only3">
				
				<ul id="myPetLogList" style="padding-bottom: 0px;">
					<c:forEach var="dto" items="${lists }">
						<c:set var="saveName" value="${fn:split(dto.saveName , ',')}">
						</c:set>
							<c:forEach var="Name" items="${saveName}" varStatus="status" end="0">
							<li name="myPetLogli" style="height: 259px;">
								${status.count }
								<a href="myList.action?num=${dto.num }" class="logPicBox">
								<img src="upload/${Name }" alt="" style="height: 259px;"></a>
							</li>
							</c:forEach>					
					</c:forEach>	
				</ul>
			
			</div>
		
		
		</div>
	
	
	
	</div>




</div>

</main>
</div>

</body>
</html>