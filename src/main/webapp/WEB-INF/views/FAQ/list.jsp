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
<link rel="stylesheet" href="resources/css/FAQ/list.css" type="text/css"/>
<link rel="stylesheet" href="/webjars/bootstrap/5.1.1/css/bootstrap.min.css"/>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script src="/webjars/bootstrap/5.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
function sendIt(){
	
	var f = document.searchForm;
	
	f.action = "<%=cp%>/list.action";
	f.submit();
	
}

$(function(){
	
	
	
	
	$("#btnTog").on("click",function(){
		if($("#cBox").css("display")=="none"){
			$("#cBox").show();
		}else{
			$("#cBox").hide();
		}	
	});
	
});

</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<main>

<div class="inr"   style="min-height: 780px;">
                <div class="contents"/>
                    <div class="pc-tit"><h2>FAQ</h2></div>
                <section class="sect top">
                    <div class="search input">
                        <input type='text' id='searchWord' placeholder='궁금한 내용을 입력해 주세요.'/>
                        <button type='button' class="btnDel" tabIndex='-1'  style="display:none;">삭제</button>
                        <button type='button' class="btnfaq" onClick='sendIt()'>검색</button>
                    </div>
                    <p class="reuslt" style="display:none;">
                        검색결과
                        <b></b>
                    </p>
                </section>
                <!-- 메뉴영역 -->
                <section class="sect menu mt15">
                    <ul class="uiTab h">
                        <li class="active">
                            <a href="" class="bt active">전체</a>
                        </li>
                        <li><a href='' class="bt">회원/정보</a></li>
                        <li><a href='' class="bt">주문/결제</a></li>
                        <li><a href='' class="bt">상품문의</a></li>
                        <li><a href='' class="bt">취소/환불</a></li>
                        <li><a href='' class="bt">배송문의</a></li>
                        <li><a href='' class="bt">교환/재배송</a></li>
                        <li><a href='' class="bt">반품/AS</a></li>
                        <li><a href='' class="bt">쿠폰/적립금</a></li>
                        <li><a href='' class="bt">프로모션</a></li>
                        <li><a href='' class="bt">기타</a></li>
                        
                    </ul>
                </section>
                <!--  FAQ 컨텐트 영역  -->
                <section class="sect flist notilist">
                    <!--  검색결과 없을 때  -->
                    <li class="nodata min_h" id='noDatas' style="minHeight:150px; display:none;">
                        <p class="txt">검색결과가 없습니다.
                            <span class="sm">
                                <i>1:1 문의하기로</i>
                                문의글을 남겨주시면<br/>
                                친절하게 답변드리겠습니다.  
                            </span>
                        </p>
                    </li>
                     
                    <ul class="uiAccd" >
                    <c:forEach var="dto" items="${list }">
                    	
                  
                 
                        <li value="${dto.f_num}">
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis" id="btnTog">
                                        <em class="blue" >${dto.faq_cat }</em>
                                        ${dto.ques}
                                    </span>
                                </p>
                                <button type='button' class="btnTog" id="btnTog" >버튼</button>
                            </div>
                            <div class="cBox" id="cBox${i}" style=" display:none;">
                                <p style="paddingBottom:0px;">${dto.ans }</p>
                                <p style="background:url(''); paddingBottom:0px; paddingTop:7px;"></p>
                            </div>
                        </li>
                        </c:forEach>
                     
                        <div class="uiMoreLoad">
                            <button type='button' class="bt more">
                                FAQ 더보기
                            </button>
                        </div>
                    </ul>
                    <dl class="guide">
                        <dt>고객센터 이용안내</dt>
                        <dd>
                            <p class="box">
                                <span class="call">1644-9601</span>
                                <span>운영 시간 : 평일 10:00 ~ 18:00</span>
                                <span>점심 시간 : 12:30 ~ 13:30</span>
                            </p>
                            <span class="btnSet">
                                <a href='' class="btn lg a base">1:1 문의하기</a>
                                <a href='' class="btn lg a base">1:1 문의내역</a>
                            </span>
                        </dd>

                    </dl>

                </section>
            </div>

</main>

<script type="text/javascript">


</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


</body>
</html>