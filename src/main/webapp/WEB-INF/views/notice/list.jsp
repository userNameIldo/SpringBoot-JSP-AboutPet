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
<link rel="stylesheet" href="resources/css/notice/list.css" type="text/css"/>
<link rel="stylesheet" href="/webjars/bootstrap/5.1.1/css/bootstrap.min.css"/>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script src="/webjars/bootstrap/5.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">


$(document).ready(function(){
	
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
                    <div class="pc-tit"><h2>공지사항</h2></div>
                
             
                <!--  FAQ 컨텐트 영역  -->
                <section class="sect flist notilist">
                    <!--  검색결과 없을 때  -->
                    
                     
                    <ul class="uiAccd" >
                    <c:forEach var="dto" items="${list }">
                        <li value="${dto.n_num}">
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis" id="btnTog">
                                        ${dto.n_title}
                                    </span>
                                    <span class="data" id="btnTog">${dto.n_created} </span>
                                     
                                </p>
                                <button type='button' class="btnTog" id="btnTog" >버튼</button>
                            </div>
                            <div class="cBox" id="cBox" style="display: none;"><!-- style="display: none;" -->
                                <p style="paddingBottom:0px;">${dto.n_content }</p>
                                <p style="background:url(''); paddingBottom:0px; paddingTop:7px;"></p>
                            </div>
                        </li>
                     </c:forEach>
                        
                    </ul>
                   

                </section>
            </div>

</main>




<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<script type="text/javascript">


</script>

</body>
</html>