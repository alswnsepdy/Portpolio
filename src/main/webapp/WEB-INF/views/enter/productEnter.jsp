<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<style>
body {
	background: #F2F2F2;
}

.media {
	width: 100%;
	margin: 0 auto;
}
</style>
<script>
	function enterCheck() {
		if (document.efrm.psize.value == "0") {
			alert("사이즈를 선택하여 주세요fjgh");
			document.efrm.psize.focus();
			return false;
		} else {
			alert("응모가 완료 되었습니다!");
		}
	}
	function plusProduct() {
		location.href = "";
	}
</script> 
<form id="enterProduct" name="efrm" action="enter_product"
	style="font-family: 'Do Hyeon', sans-serif;">
	<input type="hidden" name="pseq" value="${enterProduct.pseq}">
	<input type="hidden" name="droppd" value="${enterProduct.droppd }">
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
					<td style="font-weight: bold; font-size: 18px;">사이즈 선택 <select
						id="psize" name="psize">
							<option value="0">사이즈</option>
							<option value="250">250</option>
							<option value="255">255</option>
							<option value="260">260</option>
							<option value="265">265</option>
							<option value="270">270</option>
							<option value="275">275</option>
							<option value="280">280</option>
					</select>
						<hr>
					</td>
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
	<div>
		<table>

			<!-- -->
		</table>
	</div>
</form>

<%@ include file="../footer.jsp"%>
