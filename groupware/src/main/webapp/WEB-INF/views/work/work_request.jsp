<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.DecimalFormat"%>
<%!
//년월일 구하기
public static String getdate(int mountdate){
   //mountdate = 해당 숫자만큼 더해진 날짜를 반환
   DecimalFormat df = new DecimalFormat("00");
   Calendar calendar = Calendar.getInstance();
 
   calendar.add(calendar.DATE, mountdate);
   String year = Integer.toString(calendar.get(Calendar.YEAR)); //년도
   String month = df.format(calendar.get(Calendar.MONTH) + 1); //달
   String day = df.format(calendar.get(Calendar.DATE)); //날짜
   int dow = calendar.get(Calendar.DAY_OF_WEEK);
   
   String date = year +'년'+ month+'월' + day+'일'+'('+getdow(dow)+')';   //8자리 숫자
   return date;
}
public static String getdow(int dow){
	if(dow==1){return "일";}
	else if(dow==2){return "월";}
	else if(dow==3){return "화";}
	else if(dow==4){return "수";}
	else if(dow==5){return "목";}
	else if(dow==6){return "금";}
	else{return "토";}
}
//년도 구하기
public static String getyear(int mountdate){
	DecimalFormat df = new DecimalFormat("00");
	Calendar calendar = Calendar.getInstance();
	calendar.add(calendar.DATE, mountdate);
	String year = Integer.toString(calendar.get(Calendar.YEAR)); //년도
	String date = year+'년';
	return date;
}
//시분초 구하기
public static String gettime(int mountdate){
	DecimalFormat df = new DecimalFormat("00");
	Calendar calendar = Calendar.getInstance();
	calendar.add(calendar.DATE, mountdate);
	String hour = df.format(calendar.get(Calendar.HOUR));//시
	String minute = df.format(calendar.get(Calendar.MINUTE));//분
	String secont = df.format(calendar.get(Calendar.SECOND));//초
	String date = hour+':'+minute;
	return date;
}
%>
<div>
	<h1 class="corpor_title"> 근태 신청</h1>
	<table cellpadding="0" cellspacing="0" class="corporHeaderTable">
		<colgroup>
			<col width="20%">
			<col width="20%">
			<col width="20%">                            
			<col width="20%">
		</colgroup>
		<tbody>
			<tr>
				<!-- Today 년월일 -->
				<th class="date"><%out.print (getdate(0));%></th>
				<th align="center">
				<!-- 출근버튼 -->                   
					<span class="gw_btn_pack Rblue">
						<button type="button" id="btn_workstart" title="출근" style="width: 100px">출근</button>
					</span>
					<input type="text" id="txtworkstart" class="adminInput" value="" readonly="readonly">
				</th> 
				<th align="center">
					<span class="gw_btn_pack red">
						<button type="button" id="btn_workend" title="퇴근" style="width: 100px">퇴근</button>
					</span>
					<input type="text" id="txtworkend" class="adminInput" value="" readonly="readonly">
				</th> 
				<th id="div_holiday" class="holidayth"><%out.print (getyear(0));%> 휴일 </th>
			</tr>
		</tbody>
	</table>
	<br>
	<h1 class="corpor_title"> 근태 현황</h1>
	<div class="corporTaWrap">   
    	<table cellpadding="0" cellspacing="0" class="corporWriteTable">
			<colgroup>
				<col width="22%">
				<col width="80%">
			</colgroup>

			<tbody>
				<tr>
					<th>연차 현황</th>
					<td>
						<strong>
							 총 연차 일수 : <label class="vacationLeave" style="color:green;">30 </label>      
							 사용일 : <label class="vacationLeave" style="color:blue;">2.5 </label>     
							 가용일 : <label class="vacationLeave" style="color:red;">27.5 </label>
						</strong> 
					</td>
				</tr>
                                
				<tr>    
					<th scope="row"><label for="Choice">구분</label></th>
					<td>
						<select id="category_type" name="category_type" data-placeholder="신청 항목을 선택하세요." class="chosen-select" style="width: 220px;">
							<option id="vactaion_100" value="Full Day">연차</option>
							<option id="vactaion_101" value="Half Day">반차</option>
							<option id="vactaion_102" value="Late Come">지각</option>
							<option id="vactaion_103" value="Early Go">조퇴</option>
							<option id="vactaion_105" value="Night Shift">야근</option>
							<option id="vactaion_106" value="Business Trip">출장</option>
						</select>
					</td>
				</tr>
                                
				<tr>
					<th scope="row">일자/시간</th>
					<td>
						<input type="text" id="txtsdate" name="txtsdate" onchange="showTime();" onfocus="return calendershow(this, null);" value="" class="corporDInput" readonly="readonly">
						<label for="sdate" class="imgLabel"> <img src="/segio/works/attendance/image/calendar_img.gif" id="imgsdate" onmouseup="calendershow(document.getElementById('txtsdate'), this);"></label>                          
						<label id="lbltilt" for="firstMonth" class="tiltLabel"> ~  </label>                         
						<input type="text" id="txtedate" name="txtedate" onchange="showTime();" onfocus="calendershow(this, null);" value="" class="corporDInput" readonly="readonly">
						<label id="lbledate" for="edate" class="imgLabel"><img src="/segio/works/attendance/image/calendar_img.gif" id="imgedate" onmouseup="calendershow(document.getElementById('txtedate'), this);"></label>                      
						<label id="lblspace" for="space">&nbsp;&nbsp;&nbsp;</label>

						<!-- vaction time setting -->            
						<label id="lblstime" for="txtstime" class="imgLabel" style="display: none;"><img src="/segio/works/attendance/image/start.png" id="imgstime"></label>
						<input type="text" id="txtstime" name="txtstime" class="timeInput hasPtTimeSelect" value="" readonly="readonly" style="display: none;"> 
						<label id="lbltilttime" for="time" class="tiltLabel" style="display: none;"> ~  </label>
						<label id="lbletime" for="txtetime" class="imgLabel" style="display: none;"><img src="/segio/works/attendance/image/end.png" id="imgetime"></label>
						<input type="text" id="txtetime" name="txtetime" class="timeInput hasPtTimeSelect" value="" style="display: none;">   

						<!-- Half day selection ap/ or pm (get times from admin setting--> 
 						<span id="spantimechoiceam" style="margin-left:10px; display: none;">
							<input type="radio" id="opttimechoice_am" name="opttimechoice" value="am" checked="checked"> <label class="timechoice" for="opttimechoice_am">오전 &nbsp;</label>
							<input type="radio" id="opttimechoice_pm" name="opttimechoice" value="pm"> <label class="timechoice" for="opttimechoice_pm">오후 </label>
						</span>
					</td>
				</tr>
				<tr>
					<th>대상자</th>
					<td style="height:31px; ">
						<ul class="corporUl">  
							<input type="radio" class="corporRadio" id="optusertype_1" name="usertype" value="self" checked="checked"><label for="optusertype_1">본인</label> &nbsp;
							<input type="radio" class="corporRadio" id="optusertype_2" name="usertype" value="other"><label for="optusertype_2">타 사용자</label>
							<!--<div id="divAdminRequestOtherUser" class="divAdminRequestOtherUser" >-->
							<span id="divAdminRequestOtherUser" class="request_users" style="display: none;">
							<input type="text" class="corporInput" id="txtrequest_uname" name="txtrequestbyadmin_uname" value="" readonly="readonly">
							<!--Only User Id will be saved in database. -->
							<input type="hidden" class="corporInput" id="txtrequest_users" name="txtrequest_users" value="" readonly="readonly">
							<span class="gw_btn_pack blue"><button type="button" id="organization_approval" title="조직도">조직도</button></span>
							</span>
						</ul>
					</td>
				</tr>
				<tr>
					<th>사유</th>
					<td><textarea id="content" name="content" class="companionText" placeholder="사유 또는 용무." maxlength="250" cols="50"></textarea></td>
				</tr>
				<tr>
					<th>첨부</th>
					<td><input type="file" class="fileInput" title="파일첨부" name="fileattach" id="fileattach"></td>
				</tr>
				<tr>
					<th scope="row"><label for="corporUser">결재선 선택</label></th>
					<td>
						<input type="text" class="corporInput" id="txtapprover_name" name="txtapprover_name" readonly="readonly">
						<input type="hidden" class="corporInput" id="txtapprover_uid" name="txtapprover_uid">
						<span class="gw_btn_pack blue"><button type="button" id="button_approval_user" title="조회">조직도</button></span>
						(결재 순서에 맞춰 선택해 주세요.)
					</td>
				</tr>  
			</tbody>
		</table>
	</div>
<script type="text/javascript">
	$(function(){
		$("#btn_workstart").click(function(){
			$("#txtworkstart").val("여기에 gettime(0)의 리턴값을 넣고싶다.");
		}); 
	});
</script>
</div>