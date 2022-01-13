<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%	
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String category = (String)request.getAttribute("category");
	String subcategory = (String)request.getAttribute("subcategory");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>aboutPatTV</title>


<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css">
<link rel="stylesheet" type="text/css" href="resources/_css/swiper.css">
<link rel="stylesheet" type="text/css" href="resources/_css/swiper2.css">
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery-ui.min.js"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/jquery/jquery.cookie.js" ></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/swiper.min.js"></script>
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<script type="text/javascript"  src="https://vknfvtjnsgec6381690.cdn.ntruss.com/_script/clipboard.min.js"></script>



</head>
<body class="body tv homeList isPc gnb_ac isTalk isFoot">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<main class="container page tv homeList" id="container">
	<div class="inr1" style="min-height: 589px">
		<div class="contents" id="contents">
			<div class="pc-subtit">
				<h2>😼EVENT #집사를응원해😼</h2>
			</div>				
			<div class="list-wrap">
				<ul class="list" id="srisVdoTagList">
					<li>
					<%
					if(category != "강아지" ) {
					%>
							<div id="lists1">	
								<div>	
									<c:set var="loop_flag" value="false" />	
									<c:forEach var="dto" items="${allLists}">
										<c:choose>
											<c:when test="${(dto.category == '고양이') && (dto.subcategory == '일상') ? true : false}">
												<c:choose>
													<c:when test="${dto.thumFileName ne null}">
														<dl>										
															<dd class="name">${dto.name }
															<a href="${articleUrl}&num=${dto.num}"><img src="/video/${dto.thumFileName }"></a>
															<dd class="title">${dto.title }										
															</dd>		
														</dl>
													</c:when>
												</c:choose>
											</c:when>
					
										</c:choose>						
									</c:forEach>						
								</div>
						</div>
					<%
					}
					%>
					
					</li>
				</ul>
			</div>
		</div>
	</div>
</main>		

<%
if(category != "고양이") {
%>	

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

<%
}
%>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>