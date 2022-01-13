<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String category = (String)request.getAttribute("category");
	String subcategory = (String)request.getAttribute("subcategory");
	
	//db에 저장된 id
	String dtoId = (String)request.getAttribute("dtoId");
	
	//세션에 올라와있는 id
	String userId = (String)session.getAttribute("userId");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>aboutPatTV</title>
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<link rel="stylesheet" type="text/css" href="resources/_css/swiper.css">
<link rel="stylesheet" type="text/css" href="resources/_css/swiper2.css">

<link
  rel="stylesheet"
  href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
/>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.cookie.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/clipboard.min.js"></script>
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>	

<!-- 
<link rel="stylesheet" href="resources/css/style.css" type="text/css"/>
<link rel="stylesheet" href="resources/css/list.css" type="text/css"/>
 -->

<script type="text/javascript">

	function sendIt(){
		
		var f = document.searchForm;
		
		f.action = "<%=cp%>/TVlist.action";
		f.submit();
		
	}
	
	


</script>

</head>

<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div>
<div id="bbsList">
	<div id="bbsList_title">
	게 시 판(aboutTV)
	</div>
		<%
	if(userId!=null && userId.equals(dtoId)) {
	%>
	<div id="bbsList_header">		
		<div id="rightHeader">
			<input type="button" value=" 글올리기 " class="btn2" 
			onclick="javascript:location.href='<%=cp%>/TVcreated.action';"/>		
		</div>	
	</div>
		<%
	}
	%>
	<main class="container page tv home" id="container">
		<div class="inr1" style="min-height: 589px;">
			<div class="contents" id="contents">
				<section class="main1">
					<div class="swiper-div1">
						<div class="swiper-container swiper-container-initialized swiper-container-horizontal1">
							<ul class="swiper-wrapper1" style=" transition-duration: 0ms; transform: translate3d(-4542px, 0px, 0px);">
			                   	<li class="swiper-slide swiper-slide-duplicate preve swiper-slide-duplicate-next1" data-swiper-slide-index="0">
		                          	<div class="thumb-box1">
		                              	<div class="dummyImg1">
		                              	  	<a href="#" onclick="fncGoUrl('http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=4'); return false;" class="thumb-img1" data-content="1451" data-url="http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=4" style="background-image:url(https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1450/d3eb4d01-41c5-4a31-b216-1ccf135c3726.jpg?type=m&w=408&h=296&quality=100&bgcolor=FFFFFF&extopt=3);"></a>
		                              	</div>
		                              	<div class="thumb-info1">
											<div class="info1">
											<a href="#" onclick="fncGoUrl('http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=4'); return false;" data-content="1451" data-url="http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=4">
                           						<div class="tlt1">
                           							고양이들 행복 보장 우주소녀의 다음 행성은?!</div>
                           						</a>
                           					<a href="#" onclick="fncGoUrl('http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=4'); return false;" data-content="1451" data-url="http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=4">
                           							<div class="detail1"><span>털복숭별에 안착한 우주소녀🚀 설렘 가득 베베집사와 우주소녀의 첫 만남 대 공개! 💘 </span></div>
                           						</a>
                           					</div>
		                              	</div>
		                          	</div>
		                      	</li>
								
								<li class="swiper-slide">
			                          	<div class="thumb-box">
			                              	<div class="dummyImg">
			                              	  	<a href="#" onclick="fncGoUrl('http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=3'); return false;" class="thumb-img" data-content="1427" data-url="https://aboutpet.co.kr/tv/series/indexTvDetail?vdId=N2021120204893" style="background-image:url(https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1426/df9ea439-1bcd-44f2-9ea1-962f9ccc9f70.jpg?type=m&w=408&h=296&quality=100&bgcolor=FFFFFF&extopt=3);"></a>
			                              					</div>
			                              	<div class="thumb-info">
												<div class="info">
													<a href="#" onclick="fncGoUrl('http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=3'); return false;" data-content="1427" data-url="https://aboutpet.co.kr/tv/series/indexTvDetail?vdId=N2021120204893">
	                              						<div class="tlt">
	                              							드디어 찾아온 SF9의 절미네민박 퇴실 날! </div>
	                              						</a>
	                              					<a href="#" onclick="fncGoUrl('http://localhost:8080/TVarticle.action?searchValue=&pageNum=1&num=3'); return false;" data-content="1427" data-url="https://aboutpet.co.kr/tv/series/indexTvDetail?vdId=N2021120204893">
	                              							<div class="detail"><span>어떻게 이별까지 사랑하겠어 셒구x절미x자몽이를 사랑하는 거지...😭</span></div>
	                              						</a>
				                              	</div>
			                              	</div>
			                          	</div>
			                      	</li>
								<li class="swiper-slide">
			                          	<div class="thumb-box">
			                              	<div class="dummyImg">
			                              	  	<a href="#" onclick="fncGoUrl('https://aboutpet.co.kr/event/detail?eventNo=157&returnUrl=/tv/home/'); return false;" class="thumb-img" data-content="1361" data-url="https://aboutpet.co.kr/event/detail?eventNo=157" style="background-image:url(https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1360/51bb12e2-ae4c-479d-8ed9-3f23f666c3b1.jpg?type=m&w=408&h=296&quality=100&bgcolor=FFFFFF&extopt=3);"></a>
			                              					</div>
			                              	<div class="thumb-info">
												<div class="info">
		
													<a href="#" onclick="fncGoUrl('https://aboutpet.co.kr/event/detail?eventNo=157&returnUrl=/tv/home/'); return false;" data-content="1361" data-url="https://aboutpet.co.kr/event/detail?eventNo=157">
				                              							<div class="tlt">
					                              							22똥괭이네X베베집사의 굿즈 증정 이벤트! </div>
				                              						</a>
				                              					<a href="#" onclick="fncGoUrl('https://aboutpet.co.kr/event/detail?eventNo=157&returnUrl=/tv/home/'); return false;" data-content="1361" data-url="https://aboutpet.co.kr/event/detail?eventNo=157">
				                              							<div class="detail"><span>고행우 시청하고 똥괭이네, 베베집사 굿즈 받자! 안내서도 스티커도 드려요❣ </span></div>
				                              						</a>
				                              					</div>
			                              	</div>
			                          	</div>
			                      	</li>	
								</ul>
					<div class="swiper-pagination swiper-pagination-bullets1">
						</div>
							<span class="swiper-pagination-bullet1"></span>
							<span class="swiper-pagination-bullet swiper-pagination-bullet-active1"></span>

					<div class="back-img" style="background-image:url(https://cdudsyowwnmx6388661.cdn.ntruss.com/aboutPet/images/banner/1436/af51546c-3ebe-4251-9506-2951d52d0645.jpg?type=m&w=408&h=296&quality=100&bgcolor=FFFFFF&extopt=3);"></div>
						<div class="remote-area">
							<button class="swiper-button-next" type="button" tabindex="0" role="button" aria-label="Next slide"></button>
							<button class="swiper-button-prev" type="button" tabindex="0" role="button" aria-label="Previous slide"></button>
						</div>
						<span class="swiper-notification1" aria-live="assertive" atomic="true"></span>
					</div>
					
				</div>
			</section>			
						
		<!-- 두번째 리스트 -->
		<section class="exhibition video list0">	
				<div class="htaps1">						
					<a class="hdt1" href="${catelistUrl}&num=1">
					<input type="hidden" id="category" value="고양이">
						<span class="tit1">😼EVENT #집사를응원해😼               </span>                    
						<span class="more1">
							<b>전체보기 </b>
							<i class="fas fa-angle-right"></i>
							</span>
						
					</a>
				</div>
			<div class="swiper-div newDn petTvMb">
				<div class="swiper-container swiper-container-initialized swiper-container-horizontal">		
					<ul class="swiper-wrapper">
						<li class="swiper-slide swiper-slide-active" style="width: 288px; margin-right: 16px;">
							<c:forEach var="dto" items="${lists}">
								<c:choose>
									<c:when test="${dto.category == '고양이' && dto.subcategory == '일상' }">
										<c:choose>
											<c:when test="${dto.thumFileName ne null}">
												<dl>
													<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }">
													<input type="hidden" name="allLists" value="allLists">
													<input type="hidden" id="category" value="고양이">
													<input type="hidden" id="subcategory" value="일상">
													</a>			
													<!-- 작성자사진 -->
													<dd class="title">${dto.title }</dd>
													<!-- 좋아요 -->
												</dl>
											</c:when>
											<%-- <input type="hidden" name="thumFileName" value="${dto.thumFileName }">
											<input type="hidden" name="subcategory" value="${dto.subcategory }"> --%>
										</c:choose>
									</c:when>
								</c:choose>						
							</c:forEach>
						</li>	
					</ul>				
				</div>
			</div>	
		</section>
		<!-- 세번째 리스트 -->
		<section class="exhibition video list0">	
			<form>	
				<div class="htaps1">						
					<a class="htap">
					<a class="hdt1" href="${catelistUrl}&num=2">
					<input type="hidden" name="allLists" value="allLists">
					<input type="hidden" id="category" value="강아지">
					<span class="tit1">솊구의 절미네 민박 입성기               </span>                    
						<span class="more1">
							<b>전체보기 </b>
							<i class="fas fa-angle-right"></i>
							</span>

					<!-- 화살표 -->
					</a></a>
				</div>
			</form>	
			<div class="swiper-div newDn petTvMb">
				<div class="swiper-container swiper-container-initialized swiper-container-horizontal">		
					<ul class="swiper-wrapper">
						<li class="swiper-slide swiper-slide-active" style="width: 288px; margin-right: 16px;">
							<c:forEach var="dto" items="${lists}">
						<c:choose>
							<c:when test="${dto.category == '강아지' && dto.subcategory == '일상' }">
								<c:choose>
									<c:when test="${dto.thumFileName ne null}">
										<dl>

											<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }">
											<input type="hidden" name="allLists" value="allLists">
											<input type="hidden" id="category" value="강아지">
											<input type="hidden" id="subcategory" value="일상">
											</a>
											
											<dd class="title">${dto.title }</dd>
										
										</dl>
									</c:when>
								</c:choose>
							</c:when>
						</c:choose>						
					</c:forEach>
						</li>	
					</ul>				
				</div>
			</div>	
		</section>

		<!-- 네번째 리스트 -->
		<section class="exhibition video list0">	
				<div class="htaps1">						
					<a class="htap">
					<a class="hdt" href="${catelistUrl}&num=3">
					<span class="tit1">반려인 상식사전(강아지) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      </span>                    
						<span class="more1">
							<b>전체보기 </b>
							<i class="fas fa-angle-right"></i>
							</span>
					<input type="hidden" name="allLists" value="allLists">
					<input type="hidden" id="category" value="강아지">
					<input type="hidden" id="subcategory" value="상식">
					<!-- 화살표 -->
					</a></a>
				</div>
			<div class="swiper-div newDn petTvMb">
				<div class="swiper-container swiper-container-initialized swiper-container-horizontal">		
					<ul class="swiper-wrapper">
						<li class="swiper-slide swiper-slide-active" style="width: 288px; margin-right: 16px;">
							<c:forEach var="dto" items="${lists}">
							<c:choose>
								<c:when test="${dto.category == '강아지' && dto.subcategory == '상식' }">
									<c:choose>
										<c:when test="${dto.thumFileName ne null}">
											<dl>
											
												<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }"></a>
												
												<dd class="tit1">${dto.title }</dd>
											</dl>
										</c:when>
									</c:choose>
								</c:when>
							</c:choose>						
						</c:forEach>
						</li>	
					</ul>				
				</div>
			</div>	
		</section>
		<!-- 다섯번째 리스트 -->
		<section class="exhibition video list0">	
				<div class="htaps1">						
					<a class="htap">
					<a class="hdt" href="${catelistUrl}&num=4">
					<span class="tit1">반려인 상식사전(고양이) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;              </span>                    
						<span class="more1">
							<b>전체보기 </b>
							<i class="fas fa-angle-right"></i>
							</span>
				
					<input type="hidden" name="allLists" value="allLists">
					<input type="hidden" id="category" value="고양이">
					<input type="hidden" id="subcategory" value="상식">
					<!-- 화살표 -->
					</a></a>
				</div>
			<div class="swiper-div newDn petTvMb">
				<div class="swiper-container swiper-container-initialized swiper-container-horizontal">		
					<ul class="swiper-wrapper">
						<li class="swiper-slide swiper-slide-active" style="width: 288px; margin-right: 16px;">
							<c:forEach var="dto" items="${lists}">
						<c:choose>
							<c:when test="${dto.category == '고양이' && dto.subcategory == '상식' }">
								<c:choose>
									<c:when test="${dto.thumFileName ne null}">
										<dl>

											<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }"></a>
											<dd class="title">${dto.title }</dd>
										</dl>
									</c:when>
								</c:choose>
							</c:when>
						</c:choose>						
					</c:forEach>
						</li>	
					</ul>				
				</div>
			</div>	
		</section>
		
		<!-- 여섯번째 리스트 -->
				<section class="exhibition video list0">	
				<div class="htaps1">										
					<a class="htap">
					<a class="hdt" href="${catelistUrl}&num=5">
					<span class="tit1">유익한 반려정보  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            </span>                    
						<span class="more1">
							<b>전체보기 </b>
							<i class="fas fa-angle-right"></i>
							</span>
					
					<input type="hidden" name="allLists" value="allLists">
					<input type="hidden" id="subcategory" value="정보">
					<!-- 화살표 -->
					</a>
				</div>
			<div class="swiper-div newDn petTvMb">
				<div class="swiper-container swiper-container-initialized swiper-container-horizontal">		
					<ul class="swiper-wrapper">
						<li class="swiper-slide swiper-slide-active" style="width: 288px; margin-right: 16px;">
							<c:forEach var="dto" items="${lists}">
						<c:choose>
							<c:when test="${dto.category == '강아지' && dto.subcategory == '정보' }">
								<c:choose>
									<c:when test="${dto.thumFileName ne null}">
										<dl>

											<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }"></a>
											<dd class="title">${dto.title }</dd>
										</dl>
									</c:when>
								</c:choose>
							</c:when>
						</c:choose>						
					</c:forEach>
						</li>	
					</ul>				
				</div>
			</div>	
		</section>
		
	</div>

		
		
		<!-- 8번째 리스트 시리즈 3가지 -->
		<!--  <div>	
			<div>
				<div class="htaps">
					<a class="htap">
					<span class="tit">event#집사를응원해</span>
					<span class="t">전체보기</span>-->
					<!-- href categotylist -->
					<!-- 화살표 -->
				<!--  	</a>
				</div>
				<div id="lists">		
					<c:forEach var="dto" items="${lists}">
						<c:choose>
							<c:when test="${dto.category == '고양이' && dto.subcategory == '일상' }">
								<c:choose>
									<c:when test="${dto.thumFileName ne null}">
										<dl>
											<dd class="num">${dto.num}</dd>
											<dd class="title">
											<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }"></a>
											</dd>
											<dd class="hitCount">${dto.hitCount }</dd>
										</dl>
									</c:when>
								</c:choose>
							</c:when>
						</c:choose>						
					</c:forEach>		
				</div>
			</div>	
		</div>	-->
		<!--  

		<c:set var="n" value="0"/>
		<c:forEach var="dto" items="${lists}" >
		<c:if test="${n==0}">
			<tr bgcolor="#FFFFFF" >
		</c:if>
		<c:if test="${n!=0&&n%5==0 }">
			</tr><tr bgcolor="#FFFFFF" >
		</c:if>
      <td width="200" align="center" style="float: left;">
      <a href="${articleUrl}&num=${dto.num}">
	    <img src="/video/${dto.thumFileName}" width="180" height="180" border="0"/>
	   </a>
	    <br/>${dto.title}&nbsp;<a href="<%=cp%>/image/delete.do?num=${dto.num}">삭제</a>
		</td>
		<c:set var="n" value="${n+1}"/>
		</c:forEach>
			-->
		
		<div id="footer">
			<p>
				<c:if test="${dataCount!=0 }">
					${pageIndexList }
				</c:if>
				<c:if test="${dataCount==0 }">
					등록된게시물이 없습니다.
				</c:if>
			</p>
		</div>	
	</div>
	</div>
	
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>




































