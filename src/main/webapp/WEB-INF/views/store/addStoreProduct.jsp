<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="store/store.js"></script>
<%@ include file="../header.jsp" %>
	<form name="asfrm" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<th>상품 종류</th>
				<td width="343" colspan="5"><select name="skind">
						<option value="0">종류선택</option>
						<option value="1">TOP</option>
						<option value="2">BOTTOM</option>
						<option value="3">FOOTWEAR</option>
						<option value="4">ACC</option>
					</select>
			</tr>
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5"><input type="text" name="sname"
					size="47"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td width="70"><input type="text" name="sprice" size="11">원</td>
			</tr>
			<tr>
				<th>상세설명</th>
				<td colspan="5"><textarea name="scontent" rows="8" cols="70"></textarea>
				</td>
			<tr>
			<tr>
				<th>상품 이미지</th>
				<td width="343" colspan="5"><input type="file" name="images"></td>
			</tr>
		</table>
		<input class="btn btn-primary" type="button" value="등록"
			onclick="go_save()"> <input class="btn btn-primary"
			type="button" value="취소" onclick="cancelAdd()">
	</form>
	<%@ include file="../footer.jsp"%>