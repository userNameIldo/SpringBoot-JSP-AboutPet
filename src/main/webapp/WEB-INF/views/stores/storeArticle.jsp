<%@page import="java.io.PrintWriter"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	//db에 저장된 id
	String dtoId = (String)request.getAttribute("dtoId");
	
	//세션에 올라와있는 id
	String userId = (String)session.getAttribute("userId");
 


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>

<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Noto+Sans+KR:wght@100;300;400&display=swap" rel="stylesheet">
<style type="text/css">
button{
  background:#5882FA;
  color:#fff;
  border:none;
  position:relative;
  height:30px;
  width:50px;
  font-size:1.6em;
  padding:0em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
  font-size: 15px;
  border-radius: 7px;
}
button:hover{
  background:#fff;
  color:#5882FA;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
}

</style>
<script type="text/javascript">

function sendIt1(){
    var f=document.myForm1;
    f.action = "<%=cp%>/jlist.action";
    f.submit();
 }

 function sendIt(){
	var f=document.myForm;
	f.action = "<%=cp%>/tag_ok.action";
	f.submit();
 }

 
 /* 북마크 ajax */
 
 $(document).ready(function(){

		window.onload = function(){
			
		}
		
		//북마크
		$('.storeBtnBasic.btn-bookmark').click(function(){
			
			if($(this).hasClass("true")){
				var no = $(this).attr("idx");
				$.ajax({
					url : 'cancleZzim.action',
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
				
				$(this).attr('class', '.storeBtnBasic btn-bookmark false');
				
			}else{
				var no = $(this).attr("idx");
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
				
				$(this).attr('class', '.storeBtnBasic btn-bookmark true');
			}
				
			
			
			
		});	
			
		
	});
 
 
 
 	function sendIt(){
		
		var f = document.searchForm;
		
		f.action = "/";
		f.submit();
		
	}
 
 
</script>
<style type="text/css">
.tags{
	cursor: pointer;
	color: blue;
	font-weight: bold;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<div style="width:1600px; height:1200px; border:3px solid #D6D4A6; position: ">

<div style="width:500px; height:500px;  border-radius:15px; position: absolute; left: 30%; top: 20%; " >
<c:set var="fileName" value="${fn:split(dto.fileName,',')}"></c:set>
<c:forEach var="Name" items="${fileName}">
	<img src="/uploadFiles/${Name }" width="400px;" height="400px;" style="border-radius:15px;"><br>
</c:forEach>
</div>

<div style=" position:absolute; left:58%; top: 20%; height: 500px; width: 450px; border:3px solid #D6D4A6;">
	<a style="font-weight:bold; font-size: 15px;">${dto.brand}</a>
	<br><a style="font-size: 30px; font-family: Noto Sans KR; font-weight: bold;" >${dto.productName}</a>
	
	<c:if test="${dto.discount!=0 }">
		<dl>
			
		
				<a style="font-size: 20px; color: #5882FA; font-weight: bold;"><fmt:parseNumber integerOnly="true" value="${dto.discount/dto.price*100 }"/>%</a>
				<a style="font-size: 30px; font-weight: bold;">${dto.price-dto.discount }원</a>
				<del>${dto.price}원</del>
			
		</dl>

	</c:if>
	<c:if test="${dto.discount==0 }">
		<br><dl style="font-size: large; font-weight: bolder;">${dto.price}원</dl>
	</c:if>
	
	
<a style="font-size: 15px; font-weight: bold;">${dto.created}</a><br>
	<a style="font-size: 15px; font-weight: bold;">배송정보 : ${dto.deliveryInfo}</a><br>
	<div style=" position:absolute; left:5%; top: 37%; height: 25px; width: 300px; border-radius:10px;">
<i class="fas fa-map-marker-alt" style="color: #848484">&nbsp;<a style="font-size: 13px; color: #1C1C1C">배송지를 등록하고 배송시간을 확인하세요</a></i>
	</div>
	<div  style=" position:absolute; left:5%; top: 42%; height: 200px; width: 410px; border-radius:10px; border:1px solid #D8D8D8;">
	<div style=" position:absolute; left:7%; top: 16%; height: 30px; width: 75px; /* border:3px solid #D6D4A6; */ font-weight: bold; font-size: 12px;">
	<i class="fas fa-bolt" style="color: #FFBF00"><a style="color: black"> 당일배송</a></i>
	</div>
	<div style=" position:absolute; left:25%; top: 13%; height: 60px; width: 290px; /* border:3px solid #D6D4A6; */ font-weight: bold; font-size: 15px;">	
		<a style="font-size: 13px; color: #5882FA; font-weight: bold;">내일(12/9) 오후 4~10시</a>
		<a style="font-size: 13px;font-weight: bold;">도착</a><br>
		<a style="font-size: 13px; color: #A4A4A4; font-weight: bold;">오전 10시30분 전 결제완료 시 (10시 33분 남음)</a> 
	</div>
	
	<div style=" position:absolute; left:7%; top: 40%; height: 30px; width: 75px; /* border:3px solid #D6D4A6; */ font-weight: bold; font-size: 12px;">
	<i class="fas fa-moon" style="color: #5882FA"><a style="color: black">새벽배송</a></i>
	</div>
	<div style=" position:absolute; left:25%; top: 38%; height: 60px; width: 290px; /* border:3px solid #D6D4A6; */ font-weight: bold; font-size: 15px;">
		<a style="font-size: 13px; color: #5882FA; font-weight: bold;">내일(12/9) 오후 4~10시</a>
		<a style="font-size: 13px;font-weight: bold;">도착</a><br>
		<a style="font-size: 13px; color: #A4A4A4; font-weight: bold;">오후 9시 전 결제완료 시 (20시 57분 남음)</a> 
	</div>
	



	
	<div style=" position:absolute; left:7%; top: 67%; height: 30px; width: 75px;/*  border:3px solid #D6D4A6; */ font-weight: bold; font-size: 12px;">
	<i class="fas fa-bookmark"><a>&nbsp;GS&nbsp;배송</a></i></div>
	<div style=" position:absolute; left:25%; top: 65%; height: 90px; width: 290px; /* border:3px solid #D6D4A6; */ font-weight: bold; font-size: 15px;">
		<a style="font-size: 13px; color: #5882FA; font-weight: bold;">1~2일 소요</a>
		<a style="font-size: 13px;font-weight: bold;">예정</a><br>
		<a style="font-size: 13px;font-weight: bold;">오후 6시 전</a>
		<a style="font-size: 11px; color: #A4A4A4; font-weight: bold;">주문 : 다음날 도착 (98%) (17시 57분 남음)</a><br>
		<a style="font-size: 13px;font-weight: bold;">오후 6시 이후</a>
		<a style="font-size: 11px; color: #A4A4A4; font-weight: bold;">주문 : 2일 이내 도착</a>
	
	</div>
	
	</div>
<%-- 	<div style=" position:absolute; left:70%; top: 83%; height: 50px; width: 50px; border-radius:10px;">
	<button onclick="location='<%=cp%>/updatedArticle.action?num=${dto.num}&${params}';">수정</button>
	</div>
	
	<div style=" position:absolute; left:85%; top: 83%; height: 50px; width: 50px; border-radius:10px;">
	<button onclick="location='<%=cp%>/deletedArticle.action?num=${dto.num}&${params}';">삭제</button>
	</div> --%>
	
	<%
	if(userId!=null && userId.equals(dtoId)) {
	%>
	<div style=" position:absolute; left:70%; top: 83%; height: 50px; width: 50px; border-radius:10px;">
		<button onclick="location='<%=cp%>/updatedArticle.action?num=${dto.num}&${params}';">수정</button>
		</div>
		
		<div style=" position:absolute; left:85%; top: 83%; height: 50px; width: 50px; border-radius:10px;">
		<button onclick="location='<%=cp%>/deletedArticle.action?num=${dto.num}&${params}';">삭제</button>
		</div>
	<%
	}
	%>	
	

</div>

</div>


<div>


</div>




 
 
 
 
 
 
 
 
 
 
 
 
 





<div id="rightFooter">
	<input type="button" value=" 리스트 " class="btn2" 
	onclick="location='<%=cp%>/homeStore.action?${params}';"/>
</div>	

	<form action="" method="post" name="myForm1">
		<input type="hidden" name="userId" value="${userId }">
		<input type="hidden" name="productNum" value="${dto.productNum }">
		<input type="hidden" name="productName" value="${dto.productName }">
		<input type="hidden" name="price" value="${dto.price }"> 	
		<input type="button" value="전송" onclick="sendIt1();">
	</form>

<%-- <form action="<%=cp%>/cart.action" method="post" name="form1">
	<input type="hidden" name="productNum" value="${dto.productNum }">
	<select name="amount">
		<c:forEach begin="1" end="10" var="i">
		<option value="${i }">${i }</option>
		</c:forEach>
	</select>&nbsp;
	<input type="submit" value="장바구니에 담기">
</form> --%>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>