<%@ include file="/WEB-INF/views/comm/adminHeader.jsp" %> 
<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/views/list/listStyle.jsp" %> 
<%@ include file="/WEB-INF/views/comm/viewTitle.jsp" %> 
<form id="viewObOffice">
<div class="new_page_container">
	<table class="new_page_table">
		<tr>
			<td class="title">물건명</td>
			<td colspan="4">${objtNm}<!--  --></td>
		</tr>
		<tr>
			<td class="title">고객정보</td>
			<td class="title2">성명 </td>
			<td width="365px">${custNm}<!-- 성명 --></td>
			<td class="title2">연락처</td>
			<td>${custTel1}<!-- 연락처1 --> - ${custTel2}<!-- 연락처2 --> - ${custTel3}<!-- 연락처3 --></td>
		</tr>
		<tr>
			<td class="title">단지명</td>
			<td colspan="2">${buildNm}
			</td>
			<td class="title">유형</td>
			<td><!--  -->${saleTpNm}</td>
		</tr>
		<tr>
			<td class="title">분양평형</td>
			<td colspan="2">
				<!--  --> ${area}
			</td>
			<td class="title">실평형</td>
			<td><!--  -->${realArea}</td>
		</tr>
		<tr>
			<td class="title">매매가</td>
			<td colspan="2"><!--  -->${bargainAmt}만원</td>
			<td class="title">보증금</td>
			<td><!--  --> ${depositAmt}만원</td>
		</tr>
		<tr>
			<td class="title">동 / 층 / 향</td>
			<td colspan="2">
				<!-- 동 --> ${dong}동&nbsp;&nbsp;&nbsp;
				<!-- 층 --> ${floor}층&nbsp;&nbsp;&nbsp;
				<!-- 향 --> ${directionTpNm}향</td>
			<td class="title">만기일</td>
			<td>${dueDt}<!-- 만기일 --></td>
		</tr>
		<tr>
			<td class="title">인테리어 유무</td>
			<td colspan="4"><!--  -->${interiorYn}</td>
		</tr>
		<tr>
			<td class="title">입주가능일</td>
			<td colspan="4">${availableTpNm}&nbsp;&nbsp;<!--  -->${availableDt}</td>
		</tr>
		<tr>
			<td class="title">매물설명</td>
			<td colspan="4"><!--  -->${memo}</td>
		</tr>
		<tr>
			<td class="title">첨부사진</td>
			<td colspan="4"><!--  --></td>
		</tr>
		<tr>
			<td class="title">분류</td>
			<td colspan="4">${activeTpNm}, ${etc}<!-- 분류 --></td>
		</tr>
	</table>

<%@ include file="/WEB-INF/views/comm/viewObBottom.jsp" %> 
</div>
</form>
<%@ include file="/WEB-INF/views/comm/footer.jsp" %> 