<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
a{
color:black;
}
</style> 
<header style="padding-top: 0px;"> 
<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
						<a class="dropdown-item" href="my_info">INFORMATION</a> 
						<a class="dropdown-item" href="enter_product_view">ENTERLIST</a>
					</div></li>
			</ul>
      <form name="frm" action="product_search_list">
      <input type="text" name="key">
  	<input class="btn" type="submit" value="search">
  	</form>
  </div>
</nav>
</header>

<body>
<div style="color:white;">
${key }에대한 검색결과...
<hr style="border: solid 1px white;">
	<c:forEach items="${searchList }" var="productVO">
	<a href = "drop_page_detail?pseq=${productVO.pseq }">${productVO.pname }<br>
	${productVO.content }</a>
	<hr style="border: dotted 2px white;">
	
	</c:forEach>
</div>
<%@ include file="../footer.jsp"%>