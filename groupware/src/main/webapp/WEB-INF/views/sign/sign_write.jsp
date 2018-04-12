<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<c:url value='/'/>resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script src="<c:url value='/'/>resources/js/jquery-3.3.1.min.js"></script>
<h1>문서작성</h1>
<hr>
<h2>문서종류 : ${vo.doc_name }</h2>
<div>
	<form method="post" action="<c:url value='/'/>addsign" id="write_form">
		<textarea name="ir1" id="ir1" rows="10" cols="100">${vo.doc_content }</textarea>
		<input type="button" value="등록" id="submit_btn">
	</form>
</div>
<script type="text/javascript">
$(function () {
		var oEditors = [];
		
		nhn.husky.EZCreator.createInIFrame({
		
		    oAppRef: oEditors,
		
		    elPlaceHolder: "ir1",
		
		    sSkinURI: "<c:url value='/'/>resources/se2/SmartEditor2Skin.html",
		
		    fCreator: "createSEditor2"
		});
		//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
		$("#submit_btn").click(function () {
		    // 에디터의 내용이 textarea에 적용된다.
		    oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		    $("#write_form").submit();
		});
});

</script>