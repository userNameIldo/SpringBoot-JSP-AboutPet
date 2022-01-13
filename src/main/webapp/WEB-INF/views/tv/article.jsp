<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>aboutPatTV</title>

<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<link rel="stylesheet" type="text/css" href="resources/_css/swiper.css">
<link rel="stylesheet" type="text/css" href="resources/_css/swiper2.css">


<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript"  src="/_script/common.js" ></script>
  <script>
  
  $( function() {
    $( "#tabs" ).tabs();
  } );
  
  </script>
  <script type="text/javascript">
  
  
  $(document).ready(function(){

		window.onload = function(){
			
		}
		
	
		
		//북마크
		$('.TVBtnBasic.btn-bookmark').click(function(){
			
			if($(this).hasClass("true")){
				var no = $(this).attr("idx");
				$.ajax({
					url : 'cancleZzimTV.action',
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
				
				$(this).attr('class', '.TVBtnBasic btn-bookmark false');
				
			}else{
				var no = $(this).attr("idx");
				$.ajax({
					url : 'saveZzimTV.action',
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
				
				$(this).attr('class', '.TVBtnBasic btn-bookmark true');
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
  
  </script>
  

  
  

<!--  
<link rel="stylesheet" href="/resources/css/style.css" type="text/css"/>
<link rel="stylesheet" href="/resources/css/article.css" type="text/css"/>
-->

</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<main1 class="container page tv detail1">
<div class="top-area1">
	<div class="div-flex1">
		<p id="video-title1"> ${dto.title }</p>
	</div>
	<div class="thumb-info">
		<div class="info">
			<div class="dash">${dto.name }</div>
			<a href="${subcateUrl}&num=10"></a>
		</div>
	</div>

		<div class="bbsArticle_bottomLine">
			<!--  -->

			<div>
				 <iframe src="${dto.videoUrl} "></iframe> 
			</div>
				<!--  -->	
				
				<div id="tabs" style="padding: 0 20px;">
					  <ul>
					    <li><a href="#tabs-1">시리즈 영상</a></li>
					    <li><a href="#tabs-2">추천 영상</a></li>
					    
					  </ul>
					  <div id="tabs-1">
					  <c:forEach var="dto" items="${allLists}">
						<c:choose>
							<c:when test="${dto.category == '고양이' && dto.subcategory == '일상' }">
								<c:choose>
									<c:when test="${dto.thumFileName ne null}">
										<dl>
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
					  <div id="tabs-2">
					   <c:forEach var="dto" items="${allLists}">
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
					  </div>
					</div>	

		</div>
</div>
</div>


</main1>
		<div class="bbsArticle_bottomLine">
			<dl>
				<dt>등록일:${dto.created }</dt>
				<dt>조회수:${dto.hitCount }</dt>

			</dl>		
		</div>
		
		<div id="bbsArticle_content">
			<table width="600" border="0">
			<tr><td>
			내용:${dto.videoinfo}
			</td></tr>		
			</table>			
		</div>	
	</div>
	
	
	
	<div>
		<div>
			<div class="tit">댓글${video_comment_count }개</div>
			<div>
				<textarea id="aplyContent" name="aplyContent" onfouce="fncReplyRegLoginChk();" placeholder="댓글을 입력해 주세요"></textarea>
				<div>
				<button id="aplyContentRegBtn" onclick="fncReplyRegLoginChk('Y');" data-content="" class="ac" tabindex="-1">등록</button>
				</div>
			</div>
			
		<div class="bottom-bar">
			<div class="inner">
				<div class="bar-btn-area">
					<li class="like_li">
						<c:choose>										
							<c:when test="${!empty userId}">
								<c:choose>
									<c:when test="${dto.checkZzimTV eq 'true' }">
										<input type="button" id="book_${dto.num }" idx = "${dto.num }" class="TVBtnBasic btn-bookmark true" value="북마크" />														
									</c:when>
									<c:otherwise>
										<input type="button" id="book_${dto.num }" idx = "${dto.num }"  class="TVBtnBasic btn-bookmark false"  value="북마크" />
									</c:otherwise>
								</c:choose>
							</c:when>
								<c:otherwise>
									<input type="button" id="${dto.num }" class="TVBtnBasic btn-bookmark login" onclick="location.href='/login.action'" value="북마크" />									
								</c:otherwise>
						</c:choose>
					
					</li>
				</div>
			</div>
		</div>
	
	
	<%-- <div id="bbsArticle_footer">
	
		<div id="leftFooter">	
		
		<input type="button" value=" 수정 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/updated.action?num=${dto.num}&${params}'"/>
		<input type="button" value=" 삭제 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/deleted.action?num=${dto.num}&${params}'"/>
		</div>		
		<div id="rightFooter">
		<input type="button" value=" 리스트 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/list.action'"/>
		</div>	
		
	</div> --%>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>




































