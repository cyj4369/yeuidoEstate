<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ include file="/WEB-INF/views/comm/adminHeader.jsp" %> 
<%@ include file="/WEB-INF/views/list/listStyle.jsp" %> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript" src="./resources/js/list/addObject.js"></script>
<form id="newObStore" method="post" > 
<div class="new_page_title">
	<img src="./resources/images/title_new_ob_2.jpg">
</div>

<div class="new_page_container">
	<table class="new_page_table">
		<tr>
			<td class="title">물건명</td>
			<td colspan="4"><input type="text" id="objtNm" name="objtNm" > </td>
		</tr>
		<tr>
			<td class="title">고객정보</td>
			<td class="title2">성명 </td>
			<td width="365px"><input type="text" id="custNm" name="custNm" ></td>
			<td class="title2">연락처</td>
			<td><input type="number" style="width:120px" id="custTel1" name="custTel1" min="0" max="999" oninput="if(this.value.length>4) this.value=this.value.slice(0,3)">
				 - <input type="number" style="width:130px" id="custTel2" name="custTel2" min="0" max="9999" oninput="if(this.value.length>5) this.value=this.value.slice(0,4)">
				 - <input type="number" style="width:130px" id="custTel3" name="custTel3" min="0" max="9999" oninput="if(this.value.length>5) this.value=this.value.slice(0,4)"></td>
		</tr>
		
		<tr>
			<td class="title">건물명 </td>
			<td colspan="2">
				<select  id="buildCd" name="buildCd" style="width:350px">
				</select>&nbsp;
			</td>
			<td class="title">면적/층</td>
			<td>
				 분양 <input type="number" style="width:80px" id="area" name="area" min="0" max="999999" oninput="if(this.value.length>7) this.value=this.value.slice(0,6)"> 평형
				/ 실 <input type="number" style="width:80px" id="realArea" name="realArea" min="0" max="999999" oninput="if(this.value.length>7) this.value=this.value.slice(0,6)"> 평형&nbsp;&nbsp;&nbsp;
				<input type="number" name="floor" name="floor" style="width:80px" min="0" max="999" oninput="if(this.value.length>3) this.value=this.value.slice(0,3)"  /> 층
			</td>

		</tr>
		<tr>
			<td class="title">유형</td>
			<td colspan="2">
			  <input type="radio" id="saleTp1" name="saleTp" value="ST001"/><label for="saleTp1">매매</label>
			  <input type="radio" id="saleTp3" name="saleTp" value="ST003"/><label for="saleTp3">월세</label>
			</td>
			<td class="title">업종</td>
			<td>
			 <input type="text" id="businessNm" name="businessNm" style="width:350px">
			 </td>
		</tr>
		<tr>
			<td class="title">매매가</td>
			<td colspan="2">
			<input type="text" id="bargainAmt" name="bargainAmt"  onkeyup="inputNumberFormat(this)" style="text-align:right;width:140px"/> 만원</td>
			<td class="title">보증금</td>
			<td><input type="text" id="depositAmt" name="depositAmt" onkeyup="inputNumberFormat(this)" style="text-align:right;width:140px"/> 만원 / 월세 
				<input type="text" id="monthlyAmt" name="monthlyAmt" onkeyup="inputNumberFormat(this)" style="text-align:right;width:140px"/> 만원</td>
		</tr>
		<tr>
			<td class="title">권리금</td>
			<td colspan="2">
				권리금 <input type="text" id="rightAmt" name="rightAmt"  onkeyup="inputNumberFormat(this)" style="text-align:right;width:140px"/>  만원 / 
				관리비 <input type="text" id="manageAmt" name="manageAmt"  onkeyup="inputNumberFormat(this)" style="text-align:right;width:140px"/>만원	
			</td>
			
			<td class="title">만기일</td>
			<td><input type="text" id="dueDt" name="dueDt" class="datepicker" style="width:140px"><img src="./resources/images/icon_cal.jpg"></td>
		</tr>
		<tr>
			<td class="title">방 수 / 욕실 수</td>
			<td colspan="2">
				<input type="number" id="roomCnt" name="roomCnt" min="0" max="99" oninput="if(this.value.length>3) this.value=this.value.slice(0,2)" style="width:140px" > 개 / 
				<input type="number" id="bathCnt" name="bathCnt" min="0" max="99" oninput="if(this.value.length>3) this.value=this.value.slice(0,2)" style="width:140px"> 개 
			</td>
			<td class="title">온돌</td>
			<td>
			  <input type="radio" id="ondolYn1" name="ondolYn" value="Y"/><label for="ondolYn1">있음</label>
			  <input type="radio" id="ondolYn2" name="ondolYn" value="N"/><label for="ondolYn2">없음</label>
			</td>
		</tr>
		<tr>
			<td class="title">입주가능일</td>
			<td colspan="4">
			  <input type="radio" id="availableTp1" name="availableTp" value="AD001"/><label for="availableTp1">정상</label>
			  <input type="radio" id="availableTp2" name="availableTp" value="AD002"/><label for="availableTp2">하시</label>
			  <input type="radio" id="availableTp3" name="availableTp" value="AD003"/><label for="availableTp3">공가</label>
			  <input type="radio" id="availableTp4" name="availableTp" value="AD004"/><label for="availableTp4">주전</label>
			  <input type="radio" id="availableTp5" name="availableTp" value="AD005"/><label for="availableTp5">세안고</label>
			  <input type="radio" id="availableTp6" name="availableTp" value="AD006"/><label for="availableTp6">협의</label>
			  <input type="text" style="width:140px" id="availableDt" name="availableDt" class="datepicker"> 일
			</td>
		</tr>
		
		<tr>
			<td class="title">매물설명</td>
			<td colspan="4">
				<textarea rows="6" cols="50" id="memo" name="memo"></textarea>
			</td>
		</tr>
		<tr>
			<td class="title">첨부사진</td>
			<td colspan="4"><img src="./resources/images/icon_attach.jpg"></td>
		</tr>
		<tr>
			<td class="title">분류</td>
			<td colspan="4">
			  <input type="radio" id="activeTp1" name="activeTp" value="AT001"/><label for="activeTp1">활성</label>
			  <input type="radio" id="activeTp2" name="activeTp" value="AT002"/><label for="activeTp2">보류</label>
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <input type="checkbox" name="publicYn" id="publicYn" value="Y" /><label for="publicYn">공동</label>
			  <input type="checkbox" name="advertiseYn" id="advertiseYn" value="Y" /><label for="advertiseYn">광고</label>
			</td>
		</tr>
	</table>
	
	<div style="height:50px;"></div>
	<div style="width:1400px;margin:auto;text-align:center;">
		<a href="#"><img src="./resources/images/btn_add.jpg" onclick="f_saleobject_save();return false;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#"><img src="./resources/images/btn_cancel.jpg"></a>
	</div>
</div>
<input type="hidden" name="objtNo" id="objtNo" value="${objtNo}"/>
<input type="hidden" name="objtTp" id="objtTp" value="OT002"/>

</form>
<%@ include file="/WEB-INF/views/comm/footer.jsp" %> 