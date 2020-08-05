<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <style>

.hi{ width: 800px; position: absolute; left: 40%; margin-left: -200px; background: #f2f2f2;}

body{
	background :#f2f2f2;
}
 </style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="member/member.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

      
<title>shoe</title>
<style>
body { 
	background:#f2f2f2;
	font-family: 'Do Hyeon', sans-serif;
	width: 1250px;
	margin : 0;
	margin-left:auto;
	margin-right:auto;
	
}
</style>
</head>

<body>
	<div id="wrap">
		<!--헤더파일 들어가는 곳 시작 -->
		<header>

			<!--로고 들어가는 곳 시작--->
			<div id="logo" align="center">

				 <img src="images/logo.png" width="250"
					height="100" alt="shoe">
				

			</div>
			<!--로고 들어가는 곳 끝-->

		</header>
	</div>
	<!--헤더파일 들어가는 곳 끝 -->
<body>
<form id="join" action="join" method="post" name="formm">
  <div class="hi">
  <div class="form-group">
    <label >아이디</label>
    <input type="text" class="form-control"name="id" style="width:800px">
   	<input type="hidden"    name="reid">
   	<input type="button" class="btn btn-primary" value="중복체크" onclick="idcheck()">
  </div>
  
  <div class="form-group">
    <label>비밀번호</label>
    <input type="password" class="form-control" name = "pwd" style="width:800px">
  </div>
  <div class="form-group">
    <label>비밀번호 확인</label>
    <input type="password" class="form-control" name="pwdCheck" style="width:800px">
  </div>
  <div class="form-group">
    <label>이름</label>
    <input type="text" class="form-control" name="name" style="width:800px">
  </div>
  <div class="form-group">
    <label>Email</label>
    <input type="email" class="form-control"  aria-describedby="emailHelp" name="email" style="width:800px" placeholder="name@example.com">
  </div>
  <div class="form-group">
    <label>우편번호</label>
    <input type="text" class="form-control" name="zipnum" style="width:800px">
    <input class="btn btn-primary" type="button" onclick="post_zip()" value="주소찾기">
    <input type="text" class="form-control" name="addr1" style="width:800px">
    <input type="text" class="form-control" name="addr2" style="width:800px">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPhone">전화 번호</label>
    <input type="text" class="form-control" id="exampleInputPhone"name="phone" style="width:800px" placeholder="***-****-****">
  </div>
  <input class="btn btn-primary" type="submit" value="회원가입" onclick="return go_save()">
<input class="btn btn-primary" type="reset" value="취소" onclick="history.go(-1)">
</div>
</form>
</body>
</html>