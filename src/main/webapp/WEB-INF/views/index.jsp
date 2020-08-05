<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="member/member.js"></script>
<link rel="stylesheet" href="css/style.css">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, 
                     minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<title>SNEAKERS LOVER</title>
<style>
body {
	background: #f2f2f2;
	font-family: 'Do Hyeon', sans-serif;
	width: 1250px;
	margin: 0;
	margin-left: auto;
	margin-right: auto;
}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, height=device-height, 
                     minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<title>SNEAKERS LOVER</title>
	<form method="post" action="login" name="login">
		<div>
			<div id="logo" align="center">

				<img src="images/this.png" width="250" height="100" alt="shoe">
			</div>
			<table>
			<tr>
			<td>
			User ID
			</td>
			<td><input type="text" placeholder="email@domain.com" name="id"></td>
			<tr>
			<td>Password</td>
			<td><input type="password" placeholder="Password" name="Pwd"></td>
			</tr>
			<tr>
			<td></td>
			</tr>
		</table>
		<div align="center">
		<input type="submit" value="Login" class="login">
			 <input type="button" value="Join Us" class="join"
				onclick="location='join_form'">
				</div>
			</div>
	</form>