<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/check.js"></script>
<script type="text/javascript" src="resources/js/validCheck.js"></script>
<link rel="stylesheet" href="resources/css/member.css">
<link rel="stylesheet" href="resources/css/sitecss.css">
</head>
<body>

	<table id="homefirstTbl">
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>


	<table id="homePageTbl"
		style="width: 1700px; height: 150px; text-align: center;">
		<tr>
			<td width="350px;"></td>
			<td width="1000px;"><a onclick="location.href='home.go'"
				style="font-size: 45px;"><img src="resources/img/logo3.png"></a></td>
			<td style="text-align: center;"></td>
		</tr>
	</table>
	

	<form action="login.go" method="post" name="loginForm" onsubmit="return loginCheck();">
		<table id="loginPageTbl" border="1"
			style="width: 300px; height: 150px; text-align: center;">
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