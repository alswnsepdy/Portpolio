$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);

function change(cnt){
	var x = Number(document.sfrm.quantity.value) + cnt;
	if(x < 1){
		alert("최소 1개 이상은 선택해야 합니다.");
		x=1;
	}
	document.sfrm.quantity.value = x;
}

function buy_check(){
	if(document.sfrm.ssize.value == "0"){
		
	}else if(document.sfrm.quantity.value == ""){
		alert("구매 수량은 최소 1개 이상 선택해야 합니다.");
		document.sfrm.quantity.focus();
		return false;
	}else if(document.sfrm.pmethod.value == ""){
		alert("구매방식을 정해주세요");
		return false;
	}
}

//등록 처리 
function go_save(){
	if(document.asfrm.skind.value == "0"){
		alert("상품 종류를 선택해 주세요.")
		document.asfrm.skind.focus();
	}else if(document.asfrm.sname.value == ""){
		alert("상품명을 입력해 주세요");
		document.asfrm.sname.focus();
	}else if(document.asfrm.sprice.value == ""){
		alert("금액을 입력해 주세요");
		document.asfrm.sprice.focus();
	}else if(document.asfrm.scontent.value==""){
		alert("내용을 입력해 주세요");
		document.asfrm.scontent.focus();
	}else if(document.asfrm.images.value == ""){
		alert("이미지를 등록해 주세요");
		document.asfrm.images.focus();
	}else{
		document.asfrm.encoding = "multipart/form-data";
		
		document.asfrm.action = "plus_store_product_action";
		document.asfrm.submit();
	}

}

//등록 취소 
function cancelAdd(){
	var x = confirm("취소하시겠습니까?");
	
	if(x == true){		
	location.href="store_view";
	}else{
		return false;
	}
}


function cancelUp(){
	var x = confirm("취소하시겠습니까?");
	
	if(x == true){		
	location.href="store_update_list";
	}else{
		return false;
	}
}