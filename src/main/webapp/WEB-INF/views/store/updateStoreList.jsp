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
<form name="updateStoreList">
	<div>
		<hr style="border: solid 1px white;">
		<table>
		<c:forEach items="${storeProductList }" var="storeVO">
				<tr>
				<th>상품 이름</th>
				<th>가	격</th>
				<th></th>
				<th></th>
				</tr>
				<tr>
				<td>
				<a href="store_detail?sseq=${storeVO.sseq }">${storeVO.sname }</a></td>
				<td>${storeVO.sprice }</td>	
				<td><input type="button" value="수정하기" onclick="location.href='store_update?sseq=${storeVO.sseq}'">
				<input type="button" value="응모 종료하기" onclick="location.href='delete_store?sseq=${storeVO.sseq}'"></td>
		</c:forEach>
		</table>
	</div>
</form>
<%@ include file="../footer.jsp"%>