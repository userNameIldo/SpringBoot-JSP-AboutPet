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
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<link rel="stylesheet" type="text/css" href="resources/_css/jquery.bxslider.css">
<script type="text/javascript">

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
				
				sp += '<li>${dto.num}';
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
				
				var category = $(this).attr("idt");
				
				$.ajax({
					url : 'cancleZzim.action',
					type : 'post',
					data : {
						no : no,
						category : category
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
				var no = $(this).attr("idt");
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
		
		$('.bxslider').bxSlider({
			
			infiniteLoop:false,
			hideControlOnEnd:true,
			autoControls:true,
			pager:true,
			pagerType:'short'
			
		});
		
	});

	var openComment;

	window.onload = function(){
		
		openComment = false;
		
	}
	
		

	function sendIt(){
		
		var f = document.searchForm;
		
		f.action = "<%=cp%>/list.action";
		f.submit();
		
	}

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
		
		$.ajax({
		
			url : 'moreList.action',
			method : "get",
			data : "pageNum="+ currentPage,
			success : function(data){
				
				$('#box_item').append(data);
				
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
								
								sp += '<li>${dto.num}';
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
								
								var category = $(this).attr("idt");
								
								
								$.ajax({
									url : 'cancleZzim.action',
									type : 'post',
									data : {
										no : no
									},
									success : function(data){

										alert(category);
									},
									error : function(error){
										
										console.log(error);
										
									}
									
								});
								
								$(this).attr('class', '.logBtnBasic btn-bookmark false');
								
							}else{
								var no = $(this).attr("idx");
								var category = $(this).attr("idt");
								alert(category);
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
						
						$('.bxslider').bxSlider({
							
							infiniteLoop:false,
							hideControlOnEnd:true,
							autoControls:true,
							pager:true,
							pagerType:'short'
							
						});
						
					});
				
				
			},
			error : function(error){
				
				console.log(error);
				
			}
			
			
		});
		
		
		
	}
	

</script>

<style type="text/css">
.tempImgSize{
	border-radius: 15px 0 0 6px;
}
</style>
</head>
<body class="body logmain isPc gnb_ac isTalk isFoot isTop">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div id="wrap" class="wrap">	
	<div id="bbsList_header">		
		<div id="rightHeader">
			<input type="button" value=" 글올리기 " class="btn2" 
			onclick="javascript:location.href='<%=cp%>/created.action';"/>		
		</div>	
	</div>
<!-- 사진  -->
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
								
						<div class="lcbPicture ${dto.num }" style="height:800px;">
						<div class="swiper-container logMain swiper-container-initialized swiper-container-horizontal">
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
														<input type="button" id="book_${dto.num }" idt ="community" idx = "${dto.num }" class="logBtnBasic btn-bookmark true" value="북마크" />														
													</c:when>
													<c:otherwise>
														<input type="button" id="book_${dto.num }" idt ="community" idx = "${dto.num }"  class="logBtnBasic btn-bookmark false"  value="북마크" />
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
						
						
						
						
						<section class="logLikePet" id="likePetLogList">
							<div class="logTitle_area">
								<a href="list.action;" class="logTitle arr">좋아할만한 로그</a>  <!-- APET-1250 210728 kjh02  -->
							</div>
							<div class="slideType52">
								<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
									<div class="swiper-pagination"></div>
									<ul class="swiper-wrapper slide" style="transform: translate3d(0px, 0px, 0px);">
										<li class="swiper-slide swiper-slide-active" style="width: 233.6px; margin-right: 8px;">
															<a href="javascript:goLikePetLogList(0 , 1 ,59747 );" class="petLogCardBox">
																<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/887437/5d54844b-f84c-4497-9fe4-c3637c0fe240.jpg?type=f&amp;w=670&amp;h=892&amp;quality=100&amp;align=4" alt="">
																	<div class="log_userInfoBar" id="likePetLogUserInfo" onclick="javascript:goMyPetLog('C6A5F59BEE','887437',event);">
																	<div class="pic">
																				<img src="../../_images/common/icon-img-profile-default-m@2x.png" alt="dog">
																			</div>
																		<p>덕배씨</p>
																</div>
															</a>
														</li>
												<li class="swiper-slide swiper-slide-next" style="width: 233.6px; margin-right: 8px;">
															<a href="javascript:goLikePetLogList(1 , 1 ,58117 );" class="petLogCardBox">
																<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/965276/e7aed914-6f10-4017-9136-50283b763f12.jpg?type=f&amp;w=670&amp;h=892&amp;quality=100&amp;align=4" alt="">
																	<div class="log_userInfoBar" id="likePetLogUserInfo" onclick="javascript:goMyPetLog('3AB13467F6','965276',event);">
																	<div class="pic">
																				<img src="../../_images/common/icon-img-profile-default-m@2x.png" alt="dog">
																			</div>
																		<p>보름이네♡</p>
																</div>
															</a>
														</li>
												<li class="swiper-slide" style="width: 233.6px; margin-right: 8px;">
															<a href="javascript:goLikePetLogList(2 , 1 ,54986 );" class="petLogCardBox" style="width: 100%;">
																<div class="vthumbs" video_id="eWP42303950" type="video_thumb" uid="947035|0" data-enchk="Y" data-ready="Y" style="background-color: rgb(247, 247, 247); height: 100%;"><div class="vthumbsCi newVthumbs" style="height:100%;;background:url(https://bxqnyciafsty6727912.cdn.ntruss.com/vod/eWP42303950/video.png?type=f&amp;w=346&amp;h=461&amp;ttype=jpg) center / cover;background-color:#cdcddc; "></div></div>
																	<div class="log_userInfoBar" id="likePetLogUserInfo" onclick="javascript:goMyPetLog('CFA6F59DF0','947035',event);">
																	<div class="pic">
																				<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/947035/profile/bf3da6b8-9ce5-4788-aec8-2167c094e09b.jpg?type=f&amp;w=144&amp;h=144&amp;quality=100&amp;align=4" alt="dog">
																			</div>
																		<p>Bommi</p>
																</div>
															</a>
														</li>
												<li class="swiper-slide" style="width: 233.6px; margin-right: 8px;">
															<a href="javascript:goLikePetLogList(3 , 1 ,48078 );" class="petLogCardBox">
																<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/965320/8b9d9e5f-5f10-4f55-a2e5-b394beb8293d.jpg?type=f&amp;w=670&amp;h=892&amp;quality=100&amp;align=4" alt="">
																	<div class="log_userInfoBar" id="likePetLogUserInfo" onclick="javascript:goMyPetLog('691D19D5F5','965320',event);">
																	<div class="pic">
																				<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/965320/profile/741e5836-aedb-481a-86a3-f29e7e866509.jpg?type=f&amp;w=144&amp;h=144&amp;quality=100&amp;align=4" alt="dog">
																			</div>
																		<p>셍구리</p>
																</div>
															</a>
														</li>
												<li class="swiper-slide" style="width: 233.6px; margin-right: 8px;">
															<a href="javascript:goLikePetLogList(4 , 1 ,31814 );" class="petLogCardBox">
																<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/949212/bd9831d9-618a-4ae3-badc-db36f49340ce.png?type=f&amp;w=670&amp;h=892&amp;quality=100&amp;align=4" alt="">
																	<div class="log_userInfoBar" id="likePetLogUserInfo" onclick="javascript:goMyPetLog('FA247D75CF','949212',event);">
																	<div class="pic">
																				<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/member/949212/43749b2c-5130-4442-8472-14f167c225b6.png?type=f&amp;w=144&amp;h=144&amp;quality=100&amp;align=4" alt="dog">
																			</div>
																		<p>펫로그</p>
																</div>
															</a>
														</li>
												<li class="swiper-slide" style="width: 233.6px; margin-right: 8px;">
															<a href="javascript:goLikePetLogList(5 , 1 ,1886 );" class="petLogCardBox">
																<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/938590/5fb54208-0041-4dde-bd15-8586db7c5eec.jpg?type=f&amp;w=670&amp;h=892&amp;quality=100&amp;align=4" alt="">
																	<div class="log_userInfoBar" id="likePetLogUserInfo" onclick="javascript:goMyPetLog('9F85130AAF','938590',event);">
																	<div class="pic">
																				<img src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/log/938590/profile/c66cb611-8d6c-4012-9d68-fb9d4d28c27e.jpg?type=f&amp;w=144&amp;h=144&amp;quality=100&amp;align=4" alt="dog">
																			</div>
																		<p>절미</p>
																</div>
															</a>
														</li>
												</ul>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span><span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
								<div class="remote-area t1">
									<button class="swiper-button-next" type="button" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></button>
									<button class="swiper-button-prev swiper-button-disabled" type="button" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></button>
								</div>
							</div>
						</section>
						<div class="banner-wrap logBanner">
							<div class="uibanners">
								<div class="banner_slide">
									<div class="swiper-container slide swiper-container-initialized swiper-container-horizontal">
										<ul class="swiper-wrapper list" style="transform: translate3d(-3600px, 0px, 0px); transition-duration: 0ms;"><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev" data-swiper-slide-index="0">
													<a href="https://aboutpet.co.kr/event/detail?eventNo=86&amp;returnUrl=/log/home/" class="box">
																	<img class="pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/561/9935f85d-ebdd-4a86-a388-d2e0ed1c87cf.jpg?type=f&amp;w=1200&amp;h=94&amp;quality=100&amp;align=4" alt="배너">
																	<img class="mo" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/561/e8182bc7-f720-4983-837f-d41e884b452a.jpg?type=f&amp;w=750&amp;h=176&amp;quality=90&amp;align=4" alt="배너">
																</a>
															</li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="1">
													<a href="https://aboutpet.co.kr/event/detail?eventNo=147&amp;returnUrl=/log/home/" class="box">
																	<img class="pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1298/d77975bf-687d-4ecc-83aa-a84e858af901.jpg?type=f&amp;w=1200&amp;h=94&amp;quality=100&amp;align=4" alt="배너">
																	<img class="mo" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1298/746626f1-94fb-4299-be32-d64de3d51101.jpg?type=f&amp;w=750&amp;h=176&amp;quality=90&amp;align=4" alt="배너">
																</a>
															</li>
											<li class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="0">
													<a href="https://aboutpet.co.kr/event/detail?eventNo=86&amp;returnUrl=/log/home/" class="box">
																	<img class="pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/561/9935f85d-ebdd-4a86-a388-d2e0ed1c87cf.jpg?type=f&amp;w=1200&amp;h=94&amp;quality=100&amp;align=4" alt="배너">
																	<img class="mo" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/561/e8182bc7-f720-4983-837f-d41e884b452a.jpg?type=f&amp;w=750&amp;h=176&amp;quality=90&amp;align=4" alt="배너">
																</a>
															</li>
											<li class="swiper-slide swiper-slide-active" data-swiper-slide-index="1">
													<a href="https://aboutpet.co.kr/event/detail?eventNo=147&amp;returnUrl=/log/home/" class="box">
																	<img class="pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1298/d77975bf-687d-4ecc-83aa-a84e858af901.jpg?type=f&amp;w=1200&amp;h=94&amp;quality=100&amp;align=4" alt="배너">
																	<img class="mo" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1298/746626f1-94fb-4299-be32-d64de3d51101.jpg?type=f&amp;w=750&amp;h=176&amp;quality=90&amp;align=4" alt="배너">
																</a>
															</li>
											<li class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="0">
													<a href="https://aboutpet.co.kr/event/detail?eventNo=86&amp;returnUrl=/log/home/" class="box">
																	<img class="pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/561/9935f85d-ebdd-4a86-a388-d2e0ed1c87cf.jpg?type=f&amp;w=1200&amp;h=94&amp;quality=100&amp;align=4" alt="배너">
																	<img class="mo" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/561/e8182bc7-f720-4983-837f-d41e884b452a.jpg?type=f&amp;w=750&amp;h=176&amp;quality=90&amp;align=4" alt="배너">
																</a>
															</li><li class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="1">
													<a href="https://aboutpet.co.kr/event/detail?eventNo=147&amp;returnUrl=/log/home/" class="box">
																	<img class="pc" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1298/d77975bf-687d-4ecc-83aa-a84e858af901.jpg?type=f&amp;w=1200&amp;h=94&amp;quality=100&amp;align=4" alt="배너">
																	<img class="mo" src="https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1298/746626f1-94fb-4299-be32-d64de3d51101.jpg?type=f&amp;w=750&amp;h=176&amp;quality=90&amp;align=4" alt="배너">
																</a>
															</li></ul>
										<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 2"></span></div>
										<div class="sld-nav">
											<button type="button" class="bt prev" tabindex="0" role="button" aria-label="Previous slide">이전</button>
											<button type="button" class="bt next" tabindex="0" role="button" aria-label="Next slide">다음</button>
										</div>
									<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
								</div>
							</div>
						</div>
						
					</div>	
					
					
					
					
					
					
					<!-- 여기까지 한묶음 -->
					
					
					
					
					
					
					
						
				</div>
			</div>
		</div>
	</main>	
</div>

</body>
</html>




































