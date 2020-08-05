<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>a{color:black;}</style>
<script type="text/javascript" src="buy/buy.js"></script>
<form name="blfrm" action ="buy_delete">
		<table id="buyList" style="text-align: center; width:100%;">
			<tr>
				<th></th>
				<th>상품 정보</th>
				<th>사이즈</th>
				<th>주문가격(수량)</th>
				<th>주문 상태</th>
				<th>구매 일자</th>
				</tr>
				<c:forEach items="${buyList }" var="buyVO">
				<tr>
				<td>
				<input type="checkbox" value="${buyVO.bseq }" name="bseq">
				<a href="store_detail?sseq=${buyVO.sseq}">
				<img src="images/${buyVO.simage }" width="100px" height="120px;"></a>
				</td>
				<td>
				<a href="store_detail?sseq=${buyVO.sseq}">
				${buyVO.sname }</a>
				</td>
				<td>
				${buyVO.ssize }
				</td>
				<td>
				${buyVO.sprice*buyVO.quantity}
				<br>(${buyVO.quantity}개)
				</td>
				<td>
					<c:if test="${buyVO.bcondition == 1}">
					<label style="color:red;">미처리</label>
					</c:if>
					<c:if test="${buyVO.bcondition == 2}">
					<label style="color:blue;">구매완료</label>
					</c:if>
				</td>
				<td>
				<fmt:formatDate value="${buyVO.buydate}" pattern="yyyy-MM-dd"/></td>
				</tr>
				</c:forEach>
		</table>
		<div align="right">
		<input class="btn btn-primary" type="submit" value="주문삭제하기" onclick="return buy_delete()">
		</div>
	</form>
<%@ include file="../footer.jsp"%>