<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<h3><span class="glyphicon glyphicon-cog"></span> 근태 설정</h3>
	<div class="box">
		<div class="col-md-12">
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">기본 설정</a></li>
              <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">카테고리 설정</a></li>
              <li class=""><a href="#tab_3" data-toggle="tab" aria-expanded="false">관리자 설정</a></li>
              <li class=""><a href="#tab_4" data-toggle="tab" aria-expanded="false">사용자 휴가 설정</a></li>
              <li class=""><a href="#tab_5" data-toggle="tab" aria-expanded="false">연간 휴가 설정</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                
                <!--  -->
				<div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><span class="glyphicon glyphicon-time"></span> 시간 설정</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
	                <tr>
	                  <th>출/퇴근 시간</th>
	                  <td>
	                  	출근
	                  	<div class="form-group">
		                  <label>Time picker:</label>
		
		                  <div class="input-group">
		                    <input type="text" class="form-control timepicker">
		
		                    <div class="input-group-addon">
		                      <i class="fa fa-clock-o"></i>
		                    </div>
		                  </div>
		                  <!-- /.input group -->
		                </div>
	                  	 퇴근
	                  	 <div class="form-group">
		                  <label>Time picker:</label>
		
		                  <div class="input-group">
		                    <input type="text" class="form-control timepicker">
		
		                    <div class="input-group-addon">
		                      <i class="fa fa-clock-o"></i>
		                    </div>
		                  </div>
		                  <!-- /.input group -->
		                </div>
	                  </td>
	                </tr>
	                <tr>
	               	  <th>반차 시간</th>
	               	  <td>
	               	  	오전
	               	  	<div class="form-group">
		                  <label>Time picker:</label>
		
		                  <div class="input-group">
		                    <input type="text" class="form-control timepicker">
		
		                    <div class="input-group-addon">
		                      <i class="fa fa-clock-o"></i>
		                    </div>
		                  </div>
		                  <!-- /.input group -->
		                </div>
		                <div class="form-group">
		                  <label>Time picker:</label>
		
		                  <div class="input-group">
		                    <input type="text" class="form-control timepicker">
		
		                    <div class="input-group-addon">
		                      <i class="fa fa-clock-o"></i>
		                    </div>
		                  </div>
		                  <!-- /.input group -->
		                </div>
	               	  	 오후
	               	  	 <div class="form-group">
		                  <label>Time picker:</label>
		
		                  <div class="input-group">
		                    <input type="text" class="form-control timepicker">
		
		                    <div class="input-group-addon">
		                      <i class="fa fa-clock-o"></i>
		                    </div>
		                  </div>
		                  <!-- /.input group -->
		                </div>
		                <div class="form-group">
		                  <label>Time picker:</label>
		
		                  <div class="input-group">
		                    <input type="text" class="form-control timepicker">
		
		                    <div class="input-group-addon">
		                      <i class="fa fa-clock-o"></i>
		                    </div>
		                  </div>
		                  <!-- /.input group -->
		                </div>
	               	  </td>
	                </tr>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
				
				<!--  -->
                 <!--  -->
				<div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><span class="glyphicon glyphicon-wrench"></span> 기능 설정</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
	                <tr>
	                  <th>출/퇴근 기능</th><td>출/퇴근 허용IP 설정</td>
	                </tr>
	                <tr>
	               	  <th>로그인 기능</th><td>로그인시 출근 자동 등록</td>
	                </tr>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
				
				<!--  -->
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
               <b>기능 설정</b>

                <p>Exactly like the original bootstrap tabs except you should use
                  the custom wrapper <code>.nav-tabs-custom</code> to achieve this style.</p>
                A wonderful serenity has taken possession of my entire soul,
                like these sweet mornings of spring which I enjoy with my whole heart.
                I am alone, and feel the charm of existence in this spot,
                which was created for the bliss of souls like mine. I am so happy,
                my dear friend, so absorbed in the exquisite sense of mere tranquil existence,
                that I neglect my talents. I should be incapable of drawing a single stroke
                at the present moment; and yet I feel that I never was a greater artist than now.
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_3">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                like Aldus PageMaker including versions of Lorem Ipsum.
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_4">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                like Aldus PageMaker including versions of Lorem Ipsum.
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_5">
                Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                It has survived not only five centuries, but also the leap into electronic typesetting,
                remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
                sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                like Aldus PageMaker including versions of Lorem Ipsum.
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
        </div>
	</div>
</div>
<!-- bootstrap time picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="../../plugins/timepicker/bootstrap-timepicker.min.js"></script>

<script>
	$(function(){
		  //Timepicker
	    $(".timepicker").timepicker({
	      showInputs: false
	    });

	});
</script>