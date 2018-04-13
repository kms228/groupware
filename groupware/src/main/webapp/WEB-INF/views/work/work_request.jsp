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
	<h3 class="corpor_title"><span class="glyphicon glyphicon-time"></span> 출근 / 퇴근</h3><br>
			<div class="box-body">
              <div class="row">
                <div class="col-xs-2">
                  <input type="text" class="form-control" value="<%out.print (getdate(0));%>" readonly="readonly">
                </div>
                <div class="col-xs-1">
                  <button type="button" class="btn btn-block btn-primary" id="btn_workstart" title="출근" style="width: 100px">출근</button>
                </div>
                <div class="col-xs-2">
                  <input type="text" class="form-control">
                </div>
                <div class="col-xs-1">
                  <button type="button" class="btn btn-block btn-danger" id="btn_workend" title="퇴근" style="width: 100px">퇴근</button>
                </div>
                <div class="col-xs-2">
                  <input type="text" class="form-control">
                </div>
                <div class="col-xs-2">
                <input type="text" class="form-control" value="<%out.print (getyear(0));%> 휴일" readonly="readonly">
                </div>
              </div>
            </div>
	<br>
	<div class="box">
              <h3 class="box-title"><span class="glyphicon glyphicon-time"></span> 근태 신청</h3>
            <!-- form start -->
            <form>
              <div class="box-body">
              	<div class="form-group">
                  <label for="work1">연차 현황</label>
                  	<div class="form-control">
	                  	총 연차 일수 : <label style="color:green;">30 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 사용일 : <label style="color:blue;">2.5 </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						 가용일 : <label style="color:red;">27.5 </label>
					</div>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">구분</label>
                  <div class="form-group">
                  <select class="form-control" id="exampleInputEmail1">
                    <option>option 1</option>
                    <option>option 2</option>
                    <option>option 3</option>
                    <option>option 4</option>
                    <option>option 5</option>
                  </select>
                  </div>
                <div>
               
                	<div class="form-group">
                	
                  		<label for="exampleInputPassword1">일자/시간</label>
               			<!-- 연차-->
               			<div class="form-group">
			                <div class="input-group">
			                  <div class="input-group-addon">
			                    <i class="fa fa-calendar"></i>
			                  </div>
			                  <input type="text" class="form-control pull-right" id="reservation">
			                </div>
			                <!-- /.input group -->
			              </div>
			              <!-- 반자 -->
			              
			              <div class="form-group">
			                <div class="input-group date">
			                  <div class="input-group-addon">
			                    <i class="fa fa-calendar"></i>
			                  </div>
			                  <input type="text" class="form-control pull-right" id="datepicker">
			                </div>
			                <div class="form-group">
			                  <div class="radio" align="center">
			                    <label>
			                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
			                    	 오전
			                    </label>
			                    <label>
			                      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
			                     	오후
			                    </label>
			                  </div>
			                </div>
			                <!-- /.input group -->
			              </div>
			              
			              <!-- 지각 /조퇴-->
			              
                	</div>
	                <!-- /.input group -->
	              </div>
                </div>
                
                <div class="form-group">
                <div>
                  <label>사유</label>
                  </div>
                  <textarea class="form-control" rows="3" placeholder="사유를 적으세요."></textarea>
                </div>
                </div>
                 <div class="form-group">
                  <label for="exampleInputFile">첨부</label>
                  <input type="file" id="exampleInputFile">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword2">결재선 선택</label>
                  <input type="password" class="form-control" id="exampleInputPassword2" placeholder="결재선 선택">
                </div>
                <div class="box-footer">
                <button type="submit" class="btn btn-block btn-primary">신청</button>
              </div>
                </form>
              </div>
               
                
               
              
              </div>
              <!-- /.box-body -->

<script>
    $(function () {
        $('#datetimepicker6').datetimepicker();
        $('#datetimepicker7').datetimepicker({
            useCurrent: false //Important! See issue #1075
        });
        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });
</script>	