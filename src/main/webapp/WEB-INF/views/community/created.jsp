<%@ page contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게 시 판</title>

<link rel="stylesheet" href="resources/css/style.css" type="text/css"/>
<link rel="stylesheet" href="resources/css/created.css" type="text/css"/>

<script type="text/javascript" src="resources/js/util.js"></script>

<script type="text/javascript">

	function sendIt(){
		
		f = document.myForm;
		/*
		str = f.title.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.title.value = str;
		
		str = f.name.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}		
		
		if(!isValidKorean(str)){			
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		}
		
		f.name.value = str;
		
		/*
		if(f.email.value){
			
			if(!isValidEmail(f.email.value)){
				alert("\n정상적인 E-Mail을 입력하세요.");
				f.email.focus();
				return;
			}
		}
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		
		str = f.pwd.value;
		str = str.trim();
		if(!str){
			alert("\n패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		f.pwd.value = str;
		*/
		
		f.action = "/created_ok.action";
		f.submit();
		
	}

</script>

</head>
<body>

<div id="bbs">
	<div id="bbs_title">
	${userId }	
	</div>
	<form action="" name="myForm" method="post" enctype="multipart/form-data">
	<div id="bbsCreated">
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>제&nbsp;&nbsp;&nbsp;&nbsp;목</dt>
				<dd>
					<input type="text" name="title" size="74" maxlength="100" class="boxTF"/>
				</dd>							
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>category</dt>
				<dd>
					<select name="category">
						<option value="일상">일상</option>
						<option value="실종">실종</option>
					</select>
				</dd>							
			</dl>		
		</div>
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>picture</dt>
				<dd>
					<input multiple="multiple" type="file" name="files">
				</dd>							
			</dl>		
		</div>
		<div id="bbsCreated_content" >
			<dl>
				<dt>내&nbsp;&nbsp;&nbsp;&nbsp;용</dt>
				<dd>
					<textarea rows="12" cols="63" name="content" class="boxTA"></textarea>
				</dd>							
			</dl>		
		</div>
		<div>
		
		</div>
		
	
	</div>	
	
	<div id="bbsCreated_footer">
	<input type="hidden" name="userName" value="${userId }"/>
	<input type="button" value=" 등록하기 " class="btn2" 
	onclick="sendIt();"/>
	<input type="reset" value=" 다시입력 " class="btn2" 
	onclick="document.myForm.subject.focus();"/>
	<input type="button" value=" 작성취소 " class="btn2" 
	onclick="javascript:location.href='/list.action';"/>	
	</div>
	
	</form>
	
</div>

</body>
</html>




































