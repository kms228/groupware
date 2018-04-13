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
	<h1>사원등록하기</h1>
	<form action="<c:url value='/'/>join" method="post">
		<table style="margin-top: 40px;">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="ACNT_ID" required="required"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="ACNT_PWD" required="required"></td>
			</tr>
			<tr>
				<th>비밀번호확인</th>
				<td><input type="password" name="ACNT_PWD2" required="required"></td>
			</tr>
			<tr>
				<th>사원이름</th>
				<td><input type="text" name="EMP_NAME" required="required">
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
				<td><input type="date" name="EMP_BIRTH">
				<td>
			</tr>
			<tr>
				<th>이메일주소</th>
				<td><input type="email" name="EMP_EMAIL" value="1">
				<td>
			</tr>
			<tr>
				<th>성별</th>
				<td><select>
					<option value="">성별</option>
					<option value="male">남자</option>
					<option value="female">여자</option>
				</select>
				<td>
			</tr>
			<tr>
				<td><input type="submit" value="가입"></td>
			</tr>
		</table>
		<input type="hidden" name="PST_NUM" value="7">
		<input type="hidden" name="DEPT_NUM" value="0">
		<input type="hidden" name="TEAM_NUM" value="1">
	</form>
</body>
</html>










