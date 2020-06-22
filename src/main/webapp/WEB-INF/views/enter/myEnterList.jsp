<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>
<style>
body {
	background: #f2f2f2;
}
th, td{
	border: 1px solid skyblue;
}
</style>
<body>
	<form name="elfrm">
		<table id="enterList" style="text-align: center; width:100%;">
			<tr>
				<th>상품 번호</th>
				<th>상품명</th>
				<th>사이즈</th>
				<th>가격</th>
				<th>응모한날짜</th>
				<th>당첨 여부</th>
				</tr>
				<c:forEach items="${enterList }" var="enterVO">
				<tr>
				<td>
				<a href="drop_page_detail?pseq=${enterVO.pseq}">
				${enterVO.pseq }
				</a>
				</td>
				<td>
				<a href="drop_page_detail?pseq=${enterVO.pseq }">
				${enterVO.pname }				</a>
				</td>
				<td>
				${enterVO.psize }
				</td>
				<td>
				${enterVO.price}
				</td>
				<td>
				<fmt:formatDate value="${enterVO.enterdate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<c:if test="${enterVO.condition == 1}">
					응모중
					</c:if>
					<c:if test="${enterVO.condition == 2}">
					당첨
					</c:if>
					<c:if test="${enterVO.condition == 3}">
					미당첨
					</c:if>
				</td>
				</c:forEach>
		</table>
	</form>
</body>
</html>