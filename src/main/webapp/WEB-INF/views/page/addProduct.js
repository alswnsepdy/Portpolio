

//등록 처리 
function go_save(){
	
	if(document.afrm.pname.value == ""){
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

//등록 취소 
function cancelAdd(){
	var x = confirm("취소하시겠습니까?");
	
	if(x == true){		
	location.href="drop_page";
	}else{
		return false;
	}
}

