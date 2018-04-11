<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<h1>HEADER</h1>
	<ul>
		<li><a href="<c:url value='/'/>">홈으로</a></li>
		<li><a href="<c:url value='/sign_main'/>">결재</a></li>
		<li><a href="<c:url value='/'/>">쪽지</a></li>
		<li><a href="<c:url value='/'/>">일정</a></li>
		<li><a href="<c:url value='/'/>">게시판</a></li>
		<li><a href="<c:url value='/'/>">사원관리</a></li>
		<li><a href="<c:url value='/request_work'/>">근태</a></li>
	</ul>
</div>