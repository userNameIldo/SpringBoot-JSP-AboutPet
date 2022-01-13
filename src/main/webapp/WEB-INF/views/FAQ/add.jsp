<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ추가</title>

<link rel="stylesheet" href="resources/css/FAQ/style.css" type="text/css"/>
<link rel="stylesheet" href="resources/css/FAQ/add.css" type="text/css"/>

<script type="text/javascript" src="resources/js/util.js"></script>

<script type="text/javascript">

	function sendIt(){
		
		f = document.myForm;
		
		str = f.ques.value;
		str = str.trim();
		if(!str){
			alert("\n질문입력");
			f.ques.focus();
			return;
		}
		f.ques.value = str;
		
		str = f.ans.value;
		str = str.trim();
		if(!str){
			alert("\n응답입력");
			f.ans.focus();
			return;
		}
		f.ans.value = str;
		
		str = f.faq_cat.value;
		str = str.trim();
		if(!str){
			alert("\n카테고리선택");
			f.faq_cat.focus();
			return;
		}
		f.faq_cat.value = str;
		
		f.action = "<%=cp%>/faqadd_ok.action";
		f.submit();
		
	}

</script>
</head>
<body>

<div id="bbs">
	<div id="bbs_title">
	FAQ추가
	</div>
	
	<form action="" name="myForm" method="post">
	<div id="bbsCreated">
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>질&nbsp;&nbsp;&nbsp;&nbsp;문</dt>
				<dd>
					<input type="text" name="ques" size="74" maxlength="100" class="boxTF"/>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content" >
			<dl>
				<dt>응&nbsp;&nbsp;&nbsp;&nbsp;답</dt>
				<dd>
					<textarea rows="12" cols="63" name="ans" class="boxTA"></textarea>
				</dd>							
			</dl>		
		</div>
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>카테고리</dt>
				<dd>
					<select id="faq_cat" name="faq_cat">
						<option value="">선택</option>
						<option value="회원/정보">회원/정보</option>
						<option value="주문/결제">주문/결제</option>
						<option value="상품문의">상품문의 </option>
						<option value="취소/환불">취소/환불</option>
						<option value="배송문의">배송문의</option>
						<option value="교환/재배송">교환/재배송</option>
						<option value="반품/AS">반품/AS</option>
						<option value="쿠폰/적립금">쿠폰/적립금</option>
						<option value="프로모션">프로모션</option>
						<option value="기타">기타</option>
					</select>
				</dd>
			</dl>
		</div>
	</div>
	
	<div id="bbsCreated_footer">
		<input type="button" value="등록하기" class="btn2" onclick="sendIt();"/>
		<input type="reset" value="다시입력" class="btn2" 
		onclick="document.myForm.ques.focus();"/>
		<input type="button" value="작성취소" class="btn2" 
		onclick="javascript:location.href='<%=cp%>/index"/>
	</div>
	
	</form>



</div>

</body>
</html>