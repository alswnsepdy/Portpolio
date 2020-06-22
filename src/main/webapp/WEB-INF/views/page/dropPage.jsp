<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script type="text/javascript" src="page/product.js"></script>
<style>
.show {
	
}

.hide {
	display: none;
}
</style>

</head>
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
							class="dropdown-item" href="store_view">STORE</a> <a
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
						<a class="dropdown-item" href="my_info">INFORMATION</a> <a
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




<h1 align="center"
	style="color: black; font-family: 'Do Hyeon', sans-serif;">DROP
	PRODUCT</h1>
<!-- 리스트로 보기  -->
<input type="button" class="show" value="리스트로보기" id="showList" onclick="showList()">
<input type="button" class="hide" value="슬라이드로보기" id="slideList" onclick="showList()">
<form id="dropPage" action="dropPage" method="post" name="drop"
	style="font-family: 'Do Hyeon', sans-serif; background: #f2f2f2;">

	<div id="first" class="container show" style="height: 700px;">
		<div class="row" style="height: 700px;">
			<div class="col-12" style="height: 700px;">
				<div id="AwesomeCarousel" class="carousel slide"
					data-ride="carousel">


					<div class="carousel-inner" role="listbox">
						<c:forEach items="${dropProductList }" var="productVO"
							varStatus="status">
							<c:choose>
								<c:when test="${status.index == 0 }">
									<div class="carousel-item active">
										<a href="drop_page_detail?pseq=${productVO.pseq}"> <img
											src="images/${productVO.image }" class="d-block w-100"
											width="930px" height="620px">
										</a>
										<div class="carousel-caption d-none d-md-block">
											<h3>${productVO.pname }</h3>
											<p>${productVO.content }</p>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="carousel-item">
										<a href="drop_page_detail?pseq=${productVO.pseq}"> <img
											src="images/${productVO.image }" class="d-block w-100"
											width="930px" height="620px">
										</a>
										<div class="carousel-caption d-none d-md-block">
											<h5>${productVO.pname }</h5>
											<p>${productVO.content }</p>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>

					<a class="carousel-control-prev" href="#AwesomeCarousel"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#AwesomeCarousel"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div id="second" class="hide">
		<c:forEach items="${dropProductList }" var="productVO"
			varStatus="status">
			<a href="drop_page_detail?pseq=${productVO.pseq}"> <img
				src="images/${productVO.image }" width="300px" height="200px">
			</a>
		</c:forEach>
	</div>
</form>


<%@ include file="../footer.jsp"%>
