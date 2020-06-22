<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script>
	function idShow() {
		$("#hide").toggleClass("idhide show");
		$("#hide2").toggleClass("idhide show");
		$("#hide3").toggleClass("idhide show");
		$("#hide4").toggleClass("idhide show");

		$("#change").toggleClass("show idhide");
		$("#pass").toggleClass("show idhide");
	}

	function changePwd(){
		var form = document;
		if(form.mfrm.pwd.value == ""){
			alert("비밀번호를 입력해 주세요.");
			form.mfrm.pwd.focus();
			return false;
		}else if(form.mfrm.pwd.value != form.mfrm.pwd2.value){
			alert("비밀번호가 일치하지 않습니다.");
			form.mfrm.pwd.focus();
			return false;
		
		}else{
			form.mfrm.pass.value = form.mfrm.pwd.value;
			
			$("#hide").toggleClass("show idhide");
			$("#hide2").toggleClass("show idhide");
			$("#hide3").toggleClass("show idhide");
			$("#hide4").toggleClass("show idhide");
			

			$("#change").toggleClass("idhide show");
			$("#pass").toggleClass("idhide show");
		}
		function post_zip(){
			var url="find_zip_num";
			
			window.open(url,  "_blank_1", 
					"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=330");
		}
		}
	
</script>
<style>
table {
	width: 80%;
	height: 750px;
	text-align: left;
}

td{
border-bottom : 3px solid #fff;
width:500px;
}

.spacing {
	border-spacing: 15px;
}

.show {
	
}

.idhide {
	display: none;
}
</style>
<body>
	<form name="mfrm" action="my_info_change" method="post">
	<a href="drop_page"><img src="images/backarrow.png" style="width: 75px; height: 50px;"></a>
		<div align="center">
			<table class="spacing" >
				<tr>
					<td>사용자 아이디</td>
					<td>${user.id }</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${user.name }<br>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><output class="show" id="pass" name="pass"> ${user.pwd } &nbsp; &nbsp; </output> 
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${user.email }</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>${user.address }</td>
				</tr>
			</table>
				<input class="btn btn-primary" type="submit" value="변경하기">
		</div>
	</form>
</body>
<%@ include file="../footer.jsp"%>