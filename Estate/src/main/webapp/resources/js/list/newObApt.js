$(document).ready(function(){
});

function goPopup(){ 
	//경로는 시스템에 맞게 수정하여 사용 //호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를  
	//호출하게 됩니다. 
	var pop = window.open("./resources/js/comm/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");  
}
//INF/views
	//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/ 
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서  
// 실제 주소검색 URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.  
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");  } 

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){    
	// 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.    
		document.form.roadFullAddr.value = roadFullAddr;    
		document.form.roadAddrPart1.value = roadAddrPart1;    
		document.form.roadAddrPart2.value = roadAddrPart2;   
		documentform.addrDetail.value = addrDetail;    
		document.form.zipNo.value = zipNo; 
}
	

function f_saleobject_save() {
	var param = $("#newObApt").serialize();
	
	$.ajax({
	  url : "/estate/insertObject.do",
	  type: "post",
	  data : param,
	  dataType : "json",
	  contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
	  success : function(responseData){
		  alert ("물건 등록에 성공하였습니다.");
// 			 $(sampleTmpl).tmpl(tmplVal).appendTo("#tmplView");
// 			$("#listTemplte").tmpl(data).appendTo("#target");
	  }
	});
	
}

function f_member_list() {
   var comSubmit = new ComSubmit("joinMember");
   comSubmit.setUrl("/estate/memberListView.do");
   comSubmit.submit();
}