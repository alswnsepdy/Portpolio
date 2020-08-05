<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="store/store.js"></script>
<form name="usfrm" method="post" action="store_update_action">
<input type="hidden" name="sseq" value="${store.sseq}">
		<div class="media">
		<img src="images/${store.simage }" class="mr-3" alt="..."
			style="width: 700px; , height: 500px;">
			<div>
		<table>
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5"><output>${store.sname }</output></td>
			</tr>
			<tr>
				<th>가격</th>
				<td width="70"><input type="text" name="sprice" size="11" value="${store.sprice }"></td>
			</tr>
			<tr>
				<th>상세설명</th>
				<td colspan="5"><textarea name="scontent" rows="8" cols="70" >${store.scontent }</textarea>
				</td>
			<tr>
			<tr>
			<td><input type="submit" value="등록" >
		<input  type="button" value="취소" onclick="return cancelUp()"></td>
			</tr>
		</table>
		</div>
		</div>
		
	</form>

<%@ include file="../footer.jsp"%>