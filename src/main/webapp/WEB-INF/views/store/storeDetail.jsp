<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link href="css/store.css" rel="stylesheet">

<script type="text/javascript" src="store/store.js"></script>



<form name="sfrm" action="buy_list" method="post">
	<input type="hidden" name="sseq" value="${storeProduct.sseq}">
	<h1 align="center" style="font-family: 'Do Hyeon', sans-serif, black;">Buy
		Product</h1>
	<a href="#" onclick="javascript:history.go(-1)"><img
		src="images/backarrow.png" style="width: 75px; height: 50px;"></a>
	<div class="media">
		<img src="images/${storeProduct.simage }" class="mr-3" alt="..."
			style="width: 700px; , height: 500px;">
		<div class="media-body">
			<table>
				<tr>
					<td style="font-weight: 850; font-size: 18px;">${storeProduct.sname }<br></td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">판매가</td>
				</tr>
				<tr>
					<td>${storeProduct.sprice }</td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;"></td>
				</tr>
				<tr>
					<td style="font-weight: bold; font-size: 18px;">상품 정보</td>
				</tr>
				<tr>
					<td>${storeProduct.scontent }</td>
				</tr>
				<tr>
					<c:if test="${storeProduct.skind == 1}">
						<td style="font-weight: bold; font-size: 18px;">사이즈 선택 <select
							id="ssize" name="ssize">
								<option value="0">사이즈</option>
								<option value="XS/85">XS/85</option>
								<option value="S/90">S/90</option>
								<option value="M/95">M/95</option>
								<option value="L/100">L/100</option>
								<option value="XL/105">XL/105</option>
						</select>
						</td>
					</c:if>
					<c:if test="${storeProduct.skind == 2}">
						<td style="font-weight: bold; font-size: 18px;">사이즈 선택 <select
							id="ssize" name="ssize">
								<option value="0">사이즈</option>
								<option value="28">28</option>
								<option value="30">30</option>
								<option value="31">31</option>
								<option value="32">32</option>
								<option value="33">33</option>
								<option value="34">34</option>
						</select>
						</td>
					</c:if>
					<c:if test="${storeProduct.skind == 3}">
						<td style="font-weight: bold; font-size: 18px;">사이즈 선택 <select
							id="ssize" name="ssize">
								<option value="0">사이즈</option>
								<option value="240">240</option>
								<option value="245">245</option>
								<option value="250">250</option>
								<option value="255">255</option>
								<option value="260">260</option>
								<option value="265">265</option>
								<option value="270">270</option>
								<option value="275">275</option>
						</select>
						</td>
					</c:if>
					<c:if test="${storeProduct.skind == 4}">
						<td style="font-weight: bold; font-size: 18px;">사이즈 선택 <select
							id="ssize" name="ssize">
								<option value="0">사이즈</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select>
						</td>
					</c:if>
				</tr>
				<tr>
				<td><input type="button" onclick="change(-1)" value="-"><input type="text" value="1" name="quantity" size="2" style="text-align:center;"><input type="button" onclick="change(1)" value="+">
				<tr>
					<td style="font-weight: bold; font-size: 18px;">구매방식</td>
				</tr>
				<tr>
					<td>
					<input type="radio" name="pmethod" value="신용카드">신용카드
					<input type="radio" name="pmethod" value="무통장입금">무통장입금
					<input type="radio" name="pmethod" value="핸드폰">핸드폰
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
					<td><input class="btn btn-primary" type="submit" value="구매하기" onclick="return buy_check()">
						<br> <br> <c:if test="${loginUser.power == 2}">
							<input class="btn btn-primary" value="상품삭제하기"
								onclick="location.href='store_delete_product?sseq=${storeProduct.sseq}'">
						</c:if>
				</tr>
			</table>
		</div>
	</div>

</form>

<%@ include file="../footer.jsp"%>
