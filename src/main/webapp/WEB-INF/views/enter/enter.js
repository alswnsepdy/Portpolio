function enter_suc(){
	var count = 0;
	var x = document.enterList;
	
	if(x.eseq.length == undefined){
		if(x.eseq.checked== true){
			count++;
		}
	}else{
		for(var i=0; i<x.eseq.length; i++){
			if(x.eseq[i].checked == true){
				count++;
			}
		}
	}
	
	if(count == 0){
		alert("당첨 처리 항목 1개이상 선택하셔야 합니다.");
		return false;
	}else{
		if(confirm("당첨 처리 하시겠습니까?") == true){
			return true;
		}else{
			return false;
		}
	}
}

function enter_fail(){
	var count = 0;
	var x = document.enterList;
	
	if(x.eseq.length == undefined){
		if(x.eseq.checked== true){
			count++;
		}
	}else{
		for(var i=0; i<x.eseq.length; i++){
			if(x.eseq[i].checked == true){
				count++;
			}
		}
	}
	
	if(count == 0){
		alert("낙첨 처리 항목 1개이상 선택하셔야 합니다.");
		return false;
	}else{
		if(confirm("낙첨 처리 하시겠습니까?") == true){
			x.action="enter_fail";
			x.submit();
		}else{
			return false;
		}
	}
}