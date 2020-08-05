<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="page/product.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
.media {
	width: 100%;
	margin: 0 auto;
}

</style>
<form id="dropProduct" name="dfrm" action="product_enter" method="post">
	<input type="hidden" name="pseq" value="${dropProduct.pseq}">
<h1 align="center" style="font-family: 'Do Hyeon', sans-serif, black;">DROP
			DETAIL</h1>	
	<a href="#" onclick="javascript:history.go(-1)"><img
		src="images/backarrow.png" style="width: 75px; height: 50px;"></a>
	<div class="media">
		<img src="images/${dropProduct.image }" class="mr-3" alt="..."
			style="width: 700px; , height: 500px;">
		<div class="media-body">
			<table>
				<tr>
					<td style="font-weight: 850; font-size: 18px;">${dropProduct.pname }<br></td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">판매가</td>
				</tr>
				<tr>
					<td>${dropProduct.price }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;"></td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">상품 정보</td>
				</tr>
				<tr>
					<td>${dropProduct.content }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">응모 날짜</td>
				</tr>
				<tr>
					<td><fmt:formatDate value="${dropProduct.startdate}" pattern="yyyy-MM-dd"/></td>
				</tr>
				<tr>
					<td><fmt:formatDate value="${dropProduct.enddate}" pattern="yyyy-MM-dd"/></td>
				</tr>	
				<tr>
				<td>
				<input class="btn btn-primary" type="submit" value="응모하기">
				<br>
				<br>
				</tr>
			</table>
		</div>
	</div>
	
</form>

	<%@ include file="../footer.jsp"%>