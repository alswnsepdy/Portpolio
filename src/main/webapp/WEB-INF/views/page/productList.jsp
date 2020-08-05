<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<style>
	table{
	width:100%;
	text-align:center;
	}
	
	td {
    border-bottom: 2px solid #ffffff;
  }
	</style>
<%@ include file="../header.jsp"%>
<form name="productList">
	<div>
		<hr style="border: solid 1px white;">
		<table>
		<c:forEach items="${dropProductList }" var="productVO">
				<tr>
				<th>상품 이름</th>
				<th>종료 일자</th>
				<th>가	격</th>
				<th></th>
				<th></th>
				</tr>
				<tr>
				<td>
				<a href="drop_page_detail?pseq=${productVO.pseq }">${productVO.pname }</a></td>
				<td><fmt:formatDate value="${productVO.enddate }" pattern="yy-MM-dd"/></td>
				<td>${productVO.price }</td>	
				<td><input type="button" value="수정하기" onclick="location.href='drop_update?pseq=${productVO.pseq}'">
				<input type="button" value="응모 종료하기" onclick="location.href='end_enter?pseq=${productVO.pseq}'"></td>
		</c:forEach>
		</table>
	</div>
</form>
<%@ include file="../footer.jsp"%>