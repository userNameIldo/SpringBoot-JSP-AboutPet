<%@ page contentType="text/html; charset=UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice추가</title>

<link rel="stylesheet" href="resources/css/FAQ/style.css" type="text/css"/>
<link rel="stylesheet" href="resources/css/FAQ/add.css" type="text/css"/>
<link rel="stylesheet" href="webjars/jquery-ui/1.12.1/jquery-ui.css" type="text/css"/>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script src="/webjars/jquery-ui/1.12.1/jquery-ui.min.js"></script>

<script type="text/javascript" src="resources/js/util.js"></script>

<script type="text/javascript">

	function sendIt(){
		
		f = document.myForm;
		
		str = f.t_title.value;
		str = str.trim();
		if(!str){
			alert("\n제목입력");
			f.t_title.focus();
			return;
		}
		f.t_title.value = str;
		
		str = f.t_content.value;
		str = str.trim();
		if(!str){
			alert("\n내용입력");
			f.t_content.focus();
			return;
		}
		f.t_content.value = str;
		
		str = f.t_startdate.value;
		str = str.trim();
		if(!str){
			alert("\n날짜선택");
			f.t_startdate.focus();
			return;
		}
		f.t_startdate.value = str;
		
		str = f.t_cat.value;
		str = str.trim();
		if(!str){
			alert("\n카테고리선택");
			f.t_cat.focus();
			return;
		}
		f.t_cat.value = str;
		
		f.action = "<%=cp%>/termsadd_ok.action";
		f.submit();
		
	}
	
	const config = {
			dateFormat: 'yy-mm-dd'	
		}
	
	$(function() {
		  $( "input[name='t_startdate']" ).datepicker(config);
		});

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
				<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd>
					<input type="text" name="t_title" size="74" maxlength="100" class="boxTF"/>
				</dd>
			</dl>
		</div>
		<div id="bbsCreated_content" >
			<dl>
				<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
					<textarea rows="12" cols="63" name="t_content" class="boxTA"></textarea>
				</dd>							
			</dl>		
		</div>
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>날짜</dt>
				<dd>
					<input name="t_startdate" size="74" maxlength="100" class="boxTF"/>
				</dd>
			</dl>
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>카테고리</dt>
				<dd>
					<select id="t_cat" name="t_cat">
						<option value="">선택</option>
						<option value="필수">필수</option>
						<option value="선택">선택</option>
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
		onclick="javascript:location.href='<%=cp%>/"/>
	</div>
	
	</form>



</div>

</body>
</html>