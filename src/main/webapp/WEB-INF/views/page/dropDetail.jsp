<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
	function plusProduct() {
		location.href = "";
	}
	
	function deleteProduct(){
		location.href="delete_product";
	}
</script>
<style>
.media {
	width: 100%;
	margin: 0 auto;
}

#product {
	color: white;
}

table {
	color: black;
	border-spacing: 100px;
	border-collapse: separate;
	font-family: 'Do Hyeon', sans-serif;
}

p {
	font-size: 18px;
	font-family: 'Do Hyeon', sans-serif;
	color: black
}
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<%@ include file="../header.jsp"%>
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
							class="dropdown-item" href="product_buy">STORE</a> <a
							class="dropdown-item" href="logout">LOGOUT</a>
						<c:if test="${loginUser.power == 2}">
							<a class="dropdown-item" href="plus_product_form">ADD PRODUCT</a>
						</c:if>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> MY PAGE </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="my_info_change">INFORMATION</a> <a
							class="dropdown-item" href="enter_product_view">ENTERLIST</a>
					</div></li>
			</ul>
			<form name="frm" action="product_search_list" style="height: 30px;">
				<input type="text" name="key"> <input class="btn"
					type="submit" value="search">
			</form>
		</div>
	</nav>
</header>
<body>
	<form id="dropProduct" action="product_enter" name="dfrm" method="post">
		<input type="hidden" name="pseq" value="${dropProduct.pseq}">
		<h1 align="center" style="font-family: 'Do Hyeon', sans-serif, black;">DROP
			DETAIL</h1>
			<a href="#" onclick="javascript:history.go(-1)"><img
		src="images/backarrow.png" style="width: 75px; height: 50px;"></a>
		<div class="media">
			<img src="images/${dropProduct.image }" class="mr-3" alt="..."
				width="700px" height="500px">
			<div class="media-body">
				<table style="width: 400px; text-align: left;">
					<tr>
						<td><p>
								<b>상품명</b>
							</p> ${dropProduct.pname } <br></td>
					</tr>
					<tr>
						<td><p>
								<b>가 격</b>
							</p> ${dropProduct.price }<br></td>
					</tr>
					<tr>
						<td colspan="2"><p>
								<b>상품 상세 설명</b>
							</p> ${dropProduct.content }<br></td>
					</tr>
					<tr>
						<td colspan="2"><p>
								<b>응모 날짜 </b>
							</p><fmt:formatDate value="${dropProduct.enddate}" pattern="yyyy-MM-dd"/><br></td>
					</tr>
				</table>
			</div>
			<hr>
			<div id="enter" align="center">
				<input class="btn btn-primary" type="submit" value="응모하기">
				<br>
				<br>
				<c:if test="${loginUser.power == 2}">
				<input class="btn btn-primary" value="상품삭제하기" onclick="location.href='delete_product?pseq=${dropProduct.pseq}'">
				</c:if>
			</div>
		</div>

	</form>

	<%@ include file="../footer.jsp"%>