<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
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
/*
function updatePro(){
	var x = document.udfrm;
	
	if(x.price.value == ${product.price}){
		x.price.value = ${product.price};
	}else if(x.content.value==${product.content}){
		x.content.value= ${product.content};
	}else if(x.startdate.value==${product.startdate}){
		x.startdate.value=${product.startdate};
	}else if(x.enddate.value==${product.enddate}){
		x.enddate.value=${product.enddate};
	}else{
		x.submit();
	}
}
*/
</script>
<script type="text/javascript" src="page/product.js"></script>
<form name="udfrm" method="post" action="drop_update_action">
<input type="hidden" name="pseq" value="${product.pseq}">
		<div class="media">
		<img src="images/${product.image }" class="mr-3" alt="..."
			style="width: 700px; , height: 500px;">
			<div>
		<table>
			<tr>
				<th>상품명</th>
				<td width="343" colspan="5"><output>${product.pname }</output></td>
			</tr>
			<tr>
				<th>가격</th>
				<td width="70"><input type="text" name="price" size="11" value="${product.price }"></td>
			</tr>
			<tr>
				<th>상세설명</th>
				<td colspan="5"><textarea name="content" rows="8" cols="70" >${product.content }</textarea>
				</td>
			<tr>
			<tr>
				<th>응모 시작</th>
				<td colspan="5"><input type="text" id="datepicker" name="startdate" value="<fmt:formatDate value="${product.startdate }" pattern="yyyy/MM/dd"/>"></td>
			</tr>
			<tr>
				<th>응모 종료</th>
				<td colspan="5"><input type="text" id="enddatepicker" name="enddate" value="<fmt:formatDate value="${product.enddate }" pattern="yyyy/MM/dd"/>"></td>
			</tr>
			<tr>
			<td><input type="submit" value="등록" >
		<input  type="button" value="취소" onclick="return cancelUp()"></td>
			</tr>
		</table>
		</div>
		</div>
		
	</form>

<%@ include file="../footer.jsp"%>