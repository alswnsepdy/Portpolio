<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script type="text/javascript" src="page/product.js"></script>
<link href="css/droppage.css" rel="stylesheet">
</head>
<%@ include file="../header.jsp"%>
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
