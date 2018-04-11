<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/css/common.css'/>">
</head>
<body>
<div id="wrap">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="body">
		<div id="side">
			<div id="sidetop">
				<tiles:insertAttribute name="sidetop"/>
			</div>
			<div id="sidebottom">
				<tiles:insertAttribute name="sidebottom"/>
			</div>
		</div>
		<div id="main">
			<tiles:insertAttribute name="main"/>
		</div>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
</html>