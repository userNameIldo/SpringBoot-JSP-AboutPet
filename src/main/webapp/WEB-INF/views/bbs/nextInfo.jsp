<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/_css/style.pc.css"/>
<link rel="stylesheet" type="text/css" href="resources/_css/nextInfo.css">
<style type="text/css">

</style>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>


<script type="text/javascript">

$(document).ready(function(){
	
	window.onload = function(){
		
		$('.btn_on').hide();
		
	}

	$(".tag_btn").click(function(e){

		if($(this).hasClass("active")){
			
			$(this).attr('class', 'tag_btn');

		}else{

			$(this).attr('class', 'tag_btn active');
			
		}
		if($('.tag_btn').hasClass("active")){
			$('.btn_off').hide();
			$('.btn_on').show();
			
		}else{
			$('.btn_on').hide();
			$('.btn_off').show();
		}
		
	});

});

function sendIt(){

	var tagArray = "";
	
	$(".tag_btn").each(function(){
		
		if($(this).hasClass("active")){
			tagArray += $(this).attr("value") + ",";
		}

	});
	
	$.ajax({
		url : 'nextInfo_ok.action',
		type : 'post',
		data : {
			tagArray : tagArray
		},
		success : function(data){
			
			alert('관심태그 설정이 완료 되었습니다.');

			location.href="/list.action";

		},
		error : function(error){
			console.log(error);
			alert(error);
		}
	});
	

}


/*
$(function(){
	
	var saveTag = "";
	
	$(".tag_btn").click(function(){
		
		$(this).css("background", "#669aff");
		$(this).css("color", "white");
		
		saveTag += $(this).val() + ",";	
		
		saveTag.substring(0, saveTag.lastIndexOf(","));
		
		alert(saveTag);
		
	});
	
	$(".btn_on").click(function(){
		
		$.ajax({
			url : '/nextInfo_ok.action',
			type : 'get',
			data : {
				saveTag : saveTage,
			},
			success : function(){
				
				alert("관심태그가 설정되었습니다.");
				
			},
			error : function(){
				
			}
			
			
		});
		
	});
	
	
});
*/

</script>

</head>
<body class="body login srch isPc gnb_ac">
<div class="wrap" id="wrap">
	<main class="container page login srch" id="container">
		<div class="inr" style="min-height: 1205px;">
			<div class="contents" id="contents">
				<div class="pc-tit"></div>
				<div class="fake-pop">
				<form action="" name="myForm" method="post">
					<div class="tag-choise">
						<h2 class="sm">
							<span class="gtc"> 관심태그 선택</span>
							후 어바웃펫을 시작하세요!
						</h2>
						<p class="chocon">콘텐츠 맞춤추천을 받을 수 있어요</p>
						<p class="jungbok">중복 선택 가능</p>
						<br/>
						<div class="filter-area t2">
							<div class="filter-item">
								<div class="tag">
									<input type="button" class="tag_btn" value="강아지"/>
									<input type="button" class="tag_btn" value="재미"/>
									<input type="button" class="tag_btn" value="귀여움"/>
									<input type="button" class="tag_btn" value="다이어트"/>
									<input type="button" class="tag_btn" value="고양이"/>
									<input type="button" class="tag_btn" value="힐링"/>
									<input type="button" class="tag_btn" value="행동교정"/>
									<input type="button" class="tag_btn" value="감동"/>
									<input type="button" class="tag_btn" value="구조"/>
									<input type="button" class="tag_btn" value="훈련"/>
								</div>
							</div>
						</div>					
					</div>
					<div class="pbt pull">
						<div>
							<input type ="button" class="btn_off" onclick="" value="완료"/>
						</div>
						<div>
							<a href="javascript:sendIt();" id="finbtn" class="btn_on" data-content="" data-url="">완료</a>
						</div>
					
					
					</div>
				</form>
				</div>
				
			
			</div>
		
		</div>
	
	
	</main>









</div>







</body>
</html>