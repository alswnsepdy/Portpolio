<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="enter/enter.js"></script>
<form name="enterList" action="enter_suc">
		<table id="enterList" style="text-align: center; width:100%;">
			<tr>
				<th></th>
				<th>상품 정보</th>
				<th>고객 이름</th>
				<th>사이즈</th>
				<th>응모한날짜</th>
				<th>당첨 여부</th>
				</tr>
				<c:forEach items="${enterList }" var="enterVO">
				<tr>
				<td>
				<input type="checkbox" value="${enterVO.eseq }" name="eseq">
				<a href="drop_page_detail?pseq=${enterVO.pseq}">
				<img src="images/${enterVO.image }" width="100px" height="120px;">
				
				</a>
				</td>
				<td>
				<a href="drop_page_detail?pseq=${enterVO.pseq}">${enterVO.pname }</a>
				</td>
				<td>
				${enterVO.name }
				</td>
				<td>
				${enterVO.price}
				</td>
				<td>
				<fmt:formatDate value="${enterVO.enterdate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<c:if test="${enterVO.condition == 1}">
					<label style="color:red;">응모중</label>
					</c:if>
				</td>
				</c:forEach>
		</table>
		<div align="right">
		<input class="btn btn-primary" type="submit" value="당첨처리하기" onclick="return enter_suc()">
		<input class="btn btn-primary" type="button" value="낙첨처리하기" onclick="return enter_fail()">
		</div>
	</form>
<%@ include file="../footer.jsp"%>