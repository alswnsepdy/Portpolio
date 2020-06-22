<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="page/product.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
</head>
<body>
	<form name="afrm" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<th>상품 분류</th>
				<td colspan="5"><select name="kind">
						<c:forEach items="${kindList }" var="kind" varStatus="status">
							<option value="${status.count }">${kind }</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5"><input type="text" name="pname"
					size="47"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td width="70"><input type="text" name="price" size="11" >원</td>
			</tr>
			<tr>
				<th>상세설명</th>
				<td colspan="5"><textarea name="content" rows="8" cols="70"></textarea>
				</td>
			<tr>
			<tr>
				<th>응모 시작 날짜</th>
				<td colspan="5"><input type="text" id="datepicker" name="startdate"></td>
			</tr>
			<tr>
				<th>응모 종료 날짜</th>
				<td colspan="5"><input type="text" id="enddatepicker" name="enddate"></td>
			</tr>
			<tr>
				<th>상품 이미지</th>
				<td width="343" colspan="5"><input type="file" name="images"></td>
			</tr>
		</table>
		<input class="btn btn-primary" type="button" value="등록" onclick="go_save()">
		<input class="btn btn-primary" type="button" value="취소" onclick="go_mov()">
	</form>
	<%@ include file="../footer.jsp"%>