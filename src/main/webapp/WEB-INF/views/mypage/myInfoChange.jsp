<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script type="text/javascript" src="mypage/mypage.js"></script>
<style>
table {
	width: 80%;
	height: 750px;
	text-align: left;
}

td {
	border-bottom: 3px solid #fff;
	width: 500px;
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
	<form name="mcfrm" action="info_change" method="post">
	<input type="hidden" value="${user.id}" name="id">
		<a href="#" onclick="javascript:history.go(-1)"><img
			src="images/backarrow.png" style="width: 75px; height: 50px;"></a>
		<div align="center">
			<table class="spacing">
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
					<td><output class="show" id="pass" name="pass">${user.pwd }</output> 
							<input type="button" class="show" id="change" value="변경하기" onclick="pwdShow()">
							 <input type="text" name="pwd" class="idhide" id="hide" placeholder="비밀번호">
						<input type="text" name="pwd2" class="idhide" id="hide2" placeholder="비밀번호 확인">
						<input type="button" value="확인" class="idhide" id="hide3" onclick="changePwd()"> 
						<input type="reset" value="취소" class="idhide" id="hide4" onclick="pwdShow()"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><output class="show" id="e_mail" name="e_mail">${user.email }</output>
					<input type="button" class="show" id="changeEmail" value="변경하기" onclick="emailShow()">
					<input type="text" name="email" class="idhide" id="hide10" placeholder="email@anythig.com">
					<input type="button" value="확인" class="idhide" id="hide11" onclick="changeEmails()"> 
					<input type="reset" value="취소" class="idhide" id="hide12" onclick="emailShow()">
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td><output class="show" id="address" name="address">${user.address }</output> 
					<input type="button" class="show" id="changeAdd" value="변경하기" onclick="addressShow()"> 
					<input type="button" class="idhide" id="hide5"onclick="post_addr()" value="주소찾기">
				    <input type="text" class="idhide" id="hide6" name="zipnum" style="width: 500px">
				    <input type="text" name="addr1" class="idhide" id="hide7" style="width: 500px">
					<input type="button" value="확인" class="idhide"id="hide8" onclick="changeAddress()"> 
					<input type="reset" value="취소" class="idhide" id="hide9" onclick="addressShow()">
					</td>
				</tr>
			</table>
			<input class="btn btn-primary" type="submit" value="변경하기" onclick="updateCheck()">
		</div>
	</form>
</body>
<%@ include file="../footer.jsp"%>