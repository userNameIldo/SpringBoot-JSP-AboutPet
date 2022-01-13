<%@ page contentType="text/html; charset=UTF-8" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>aboutPatTV</title>

<link rel="stylesheet" type="text/css" href="/resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/created.css"/>

<script type="text/javascript" src="/resources/js/util.js"></script>
<script type="text/javascript">

	function sendIt(){
		
		var f = document.myForm;
		/*
		str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
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
		
		f.action = "/TVcreated_ok.action";
		f.submit();
		
	}

</script>

</head>
<body>

<div id="bbs">
	<div id="bbs_title">
	게 시 판
	</div>
	
	<form action="" method="post" name="myForm" enctype="multipart/form-data">
	<div id="bbsCreated">
	
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>타이틀</dt>
				<dd>
				<input type="text" name="title" size="60" maxlength="100"
				class="boxTF"/>
				</dd>
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>작성자</dt>
				<dd>
				<input type="text" name="name" size="35" maxlength="20"
				class="boxTF"/>
				</dd>
			</dl>		
		</div>
		
		<!--  -->
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>category</dt>
				<dd>
					<select name="category">
						<option value="강아지">강아지</option>
						<option value="고양이">고양이</option>
					</select>
				</dd>							
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>subcategory</dt>
				<dd>
					<select name="subcategory">
						<option value="일상">일상</option>
						<option value="상식">상식</option>
						<option value="정보">정보</option>
						<option value="유기">스쿨펫</option>
						<option value="병원">병원</option>
					</select>
				</dd>							
			</dl>		
		</div>
		
		<div class="bbsCreated_bottomLine">
			<dl>
				<dt>tag</dt>
				<dd>
					<select name="tag">
						<option value="강아지">강아지</option>
						<option value="고양이">고양이</option>
						<option value="첫번째">첫번째</option>
						<option value="아이컨택">아이컨택</option>
						<option value="엎드려">엎드려</option>
						<option value="앉아">앉아</option>
					</select>
				</dd>							
			</dl>		
		</div>
		
		<div id="bbsCreated_content">
			<dl>
				<dt>상세내용</dt>
				<dd>
				<textarea rows="12" cols="63" name="videoinfo" class="boxTA"></textarea>
				</dd>
			</dl>		
		</div>
		
			<div class="bbsCreated_bottomLine">
			<dl>
				<dt>thum</dt>
				<dd>
					<input multiple="multiple" type="file" name="thumfiles">
				</dd>							
			</dl>		
		</div>
		

		
			<div class="bbsCreated_bottomLine">
			<dl>
				<dt>video</dt>
				<dd>
					<input multiple="multiple" type="file" name="videofiles">
				</dd>							
			</dl>		
			
			
			<div class="bbsCreated_bottomLine">
			<dl>
				<dt>videoUrl</dt>
				<dd>
				<input type="text" name="videoUrl" size="60" maxlength="1000"
				class="boxTF"/>
				</dd>							
			</dl>
			
			</div>
			<div class="bbsCreated_bottomLine">
			<dl>
				<dt>link</dt>
				<dd>
				<input type="text" name="link" size="60" maxlength="1000"
				class="boxTF"/>
				</dd>							
			</dl>
			
			</div>
		</div>

	</div>
	
	<div id="bbsCreated_footer">
		<input type="button" value=" 등록하기 " class="btn2" 
		onclick="sendIt();"/>
		<input type="reset" value=" 다시입력 " class="btn2" 
		onclick="document.myForm.subject.focus();"/>
		<input type="button" value=" 작성취소 " class="btn2" 
		onclick="javascript:location.href='<%=cp%>/TVlist.action'"/>	
	</div>
		
	</form>

</div>





</body>
</html>




