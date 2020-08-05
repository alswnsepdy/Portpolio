<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="buy/buy.js"></script>
<form name="buyList" action="buy_suc">
		<table id="buyList" style="text-align: cbuy; width:100%;">
			<tr>
				<th></th>
				<th>상품 정보</th>
				<th>고객 이름</th>
				<th>구매가격</th>
				<th>당첨 여부</th>
				</tr>
				<c:forEach items="${buyList }" var="buyVO">
				<tr>
				<td>
				<input type="checkbox" value="${buyVO.bseq }" name="bseq">
				<a href="store_detail?sseq=${buyVO.sseq}">
				<img src="images/${buyVO.simage }" width="100px" height="120px;">
				
				</a>
				</td>
				<td>
				<a href="store_detail?sseq=${buyVO.sseq}">${buyVO.sname }</a>
				</td>
				<td>
				${buyVO.name }
				</td>
				<td>
				${buyVO.sprice * buyVO.quantity}
				</td>
				<td>
					<c:if test="${buyVO.bcondition == 1}">
					<label style="color:red;">미처리 항목</label>
					</c:if>
				</td>
				</c:forEach>
		</table>
		<div align="right">
		<input class="btn btn-primary" type="submit" value="구매처리하기" onclick="return buy_suc()">
		</div>
	</form>
<%@ include file="../footer.jsp"%>