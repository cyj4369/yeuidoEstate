<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" %>
<% request.setCharacterEncoding("utf-8");%>
<%@ include file="/WEB-INF/views/comm/adminHeader.jsp" %> 
<%@ include file="/WEB-INF/views/list/listStyle.jsp" %> 
<script type="text/javascript" src="./resources/js/list/newObApt.js"></script>

<form id="newObApt" method="post" > 
<div class="new_page_title">
	<img src="./resources/images/title_new_ob_1.jpg">
</div>
<div class="new_page_container">
	<table class="new_page_table">
		<tr>
			<td class="title">물건명</td>
			<td colspan="4"><input type="text" id="objtNm" name="objtNm" value="물건명"> </td>
		</tr>
		<tr>
			<td class="title">고객정보</td>
			<td class="title2">성명 </td>
			<td width="365px"><input type="text" id="custNm" name="custNm" ></td>
			<td class="title2">연락처</td>
			<td><input type="text" style="width:130px" id="custTel1" name="custTel1">
				 - <input type="text" style="width:155px" id="custTel2" name="custTel2">
				 - <input type="text" style="width:155px" id="custTel3" name="custTel3"></td>
		</tr>
		<tr>
			<td class="title">단지명/면적</td>
			<td colspan="2">
				<select  id="buildNm" name="buildNm" style="width:350px">
					<option value="AP001">샘플아파트</option>
				</select>&nbsp;
				<input type="text" style="width:135px" id="area" name="area"> 평형
				<input type= "button" onClick="goPopup();" value= " 팝업 " /> 
			</td>
			
			<td class="title">유형</td>
			<td>
			  <input type="radio" id="saleTp1" name="saleTp" value="ST001"/><label for="saleTp1">매매</label>
			  <input type="radio" id="saleTp2" name="saleTp" value="ST002"/><label for="saleTp2">전세</label>
			  <input type="radio" id="saleTp3" name="saleTp" value="ST003"/><label for="saleTp3">월세</label>
			  <input type="radio" id="saleTp4" name="saleTp" value="ST004"/><label for="saleTp4">렌트</label>
			
			</td>
		</tr>
		<tr>
			<td class="title">매매가</td>
			<td colspan="2"><input type="text"  id="bargainAmt" name="bargainAmt" style="width:140px"> 만원</td>
			<td class="title">보증금</td>
			<td><input type="text" style="width:140px" id="depositAmt" name="depositAmt"> 만원 / 월세 
				<input type="text" style="width:140px" id="monthlyAmt" name="monthlyAmt"> 만원</td>
		</tr>
		<tr>
			<td class="title">동 / 층 / 향</td>
			<td colspan="2">
				<select style="width:130px" id="dong" name="dong"><option>A</option></select> 동&nbsp;&nbsp;&nbsp;
				<input type="text" name="floor" name="floor" maxlength="3"/> 층&nbsp;&nbsp;&nbsp;
				<select style="width:130px" id="directionTp" name="directionTp" >
					<option value="DR001">동</option>
					<option value="DR002">서</option>
					<option value="DR003">남</option>
					<option value="DR004">북</option>
					<option value="DR005">남동</option>
					<option value="DR006">남서</option>
					<option value="DR007">북서</option>
					<option value="DR008">북동</option>
				</select>
			</td>
			<td class="title">만기일</td>
			<td><input type="text" id="dueDt" name="dueDt" style="width:140px"><img src="./resources/images/icon_cal.jpg"></td>
		</tr>
		<tr>
			<td class="title">방 수 / 욕실 수</td>
			<td colspan="2">
				<input type="text" style="width:140px" id="roomCnt" name="roomCnt" > 개 / 
				<input type="text" style="width:140px" id="bathCnt" name="bathCnt" > 개</td>
			<td class="title">온돌</td>
			<td>
				<input type="radio" name="ondolYn" id="ondolYn1" value="Y" /><label for="ondolYn1">있음</label>
				<input type="radio" name="onDolYn" id="onDolYn2" value="N" /><label for="ondolYn2">없음</label>
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
			  <input type="text" style="width:140px" id="availableDt" name="availableDt"> 일
			</td>
		</tr>
		<tr>
			<td class="title">상태</td>
			<td colspan="4">
			  <input type="radio" id="conditionTp1" name="conditionTp" value="CD001"/><label for="conditionTp1">기본</label>
			  <input type="radio" id="conditionTp2" name="conditionTp" value="CD002"/><label for="conditionTp2">양호</label>
			  <input type="radio" id="conditionTp3" name="conditionTp" value="CD003"/><label for="conditionTp3">깨끗</label>
			  <input type="radio" id="conditionTp4" name="conditionTp" value="CD004"/><label for="conditionTp4">준A급</label>
			  <input type="radio" id="conditionTp5" name="conditionTp" value="CD005"/><label for="conditionTp5">A급</label>
			  <input type="radio" id="conditionTp6" name="conditionTp" value="CD006"/><label for="conditionTp6">올수리</label>
			  <input type="radio" id="conditionTp7" name="conditionTp" value="CD007"/><label for="conditionTp7">특A급</label>
			</td>
		</tr>
		<tr>
			<td class="title">매물설명</td>
			<td colspan="4">
				<textarea rows="6" cols="50" id="memp" name="memo"></textarea>
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
			  <input type="checkbox" name="divisionTp" id="divisionTp1" value="DT001"/><label for="divisionTp1">공동</label>
			  <input type="checkbox" name="divisionTp" id="divisionTp2" value="DT002"/><label for="divisionTp2">광고</label>
			</td>
		</tr>
	</table>
	<div style="height:50px;"></div>
	<div style="width:1400px;margin:auto;text-align:center;">
		<a href="#"><img src="./resources/images/btn_add.jpg" onclick="f_saleobject_save();return false;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#"><img src="./resources/images/btn_cancel.jpg"></a>
	</div>
</div>
<input type="hidden" name="objtTpNo" id="objtTpNo" value=""/>
<input type="hidden" name="objtTp" id="objtTp" value="OT001"/>
</form>
<%@ include file="/WEB-INF/views/comm/footer.jsp" %> 