<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript" src="store/store.js"></script>
<link href="css/store.css" rel="stylesheet">
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
	style="color: black; font-family: 'Do Hyeon', sans-serif;">
	PRODUCT sale</h1>
	<a href="store_view?skind=0">ALL</a>
	<a href="store_view?skind=1">TOP</a>
	<a href="store_view?skind=2">BOTTOM</a>
<div>
	<article>
		<c:forEach items="${storeList }" var="storeVO" varStatus="status">
			<figure class="snip1384" id="product">
				<img src="images/${storeVO.simage}" />
				<figcaption>
					<h3>${storeVO.sname }</h3>
					<p>${storeVO.scontent }</p>
					<i class="ion-ios-arrow-right"></i>
				</figcaption>
				<a href="store_detail?sseq=${storeVO.sseq}"></a>
			</figure>
		&nbsp;&nbsp;&nbsp;&nbsp;
	</c:forEach>

	</article>
</div>

<%@ include file="../footer.jsp"%>