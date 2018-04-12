<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<form action="<c:url value='/'/>join" method="post">
아이디<input type="text" name="ACNT_ID"><br>
비밀번호<input type="password" name="ACNT_PWD"><br>
비밀번호확인<input type="password" name="ACNT_PWD2"><br>
<input type="submit" value="가입">
<input type="hidden" name="EMP_NUM" value="1"><br>
</form>
</body>
</html>