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
<link rel="stylesheet" href="resources/css/terms/list.css" type="text/css"/>
<link rel="stylesheet" href="/webjars/bootstrap/5.1.1/css/bootstrap.min.css"/>
<script src="/webjars/jquery/3.6.0/dist/jquery.min.js"></script>
<script src="/webjars/bootstrap/5.1.1/js/bootstrap.min.js"></script>

<script type="text/javascript">



var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
  myInput.focus()
});



</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<main>

<div class="inr"   style="min-height: 780px;">
                <div class="contents"/>
                    <div class="pc-tit"><h2>이용약관</h2></div>
                
             
                <!--  컨텐트 영역  -->
                <section class="sect flist notilist">
                       
                    <ul class="uiAccd" >
                   
                        <li>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop" data-bs-toggle="modal"> [필수] 서비스 이용약관</a>
                                    </span> 
                                </p>
                            </div>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop1" data-bs-toggle="modal"> [필수] 개인정보 처리 방침</a>
                                    </span> 
                                </p>
                            </div>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop4" data-bs-toggle="modal">[필수] 만 14세 이상입니다.</a>
                                    </span> 
                                </p>
                            </div>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop5" data-bs-toggle="modal">[필수] 개인정보 수집/이용 동의</a>
                                    </span> 
                                </p>
                            </div>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop6" data-bs-toggle="modal">[필수] GS리테일 멤버십(THE POP)회원 약관</a>
                                    </span> 
                                </p>
                            </div>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop7" data-bs-toggle="modal">[필수] 개인정보 제 3자제공동의(GS리테일/어바웃펫)</a>
                                    </span> 
                                </p>
                            </div>
                            <div class="hBox">
                                <p class="btnChk">
                                    <span class="tit no_ellipsis">
                                       <a href="#staticBackdrop8" data-bs-toggle="modal">[필수] 개인정보 제 3자제공동의(어바웃펫/GS리테일)</a>
                                    </span> 
                                </p>
                            </div>
                        </li>
                     
                        
                    </ul>
                   

                </section>
            </div>

</main>




<jsp:include page="/WEB-INF/views/common/footer.jsp"/>



  
		<!-- Modal -->
        <div class="modal fade" id="staticBackdrop4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">만 14세 이상입니다.</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<div class="modal-body">
				만 14세 이상입니다. 
		      	</div>
		      <div class="modal-footer"></div>
    		</div>
 		 </div>
		</div>   
		<!-- Modal -->
        <div class="modal fade" id="staticBackdrop5" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">개인정보 수집/이용 동의</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<div class="modal-body">
				[필수] 개인정보 수집/이용 동의<br/>
				<br/><br/><br/>
				어바웃펫 이용과 관련하여, 본인은 동의내용을 숙지하였으며, 이에 따라 본인의 개인정보를 어바웃펫이 수집 및 이용하는 것에 대해 동의합니다.
		      	</div>
		      <div class="modal-footer"></div>
    		</div>
 		 </div>
		</div>   
		<!-- Modal -->
        <div class="modal fade" id="staticBackdrop6" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">GS리테일 멤버십(THE POP)회원 약관</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<div class="modal-body">
				GS리테일 멤버십(THE POP) 회원 약관<br/>
				<br/>
				2020.09.17 개정판 고시<br/>
				<br/>
				GS리테일 멤버십(THE POP) 회원 약관<br/>
				<br/>
				제1장 총칙<br/>
				제1조(목적)<br/>
				<br/>
				본 약관은 주식회사 GS리테일이 제공하는 GS리테일(THE POP) 멤버십 서비스 및 팝카드 서비스를 회원들이 이용함에 있어 회사와 회원 간의 권리 의무 및 기타 필요한 사항 등을 규정하는데 그 목적이 있습니다. GS리테일의 사업 분야인 GS25, GS THE FRESH, 랄라블라 및 GS Fresh Mall, 달리살다,  Market For﻿ 등(이하 "GS리테일")이 운영하는 아래 인터넷 웹사이트(이하 "사이트") 및 어플리케이션(이하 "앱")에서 제공하는 서비스도 포함합니다.<br/>
				<br/>
				("www.gsretail.com", "m.gsretail.com", "gs25.gsretail.com", "gsthefresh.gsretail.com", "www.gsfresh.com", "http://lalavla.gsretail.com", "https://gs25app.gsretail.com:5443/down.gs", "http://gsthefresh.gsretail.com/_ui/mobile/common/app/gssupermarket_app.html", "http://m.gsfresh.com/eretail.appApi.appGate.dev?target=mainview&url=http://m.gsfresh.com/eretail.main.dev", "http://m.lalavla.com", "https://www.popcard.co.kr", "https://m-thepop.gsretail.com:6143/resources/pc.html", "www.gsfreshmall.com", "m.gsfreshmall.com", "www.dalisalda.com", "m.dalisalda.com", “www.marketfor.com”, “m.marketfor.com” )<br/>
				<br/>
				제2조(정의)<br/>
				<br/>
				① "회원"이란 GS리테일에서 제공하는 서비스 이용을 위해 본 약관에 동의하고 GS리테일이 정한 방법과 절차에 따라 개인정보를 제공함으로서 서비스 이용 권한을 부여받은 자를 말합니다. 회원으로 가입하지 않은 "비회원" 혹은 본인인증이 완료되지 않은 "미인증 회원"은 회사가 제공하는 일부 서비스만 이용할 수 있습니다.<br/>
				<br/>
				② "회원등급"이란 회사의 재화를 구매한 결과를 바탕으로 회사가 정한 기준에 따라 회사가 회원에게 부여하는 등급을 말합니다.<br/>
				<br/>
				③ "서비스"라 함은 회원에게 제공하는 GS리테일 서비스 및 GS리테일 관련 제반 서비스를 의미합니다.<br/>
				<br/>
				1. "GS리테일 멤버십(THE POP) 서비스"(이하 "멤버십 서비스")라 함은 회원을 위해 GS리테일이 제공하는 서비스로서 그 개요는 본 약관 제7조에 기술된 바와 같습니다.<br/>
				<br/>
				2. "팝카드 서비스"란 회원을 위해 GS리테일이 제공하는 서비스로서 회원이 GS25, GS THE FRESH 및 랄라블라, Market For﻿ 온라인몰에서 재화, 용역 등을 팝카드로 결제시 할인·증정 등의 혜택을 제공하는 것을 말합니다. 자세한 내용은 본 약관 제14조에 기술된 바와 같습니다.<br/>
				<br/>
				④ "팝카드"란 GS리테일 및 GS리테일과 제휴를 맺은 자(이하 "제휴가맹점")가 회원으로 하여금 멤버십 서비스 및 팝카드 서비스를 이용할 수 있도록 발급한 카드(모바일 카드 포함)로서 그 종류 및 해당카드의 정의는 아래와 같습니다.<br/>
				<br/>
				1. 팝티머니(일반) 카드: 티머니 카드(주)티머니가 정의한 기술사양에 따라 (주)티머니가 인증한 칩 또는 어플리케이션을 내장한 선불전자 지급수단)를 기반으로 대중교통은 물론 각종 유통업체에서 사용이 가능하고, 다양한 멤버십 카드와의 제휴를 통해 포인트의 적립·사용이 가능한 카드<br/>
				<br/>
				2. 팝티머니(금융) 카드: GS리테일과 제휴를 맺은 은행 및 카드사에서 발급하는 신용/체크카드를 기반으로 신용/체크카드의 기능을 그대로 이용하면서 팝티머니(일반) 카드의 기능을 함께 사용할 수 있는 카드<br/>
				<br/>
				3. 멤버십 팝카드: 주식회사 한국선불카드가 정의한 기술 사양에 따라 회사가 인증한 멤버십팝카드(모바일 포함) 브랜드를 부착한 선불식 충전카드로 GS리테일 보유가맹점 및 GS리테일 또는 한국선불카드가 제휴한 가맹점에서 사용할 수 있는 카드<br/>
				<br/>
				4. 팝신용/체크카드: GS리테일과 제휴를 맺은 은행 및 카드사에서 발급하는 신용/체크 카드를 기반으로 신용/체크 카드의 기능을 그대로 이용하면서 별도의 현금 등 충전 없이도 멤버십 서비스 및 팝카드 서비스의 혜택을 누릴 수 있는 카드<br/>
				<br/>
				5. 팝캐시비(일반) 카드: 캐시비 카드(㈜이비카드가 정의한 기술 사양에 따라 ㈜이비카드가 인증한 칩 또는 어플리케이션을 내장한 선불전자지급수단)를 기반으로 대중교통은 물론 각종 유통업체에서 사용이 가능하고, 다양한 멤버십 카드와의 제휴를 통해 포인트의 적립, 사용이 가능한 카드<br/>
				<br/>
				6. 멤버십팝카드(BC선불): ㈜비씨카드가 정의한 기술 사양에 따라 회사가 인증한 멤버십팝카드 브랜드를 부착한 선불식 충전카드로 GS리테일 보유 가맹점 및 GS리테일 또는 비씨카드가 제휴한 가맹점에서 사용할 수 있는 카드<br/>
				<br/>
				⑤ "제휴가맹점"이란 GS리테일이 멤버십 서비스 또는 팝카드 서비스와 관련하여 각 서비스를 공동으로 운영하기 위해 가맹점 계약 또는 제휴 계약을 체결한 업체(교통기관, 유통업체, 은행, 카드회사 등) 또는 업소(GS리테일 점포 내 임대업체 포함)를 말하며 회원에게 제공되는 서비스는 각 가맹점 계약 또는 제휴 계약의 약정내용에 따라 달라질 수 있습니다.<br/> 
		      	</div>
		      <div class="modal-footer"></div>
    		</div>
 		 </div>
		</div>   
		<!-- Modal -->
        <div class="modal fade" id="staticBackdrop7" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">개인정보 제 3자제공동의(GS리테일/어바웃펫)</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<div class="modal-body">
				[필수] 개인정보 제3자제공도의(GS리테일/어바웃펫)<br/>
				<br/><br/><br/>
				1. 제공자<br/>
				ㆍ GS리테일<br/>
				2. 제공받는 자<br/>
				ㆍ 어바웃펫<br/>
				3. 제공 목적<br/>
				ㆍ GS리테일 멤버 포인트 적립 및 사용, 기타 GS리테일 멤버십 관련 서비스 제공<br/>
				ㆍ GS리테일의 “개인정보 수집 및 활용”에 따른 이용<br/>
				4. 제공 항목<br/>
				ㆍ 회원번호<br/>
				5. 보유기간<br/>
				ㆍ 어바웃펫 서비스 이용약관 철회 또는 GS리테일 회원탈퇴 후 1일 이내<br/>
				<br/>
				ㆍ 이용자는 제3자 개인정보 제공 및 활용(필수)에 대한 동의를 거부할 권리가 있으나, 미동의시 회원가입을 하실 수 없습니다.<br/>

		      	</div>
		      <div class="modal-footer"></div>
    		</div>
 		 </div>
		</div>   
		<!-- Modal -->
        <div class="modal fade" id="staticBackdrop8" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">개인정보 제 3자제공동의(어바웃펫/GS리테일)</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      	<div class="modal-body">
				[필수] 개인정보 제3자제공도의(어바웃펫/GS리테일)<br/>
				<br/><br/><br/>
				1. 제공자<br/>
				ㆍ 어바웃펫<br/>
				2. 제공받는 자<br/>
				ㆍ GS리테일<br/>
				3. 제공 목적<br/>
				ㆍ GS리테일 멤버 포인트 적립 및 사용, 기타 GS리테일 멤버십 관련 서비스 제공<br/>
				ㆍ GS리테일의 “개인정보 수집 및 활용”에 따른 이용<br/>
				4. 제공 항목<br/>
				ㆍ 회원번호, 성명, 성별, 휴대전화번호, 생년월일, 본인인증연계정보(CI)<br/>
				5. 보유기간<br/>
				ㆍ 어바웃펫 서비스 이용약관 철회 또는 GS리테일 회원탈퇴 후 1일 이내<br/>
				<br/>
				ㆍ 이용자는 제3자 개인정보 제공 및 활용(필수)에 대한 동의를 거부할 권리가 있으나, 미동의시 회원가입을 하실 수 없습니다.<br/>

 

		      	</div>
		      <div class="modal-footer"></div>
    		</div>
 		 </div>
		</div>   
		
		

</body>
</html>