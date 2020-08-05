<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
<title>shoe</title>
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
</head>

<body>
	<div id="wrap">
		<!--헤더파일 들어가는 곳 시작 -->
		<header>

			<!--로고 들어가는 곳 시작--->
			<div id="logo" align="center">

				<a href="drop_page"> <img src="images/this.png" width="250"
					height="100" alt="shoe">
				</a>

			</div>
			<!--로고 들어가는 곳 끝-->

		</header>
	</div>
	<header style="padding-top: 0px;">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">


			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> MENU </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="drop_page">DROP</a> <a
								class="dropdown-item" href="store_view">STORE</a>
								<a
								class="dropdown-item" href="end_product">END DROP</a> <a
								class="dropdown-item" href="logout">LOGOUT</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> MY PAGE </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="my_info">INFORMATION</a> <a
								class="dropdown-item" href="enter_product_view">ENTERLIST</a> <a
								class="dropdown-item" href="buy_list_view">BUYLIST</a>
						</div></li>
					<c:if test="${loginUser.power == 2 }">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> MANAGER </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="plus_product_form">ADD
									DROP PRODUCT</a> 
							<a class="dropdown-item" href="plus_store_product_form">ADD
									STORE PRODUCT</a>
									<a class="dropdown-item" href="drop_update_list">DROP UPDATE</a> <a
								class="dropdown-item" href="store_update_list">STORE UPDATE</a>
								<a class="dropdown-item" href="enter_list">ENTER LIST</a>
								<a class="dropdown-item" href="buy_list_update">BUY LIST</a>
						</div>
						</li>
						</c:if>
				</ul>
				<form name="frm" action="product_search_list" style="height: 30px;">
					
				<select name="searchKind">
					<option value="1">DROP</option>
					<option value="2">STORE</option>
				</select>
					<input type="text" name="key"> <input class="btn"
						type="submit" value="search">
						
				</form>
			</div>
		</nav>
	</header>
	<!--헤더파일 들어가는 곳 끝 -->