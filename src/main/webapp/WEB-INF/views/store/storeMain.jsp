<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="store/store.js"></script>
<link href="css/store.css" rel="stylesheet">
<h1 align="center"
	style="color: black; font-family: 'Do Hyeon', sans-serif;">
	STORE</h1>
	<a href="store_view?skind=0">ALL</a>
	<a href="store_view?skind=1">TOP</a>
	<a href="store_view?skind=2">BOTTOM</a>
	<a href="store_view?skind=3">SHOES</a>
	<a href="store_view?skind=4">ACC</a>
<div>
	<article>
		<c:forEach items="${storeList }" var="storeVO" varStatus="status">
			<figure class="snip1384" id="product">
				<img src="images/${storeVO.simage}" width="230px;" height="315px;" />
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