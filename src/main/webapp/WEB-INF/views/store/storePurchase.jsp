<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<form id="enterProduct" name="efrm" action="enter_product"
	style="font-family: 'Do Hyeon', sans-serif;">
	<input type="hidden" name="pseq" value="${enterProduct.pseq}">

	<h1 align="center">상품 응모</h1>
	
	<a href="#" onclick="javascript:history.go(-1)"><img
		src="images/backarrow.png" style="width: 75px; height: 50px;"></a>
	<div class="media">
		<img src="images/${enterProduct.image }" class="mr-3" alt="..."
			style="width: 700px; , height: 500px;">
		<div class="media-body">
			<table>
				<tr>
					<td style="font-weight: 850; font-size: 18px;">${enterProduct.pname }<br></td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">판매가</td>
				</tr>
				<tr>
					<td>${enterProduct.price }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;"></td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">상품 정보</td>
				</tr>
				<tr>
					<td>${enterProduct.content }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">이름</td>
				</tr>
				<tr>
					<td>${user.name }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">배송지</td>
				</tr>
				<tr>
					<td>${user.address }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">휴대폰</td>
				</tr>
				<tr>
					<td>${user.phone }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">e-mail</td>
				</tr>
				<tr>
					<td>${user.email }</td>
				</tr>
				<tr>
					<td><input type="submit" class="btn btn-primary" value="응모완료"
						onclick="return enterCheck()">
				</tr>

			</table>
		</div>
	</div>
</form>

<%@ include file="../footer.jsp"%>