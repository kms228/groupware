<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<table >
			<tr>
				<th>아이디</th>
				<td><input type="text" name="ACNT_ID">
				<td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="ACNT_PWD"></td>
			</tr>
			<tr>
				<th>비밀번호확인</th>
				<td><input type="password" name="ACNT_PWD2"></td>
			</tr>
			<tr>
				<th>사원이름</th>
				<td><input type="text" name="EMP_NAME">
				<td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="EMP_PHONE">
				<td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="EMP_ADDR">
				<td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="EMP_BIRTH">
				<td>
			</tr>
			<tr>
				<th>이메일주소</th>
				<td><input type="text" name="EMP_EMAIL">
				<td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="text" name="EMP_GENDER">
				<td>
			</tr>
			<tr>
				<td><input type="submit" value="가입"></td>
			</tr>
			



		</table>
	</form>
</body>
</html>










