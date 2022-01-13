<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
 <link rel="stylesheet" type="text/css" href="resources/_css/list.css">
<title>Insert title here</title>

<script type="text/javascript">
</script>
</head>
<body>

	<main class="container page logmain" id="container">
		<div class="inr" style="min-height: 854.047px;"> 
			<div class="contents log main" id="contents"> 

				<div id="box_item">
				
				<!-- 페이지 index숫자만큼 반복  여기서부터 -->
				
				
					<div id="petLogMainList">
					
					<!-- 5개씩 반복 -->
						<c:forEach var="dto" items="${lists}">
						<div id="pSection" name="pSection">
					<section class="logContentBox" id="71680" data-new-yn="Y">
<!-- 이미지/동영상 영역 : S -->
								
						<div class="lcbPicture" style="height:800px;">
					
						<a href="${articleUrl }&num=${dto.num}"> 
						<!-- 여기에 이미지   뒤에 savename, 가붙음 -->
									<img src="upload/${dto.saveName }" 
									class="tempImgSize" style="position:relative;height:799px;"></a>
									</div>
									<!-- 이미지/동영상 영역 : E -->					
					
					<div class="lcbWebRconBox">					
<!-- user content -->
						<div class="lcbConTxt">
							<!-- userInfo -->
								<div class="userInfo ">
								<!-- 프로필 사진 클릭시 프로필로 이동 S-->
											<div class="pic" onclick="">
									<img src="/profile/${dto.profile }" alt="dog">
									</div>
									<!-- 프로필  이동 E -->
								<div class="con" id="pCon">
									<div class="txt">
									<a class="nickname" href="userPage.action?userName=${dto.userName }">${dto.userNick }</a>
										<span class="dotIcon2x2 onWeb_ib"></span> 
									<span class="time"> ${dto.created } </span>
									</div>
								</div>
								<!-- select box -->
								<div class="menu dopMenuIcon" onclick="ui.popSel.open(this,event)">
									<div class="popSelect r">
										<input type="text" class="popSelInput">
										<div class="popSelInnerWrap" style="height: 0px;">
											<ul>
												<li><a class="bt" href="javascript:layerPetLogReport('71680','', '','Y');" id="btRptp_71680"><b class="t">신고</b></a></li>
															</ul>
										</div>
									</div>
								</div>
								<!-- // select box -->
							</div>
							<!-- // userInfo -->
							<!-- content txt -->
					<div class="lcbConTxt_content" >${dto.content }
 
						<a href="/log/indexPetLogTagList?tag=%EC%83%81%ED%92%88%ED%9B%84%EA%B8%B0" style="color:#669aff;">#후기</a>
					
					</div>
					<!-- // content txt -->
						</div>
						<!-- // user content -->
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
						
<!-- 댓글 -->
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
						
						</c:forEach>

</body>
</html>