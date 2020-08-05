//모든 js 기능 구현 

function go_search(){
	document.frm.action = "product_search_list";
	document.frm.submit();
}

//슬라이드 보기 & 리스트로 보기
function showList() {		//클래스 //클래스
	$("#first").toggleClass("show hide");
	$("#second").toggleClass("hide show");
		//아이디
	$("#showList").toggleClass("show hide");
	$("#slideList").toggleClass("hide show");
};



function deleteProduct(){
	location.href="delete_product";
}
function cancelUp(){
	var x = confirm("취소하시겠습니까?");
	
	if(x == true){		
	location.href="drop_update_list";
	}else{
		return false;
	}
}
