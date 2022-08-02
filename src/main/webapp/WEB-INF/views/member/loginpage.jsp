<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/sitecss.css">
</head>
<body>

	<form action="login.go" method="post">
		<table id="loginPageTbl" border="1" style="width: 300px; height: 150px; text-align: center;">
			<tr>
				<td>ID <input name="m_id"></td>
			</tr>
			<tr>
				<td>PW <input name="m_pw"></td>
			</tr>
			<tr>
				<td><button>로그인</button>
				<button type="button" onclick="location.href='joinpage.go'">회원가입</button></td>
			</tr>
		</table>
	</form>


</body>
</html>