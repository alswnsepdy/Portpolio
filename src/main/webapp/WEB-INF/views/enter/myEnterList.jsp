<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>
<body>
	<form name="elfrm">
		<table id="enterList" style="text-align: center; width:100%;">
			<tr>
				<th></th>
				<th>상품 정보</th>
				<th>사이즈</th>
				<th>가격</th>
				<th>응모한날짜</th>
				<th>당첨 여부</th>
				</tr>
				<c:forEach items="${enterList }" var="enterVO">
				<tr>
				<td>
				<a href="drop_page_detail?pseq=${enterVO.pseq}">
				<img src="images/${enterVO.image }" width="100px" height="120px;">
				
				</a>
				</td>
				<td>
				<a href="drop_page_detail?pseq=${enterVO.pseq}">${enterVO.pname }</a>
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
					<label style="color:blue;">당첨</label>
					</c:if>
					<c:if test="${enterVO.condition == 3}">
					<label style="color:red;">미당첨</label>
					</c:if>
				</td>
				</c:forEach>
		</table>
	</form>
</body>
</html>