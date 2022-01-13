<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<link rel="stylesheet" type="text/css" href="/resource/css/header.css">
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.searchForm;
		
		f.action = "<%=cp%>/homeStore.action";
		f.submit();
		
	}
	
function logout(){
		
		var f = document.logoutForm;
		
		f.action = "<%=cp%>/logout.action";
		f.submit();
		
	}


</script>
</head>
<body class="body logmain isPc gnb_ac isTalk isFoot">
<div id="wrap" class="wrap">
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<!--  
<header class="header pc cu mode0" data-header="set0" id="header_pc">
	<input type="password" style="display:none;">
	<div class="hdr">
		<div class="inr">
			<div class="tdt">
				<ul class="menu">
						<li><a href="<%=cp%>/jArticle.action" class="bt">찜목록</a></li>					
				
						<li><a href="<%=cp %>/insertProduct.action" class="bt">제품등록</a></li>					
						<li><a href="<%=cp %>/addUser.action" class="bt">회원가입</a></li>
		                <li><a href="<%=cp %>/login.action" class="bt">로그인</a></li>
		                <li><a href="" class="bt">마이페이지</a></li>
		                
		                <li><a href="<%=cp %>/logout.action" class="bt">로그아웃</a></li>
					
			
			</div>
			<div class="hdt">

				<button class="mo-header-btnType02">취소</button>

				<button class="btnGnb" type="button">메뉴</button>

				<h1 class="logo log">
					<a class="bt" href="javascript:goShopDeleteCookie();">AboutPet</a>
				</h1>

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
				
				<nav class="tmenu">
					<ul class="list">
				<li id="liTag_20" class=""><a href="<%=cp %>/homeStore.action" class="bt">TV</a></li>
						<li id="liTag_30" class=""><a href="<%=cp %>/list.action" class="bt">로그</a></li> 
						<li id="liTag_10" class="active"><a href="<%=cp %>/homeStore.action" class="bt">스토어</a></li>
						<li id="liTag_00" class=""><a href="<%=cp %>/homeStore.action" class="bt">MY</a></li>
					</ul>
				</nav>
			</div>
			<div class="cdt">
						<div class="schs">
								<div class="form ">
								
				
								</div>
							</div>
						<div class="menu">
							<button id="alertBtn" class="bt alim" type="button">알림</button>
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
-->
<!--
	<div>

		<div id="leftHeader">
	 -->	
			<form action="" name="searchForm" method="post">
				<select name="searchKey" class="selectField">
					<option value="brand">브랜드</option>
 					<option value="mainCategory">메인카테</option>
						<option value="subCategory">서브카테</option>
					<option value="price">가격</option>
				</select>
					<div class="hdr">
						<div class="inr">
							<div class="cdt">
								<div class="schs">
									<div class="form">
										<div class="input del kwd">
											<input id="srchWord" name="searchValue" type="text"
												maxlength="50" value="" autocomplete="off"
												placeholder="검색어를 입력해주세요.">
										</div>

									</div>

								</div>
							</div>
						</div>
					</div>


					<!-- <input type="text" name="searchValue" class="textField">  -->
				<input type="button" value=" 검색 " class="btn2" onclick="sendIt();" />
			</form>
		</div>

	</div>
	<div id="product" style="width: 1600px; height: 1200px; float: none;">
	<div id="productLeft" style="width:200px; height:1150px; float: left;">
	<label style="font-weight: bold; font-size: 3">강아지</label><br>
	<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=강아지사료">사료</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=강아지간식">간식</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=강아지건강관리">건강관리</a><br>	
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=위생/배변">위생/배변</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=미용/목욕">미용/목욕</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=강아지급식/급수기">급식/급수기</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=장난감/훈련">장난감/훈련</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=하우스">하우스</a><br><br><br>
		
		
		<label style="font-weight: bold; font-size: 3">고양이</label><br>
		
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=고양이사료">사료</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=고양이간식">간식</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=고양이건강관리">건강관리</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=모래">모래</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=화장실/위생">화장실/위생</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=미용/목욕">미용/목욕</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=고양이급식/급수기">급식/급수기</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=장난감/캣닢">장난감/캣닢</a><br><br><br>
	
	
		<label style="font-weight: bold; font-size: 3">관상어</label><br>
	
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=수초">수초</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=관상어사료">사료</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=컨디셔너">컨디셔너</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=어항">어항</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=바닥재">바닥재</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=여과용품">여과용품</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=에어용품">에어용품</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=조명">조명</a><br><br><br>
		
			<label style="font-weight: bold; font-size: 3">소동물</label><br>
		
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=햄스터/저빌/래트">햄스터/저빌/래트</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=토끼/기니피그/친칠라/데구">토끼/기니피그/친칠라/데구</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=고슴도치">고슴도치</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=새">새</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=곤충">곤충</a><br>
		<a href="<%=cp %>/homeStore.action?pageNum=1&searchKey=subCategory&searchValue=파충류">파충류</a><br>
	
	
	</div>
	<div id="productCenter" style="width:1200px; height:1150px;  float: left; margin-left: 10px;">
	<c:forEach var="dto" items="${lists}">
	<div id="product0" style="width:300px; height:440px;  float: left; margin-left: 70px; margin-bottom: 50px; margin-top: 50px;">
		<div id="product1" style="width:250px; height:290px;  margin-left: 20px;" >
				
					<dl>
						<dd class="subject">
							<c:set var="fileName" value="${fn:split(dto.fileName,',')}"></c:set>
							<c:set var="fileOriName" value="${fn:split(dto.fileOriName,',')}"></c:set>											
						</dd>
							
						<dd>			
						<a href="${articleUrl}&num=${dto.num}" >
							<img src="/uploadFiles/${fileName[0] }"style="width: 250px; border-radius:7px; height: 290px;"><br>
						</a>
							
						</dd>
					
							
					</dl>
				
		</div>
		<div id="product2" style="width:250px; height:110px;  margin-left: 20px; margin-top: 10px;" >
		<a href="${articleUrl}&num=${dto.num}" style="font-weight: bold; font-size: medium;"> ${dto.productName }</a>	
						
						<dl class="brand">${dto.brand}</dl>					
 							<c:if test="${dto.discount==0 }">
 								<br><dl style="font-size: large; font-weight: bolder;">${dto.price}원</dl>
 							</c:if>
 							
 							<c:if test="${dto.discount!=0 }">
 								<dl>
 									<del>${dto.price}원</del>&nbsp;&nbsp;
 									<i class="fas fa-arrow-down" style="color: #5882FA">
 										<a style="color: black"><fmt:parseNumber integerOnly="true" value="${dto.discount/dto.price*100 }"/>%</a> 
 									</i>
 								</dl>
						
 							<dl style="font-size: large; font-weight: bolder;">${dto.price-dto.discount }원 </dl>
 							</c:if>
 
 				
		
		</div>	
	</div>
	</c:forEach>
	</div>
	</div>
	


	<div id="footer" align="center">
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
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>
