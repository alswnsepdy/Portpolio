
function logincheck(){
	if(document.login.id==""){
		alert("로그인 후 이용 가능 합니다!");
		document.login.id.focus();
		return;
	}
}

function idcheck(){
	if(document.formm.id.value ==""){
		alert("아이디를 입력해 주세요");
		document.formm.id.focus();
		return;
	}
	
	var url="id_check_form?id="+ document.formm.id.value;
	
	window.open(url, "_black_1",
	"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=350, height=150");
}

function idok(){
	document.formm.action="id_check_confirmed";
	document.formm.submit();
}

function post_zip(){
	var url="find_zip_num";
	
	window.open(url,  "_blank_1", 
			"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=330");
}

function go_save(){
	if(document.formm.id.value==""){
		alert("아이디를 입력 해주세요");
		document.formm.id.focus();
		return false;
	}else if(document.formm.pwd.value==""){
		alert("비밀번호를 입력해주세요");
		document.formm.pwd.focus();
		return false;
	}else if(document.formm.pwdCheck.value ==""){
		alert("비밀번호 확인란을 입력해주세요");
		document.formm.pwdCheck.focus();
		return false;
	}else if(document.formm.pwd.value != document.formm.pwdCheck.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.formm.pwdCheck.focus();
		return false;
	}else if(document.formm.name.value==""){
		alert("이름을 입력해 주세요");
		document.formm.name.focus();
		return false;
	}else if(document.formm.email.value==""){
		alert("이메일을 입력해 주세요");
		document.formm.email.focus();
		return false;
	}else if(documemt.formm.id.value != document.formm.reid.value){
		alert("아이디 중복확인을 실행해 주세요");
		document.formm.id.focus();
		return false;
	}
}