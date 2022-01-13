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
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/common/header.css" type="text/css"/>
<link rel="stylesheet" href="/webjars/bootstrap/5.1.1/css/bootstrap.min.css"/>
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/5.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
});


$(".sbm li").hover(function() {

        $(this).children("ul").stop().slideToggle(500)

      })
</script>
</head>
<body>
<script type="text/javascript">

</script>
<header class="header pc">
            <input type='password' style="display: none;"></input>
            <div class="hdr">
                <div class="inr">
                    <div class="tdt">
                        <ul class="menu">
                            <li>
                                <a href='<%=cp%>addUser.action' class="bt">회원가입</a>
                            </li>
                            <li>
                                <a href='<%=cp%>login.action' class="bt">로그인</a>
                            </li>
                            <li>
                                <a href='' class="bt">이벤트</a>
                            </li>
                            <li class="custo">
                                <a href='#' class="bt dropdown-toggle" data-toggle="dropdown"  role="button" aria-expanded="false">고객센터</a>
                               		<div class="sbm"> 
                                    <ul class="sm dropdown-menu" role="menu">
                                        <li>
                                            <a href='<%=cp%>/faqlist.action' class="btt">FAQ</a>
                                        </li>
                                        <li>
                                            <a href='' class="btt">고객문의</a>
                                        </li>
                                        <li>
                                            <a href='<%=cp%>/noticelist.action' class="btt">공지사항</a>
                                        </li>
                                    </ul>
                               </div>
                            </li> 
                        </ul>
                    </div>
                    <!-- 메뉴창  -->
                    <div class="hdt">
                    	<div class="sidebar" id="sidebar">
                    		<div class="menubar_inr">
                    			<div class="menubar_hdt"></div>
                    			<div class="menubar_cdt">
                    				<div class="menubar_menu">
                    					<ul>
                    						<li><a href="<%=cp%>TVlist.action" class="bt">TV</a></li>
                    						<li><a href="<%=cp%>list.action" class="bt">로그</a></li>
                    						<li><a href="<%=cp%>Homestore.action" class="bt">스토어</a></li>
                    						<li><a href="<%=cp%>mypage.do" class="bt">MY</a></li>
                    					</ul>
                    					<hr>
                    					<ul>
                    						<li><a href="" class="btt">쿠폰존</a></li>
                    						<li><a href="" class="btt">이벤트</a></li>
                    						<li><a href="<%=cp%>/faqlist.action" class="btt">FAQ</a></li>
                    						<li><a href="<%=cp%>/noticelist.action" class="btt">공지사항</a></li>
                    						<li><a href="#staticBackdrop2" data-bs-toggle="modal">입점ㆍ제휴문의</a></li>
                    						<li><a href="<%=cp%>/termslist.action"" class="btt">서비스 이용약관</a></li>
                    					</ul>
                    				
                    				</div>
                    			</div>
                    		</div>
                    	</div>
                        <button class="btnGnd" id="sidebarCollapse" type='button'>메뉴</button>
                        <div class="overlay"></div>
                        <h1 class="logo tv">
                            <a class="bt" href='' >aboutPet</a>
                        </h1>
                        <nav class="tmenu">
                            <ul class="tlist">
                                <li id='TV'><a href='<%=cp%>TVlist.action' class="bt">TV</a></li>
                                <li id='community'><a href='<%=cp%>list.action' class="bt">로그</a></li>
                                <li id='store'><a href='<%=cp%>homeStore.action' class="bt">스토어</a></li>
                                <li id='mypage'><a href='<%=cp%>mypage.do' class="bt">MY</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!--  검색 --> 
                    <div class="cdt">
                        <div class="schs">
                            <div class="form">
                                <div class="input del kwd">
                                    <input id='' name='srchWord' type='search' placeholder='검색어를 입력해 주세요.'></input>
                                    <button type='button' class="btnSch">검색</button>
                                    <!--  자동완성 드롭박스 -->
                                    <div class="key-word-list" style="display: none;">
                                        <ul></ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="menu">
                            <button class="bt alim">알림</button>
                            <button class="bt hos">병원</button>
                            <button class="bt cart">카트</button>
                            <div class="alims">
                                <ul class="alist" style="maxHeight:320px;display:none;">
                                    <li class="nodata">
                                        <p class="msg">
                                            새로운 알림이 없습니다.
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </header>
        
<script type="text/javascript">
$('#sidebarCollapse').on('click',function(){
	$('#sidebar').addClass('active');
	$('.overlay').fadeIn();
});

$('.overlay').on('click', function () {
    $('#sidebar').removeClass('active');
    $('.overlay').fadeOut();
});



</script>
</body>
</html>