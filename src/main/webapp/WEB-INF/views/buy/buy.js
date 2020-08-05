function buy_delete(){
	var count = 0;
	var x = document.blfrm;
	
	if(x.bseq.length == undefined){
		if(x.bseq.checked== true){
			count++;
		}
	}else{
		for(var i=0; i<x.bseq.length; i++){
			if(x.bseq[i].checked == true){
				count++;
			}
		}
	}
	
	if(count == 0){
		alert("삭제처리 항목 1개이상 선택하셔야 합니다.");
		return false;
	}else{
		if(confirm("주문 삭제 하시겠습니까?") == true){
			return true;
		}else{
			return false;
		}
	}
}
function buy_suc(){
	var count = 0;
	var x = document.buyList;
	
	if(x.bseq.length == undefined){
		if(x.bseq.checked== true){
			count++;
		}
	}else{
		for(var i=0; i<x.bseq.length; i++){
			if(x.bseq[i].checked == true){
				count++;
			}
		}
	}
	
	if(count == 0){
		alert("구매처리 항목 1개이상 선택하셔야 합니다.");
		return false;
	}else{
		if(confirm("구매 처리 하시겠습니까?") == true){
			return true;
		}else{
			return false;
		}
	}
}