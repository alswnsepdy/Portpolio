//우편번호 찾기 
function post_addr() {

	var url = "find_zip";

	window
			.open(url, "_blank_1",
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=330");
}

//비밀번호 변경 hide & show
function pwdShow() {
	$("#hide").toggleClass("idhide show");
	$("#hide2").toggleClass("idhide show");
	$("#hide3").toggleClass("idhide show");
	$("#hide4").toggleClass("idhide show");

	$("#change").toggleClass("show idhide");
	$("#pass").toggleClass("show idhide");
}
//email 변경  hide & show
function emailShow(){
	$("#hide10").toggleClass("idhide show");
	$("#hide11").toggleClass("idhide show");
	$("#hide12").toggleClass("idhide show");
	
	$("#changeEmail").toggleClass("show idhide");
	$("#e_mail").toggleClass("show idhide");
}
//주소 변경 hide & show
function addressShow() {
	$("#hide5").toggleClass("idhide show");
	$("#hide6").toggleClass("idhide show");
	$("#hide7").toggleClass("idhide show");
	$("#hide8").toggleClass("idhide show");
	$("#hide9").toggleClass("idhide show");

	$("#address").toggleClass("show idhide");
	$("#changeAdd").toggleClass("show idhide");
}

function changePwd() {
	var form = document;
	if (form.mcfrm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요.");
		form.mfrm.pwd.focus();
		return false;
	} else if (form.mcfrm.pwd.value != form.mcfrm.pwd2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		form.mfrm.pwd.focus();
		return false;

	} else {
		form.mcfrm.pass.value = form.mcfrm.pwd.value;

		$("#hide").toggleClass("show idhide");
		$("#hide2").toggleClass("show idhide");
		$("#hide3").toggleClass("show idhide");
		$("#hide4").toggleClass("show idhide");

		$("#change").toggleClass("idhide show");
		$("#pass").toggleClass("idhide show");

	}

}

function changeAddress() {
	document.mcfrm.address.value = document.mcfrm.addr1.value;

	$("#hide5").toggleClass("show idhide");
	$("#hide6").toggleClass("show idhide");
	$("#hide7").toggleClass("show idhide");
	$("#hide8").toggleClass("show idhide");
	$("#hide9").toggleClass("show idhide");

	$("#address").toggleClass("idhide show");
	$("#changeAdd").toggleClass("idhide show");
}

function changeEmails(){
	document.mcfrm.e_mail.value = document.mcfrm.email.value;
	
	$("#hide10").toggleClass("show idhide");
	$("#hide11").toggleClass("show idhide");
	$("#hide12").toggleClass("show idhide");
	
	$("#changeEmail").toggleClass("idhide showe");
	$("#e_mail").toggleClass("idhide show");
}

function updateCheck(){
	var form = document.mcfrm;
	if(form.pwd.value == ""){
		form.pwd.value= form.pass.value;
	}
	if(form.email.value == ""){
		form.email.value= form.e_mail.value;
	}
	if(form.addr1.value == ""){
		form.addr1.value= form.address.value;
	}
	
}
