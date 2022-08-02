<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td rowspan="2"><img style="width: 100px;" src="resources/files/${sessionScope.loginMember.m_photo }"></td>
			<td colspan="2">${sessionScope.loginMember.m_id }님 어서오세요.</td>
		</tr>
		<tr>
			<td><a onclick="">내정보</a></td>
			<td><a onclick="location.href='logout.go'">로그아웃</a></td>
		</tr>
	</table>
</body>
</html>