<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="resource/js/util.js"></script>

<script type="text/javascript">
function sendIt(){
	
	var f=document.myForm;
 	var fileCheck = document.getElementById("files").value;
	var mainCheck = document.getElementById("cate0").value;
	var subCheck = document.getElementById("cate1").value;

	str = f.productName.value;
	str = str.trim();
	if(!str) {
		alert("\n제품명을 입력하세요.")
		f.productName.focus();
		return;		
	}
	f.productName.value = str;
	
	
	str = f.brand.value;
	str = str.trim();
	if(!str) {
		alert("\n브랜드명을 입력하세요.")
		f.brand.focus();
		return;		
	}
	f.brand.value = str;
	
	
	 if(!fileCheck) {
		alert("\n제품사진을 추가하세요.")
		return;		
	} 
	 
	if(mainCheck=='0') {
		alert("\n메인카테고리를 추가하세요.")
		return;		
	}
	
	if(subCheck=='0') {
		alert("\n서브카테고리를 추가하세요.")
		return;		
	}
	

	str = f.price.value;
	str = str.trim();
	if(!str) {
		alert("\n가격을 입력하세요.")
		f.price.focus();
		return;		
	}
	f.price.value = str;
	
	
	str = f.deliveryInfo.value;
	str = str.trim();
	if(!str) {
		alert("\n배송정보를 추가하세요.")
		f.deliveryInfo.focus();
		return;		
	}
	f.deliveryInfo.value = str;
	
	f.action = "<%=cp%>/updatedArticle_ok.action";
	f.submit();
	

}


//카테고리 추가 작업
//카테고리 만들기
//대분류
var cates = false;

function update_selected() {
	//cate1의 val을 0으로 지정
	$("#cate1").val(0);
	
	$("#cate1").find("option[value!=0]").detach();
	$("#cate1").append(cates.filter(".cate" + $(this).val()));
}

$(function() {
	cates = $("#cate1").find("option[value!=0]");
	cates.detach();
	$("#cate0").change(update_selected);
	$("#cate0").trigger("change");
});

</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<form action="" method="post" name="myForm" enctype="multipart/form-data">

브랜드:<input type="text" name="brand" value="${dto.brand }"><br>
제품명:<input type="text" name="productName" value="${dto.productName }"><br>

제품사진:<input multiple="multiple" type="file" name="files"  id="files" size="70"><br>

<label>애완동물</label>
<select id="cate0" name="mainCategory">
	<option value="0">카테고리 선택</option>
	<option value="강아지" onclick="">강아지</option>
	<option value="고양이" onclick="">고양이</option>
	<option value="관상어" onclick="">관상어</option>
	<option value="소동물" onclick="">소동물</option>
</select>
<label>제품분류</label>

<select id="cate1" name="subCategory">
<!-- 강아지 소분류 -->
	<option value="0" class="cate1">카테고리 선택</option>
	<option value="강아지사료" class="cate강아지">사료</option>
	<option value="고양이간식" class="cate강아지">간식</option>
	<option value="강아지건강관리" class="cate강아지">건강관리</option>
	<option value="위생/배변" class="cate강아지">위생/배변</option>
	<option value="미용/목욕" class="cate강아지">미용/목욕</option>
	<option value="강아지급식/급수기" class="cate강아지">급식/급수기</option>
	<option value="장난감/훈련" class="cate강아지">장난감/훈련</option>
	<option value="하우스" class="cate강아지">하우스</option>
	
<!-- 고양이 소분류 -->
	<option value="고양이사료" class="cate고양이">사료</option>
	<option value="고양이간식" class="cate고양이">간식</option>
	<option value="고양이건강관리" class="cate고양이">건강관리</option>
	<option value="모래" class="cate고양이">모래</option>
	<option value="화장실/위생" class="cate고양이">화장실/위생</option>
	<option value="미용/목욕" class="cate고양이">미용/목욕</option>
	<option value="고양이급식/급수기" class="cate고양이">급식/급수기</option>
	<option value="장난감/캣닢" class="cate고양이">장난감/캣닢</option>
	
<!-- 관상어 소분류-->
	<option value="수초" class="cate관상어">수초</option>
	<option value="관상어사료" class="cate관상어">사료</option>
	<option value="컨디셔너" class="cate관상어">컨디셔너</option>
	<option value="어항" class="cate관상어">어항</option>
	<option value="바닥재" class="cate관상어">바닥재</option>
	<option value="여과용품" class="cate관상어">여과용품</option>
	<option value="에어용품" class="cate관상어">에어용품</option>
	<option value="조명" class="cate관상어">조명</option>
	
<!-- 소동물 소분류-->	
	<option value="햄스터/저빌/래트" class="cate소동물">햄스터/저빌/래트</option>
	<option value="토끼/기니피그/친칠라/데구" class="cate소동물">토끼/기니피그/친칠라/데구</option>
	<option value="고슴도치" class="cate소동물">고슴도치</option>
	<option value="새" class="cate소동물">새</option>
	<option value="곤충" class="cate소동물">곤충</option>
	<option value="파충류" class="cate소동물">파충류</option>
</select><br>
가격:<input type="text" name="price" value="${dto.price }"><br>
태그:<input type="text" name="tag" value="${dto.tag }"><br>
할인가격:<input type="text" name="discount" value="${dto.discount }"><br>
배송정보<br>
<textarea rows="8" cols="50" name="deliveryInfo" placeholder="ex)배송비용:xxxx원&#13;&#10;xxxx원이상 무료배송">${dto.deliveryInfo }</textarea><br>
<input type="hidden" name="productNum" value="${dto.productNum }"/>
<input type="hidden" name="num" value="${dto.num }"/>
<input type="hidden" name="pageNum" value="${pageNum }"/>
<input type="hidden" name="searchKey" value="${searchKey }"/>
<input type="hidden" name="searchValue" value="${searchValue }"/>



<input type="button" value=" 수정하기 " onclick="sendIt();">
<input type="reset" value=" 다시입력 " onclick="document.myForm.brand.focus();">
<input type="button" value=" 수정취소 " onclick="location='<%=cp %>/homeStore.action?${params }';">

</form>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>