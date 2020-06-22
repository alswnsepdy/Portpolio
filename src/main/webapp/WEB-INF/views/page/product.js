//모든 js 기능 구현 

function go_search(){
	document.frm.action = "product_search_list";
	document.frm.submit();
}

//금액 점 찍어주기
/*function NumFormat(t) // 원 단위, 찍어주기
{
	s = t.value;
	s = s.replace(/\D/g, '');
	l = s.length - 3;
	while (l > 0) {
		s = s.substr(0, l) + ',' + s.substr(l);
		l -= 3;
	}
	t.value = s;
	return t;
}
*/
//달력 표시
$(function() {
	$("#datepicker").datepicker();
});
//달력표시 2
$(function() {
	$("#enddatepicker").datepicker();
});

function plusProduct() {
	location.href = "";
};

//슬라이드 보기 & 리스트로 보기
function showList() {		//클래스 //클래스
	$("#first").toggleClass("show hide");
	$("#second").toggleClass("hide show");
		//아이디
	$("#showList").toggleClass("show hide");
	$("#slideList").toggleClass("hide show");
};

//등록 처리 
function go_save(){
	
	if(document.afrm.kind.value == ""){
		alert("종류를 선택해 주세요");
		document.afrm.kind.focus();
	}else if(document.afrm.pname.value == ""){
		alert("상품명을 입력해 주세요");
		document.afrm.pname.focus();
	}else if(document.afrm.price.value == ""){
		alert("금액을 입력해 주세요");
		document.afrm.price.focus();
	}else if(document.afrm.content.value==""){
		alert("내용을 입력해 주세요");
		document.afrm.content.focus();
	}else if(document.afrm.startdate.value==""){
		alert("응모 시작 날짜를 설정해 주세요");
		document.afrm.startdate.focus();
	}else if(document.afrm.enddate.value==""){
		alert("응모 종료 날짜를 설정해 주세요");
		document.afrm.enddate.focus();
	}else if(document.afrm.images.value == ""){
		alert("이미지를 등록해 주세요");
		document.afrm.images.focus();
	}else{
		document.afrm.encoding = "multipart/form-data";
		
		document.afrm.action = "plus_product_action";
		document.afrm.submit();
	}

}