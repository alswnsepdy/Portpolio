<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
a{
color:black;
}
</style>
<body>
<div style="color:white;">
${key }에대한 검색결과...
<hr style="border: solid 1px white;">
<c:choose>
<c:when test="${kind == 1}">
	<c:forEach items="${searchList }" var="productVO">
	<a href = "drop_page_detail?pseq=${productVO.pseq }">${productVO.pname }<br>
	${productVO.content }</a>
	<hr style="border: dotted 2px white;">
	</c:forEach>
	</c:when>
	<c:otherwise>
		<c:forEach items="${searchList }" var="storeVO">
	<a href = "store_detail?sseq=${storeVO.sseq }">${storeVO.sname }<br>
	${storeVO.scontent }</a>
	<hr style="border: dotted 2px white;">
	</c:forEach>
	</c:otherwise>
	</c:choose>
</div>
<%@ include file="../footer.jsp"%>