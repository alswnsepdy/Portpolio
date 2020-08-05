<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<form name="endDrop">
<div align="center">
	<h1>FINISHED DROP</h1>
	<table style="display:inline-block;" >
		<c:forEach items="${endProduct }" var="productVO"
			varStatus="status">
			<tr>
			<td rowspan="4">
			<img src="images/${productVO.image }" width="200px" height="100px">
			<td>
			상품정보
			</td>
			</td>
			<tr>
			<td>
			${productVO.pname}
			</td>
			</tr>
			<tr>
			<td>
			종료 일자
			</td>
			</tr>
			<tr>
			<td>
			<fmt:formatDate value="${productVO.enddate }" pattern="yy-MM-dd"/>
			</td>
			</tr>
		</c:forEach>
		</table>
	</div>
</form>
<%@ include file="../footer.jsp"%>