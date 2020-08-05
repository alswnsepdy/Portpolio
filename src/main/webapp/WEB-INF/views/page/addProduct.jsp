<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
	<script type="text/javascript" src="page/addProduct.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
//달력 표시
$(function() {
	$("#datepicker").datepicker();
});
//달력표시 2
$(function() {
	$("#enddatepicker").datepicker();
});
</script>
	

	<form name="afrm" method="post" enctype="multipart/form-data">
		<table>
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
		<input class="btn btn-primary" type="button" value="취소" onclick="return cancelAdd()">
	</form>
	<%@ include file="../footer.jsp"%>