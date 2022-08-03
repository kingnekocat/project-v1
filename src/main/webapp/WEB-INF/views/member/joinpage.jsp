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

	<table id="homePageTbl" border="1"
		style="width: 1700px; height: 150px; text-align: center;">
		<tr>
			<td width="1000px;"><a onclick="location.href='home.go'"
				style="font-size: 45px;">홈페이지</a></td>
		</tr>
	</table>

	<form action="join.go" method="post" enctype="multipart/form-data">
		<table border="1" id="joinPageTbl">
			<tr>
				<td>ID</td>
				<td><input name="m_id"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input name="m_pw"></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input type="file" name="m_photo"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="m_name"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input name="m_nickname"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><select name="m_addr">
						<option value="서울">서울</option>
						<option value="부산">부산</option>
						<option value="인천">인천</option>
						<option value="대구">대구</option>
						<option value="충청도">충청도</option>
						<option value="전라도">전라도</option>
						<option value="대전">대전</option>
				</select></td>
			</tr>
			<tr>
				<td>선호장르</td>
				<td><select name="m_fav">
						<option value="러브코미디">러브코미디</option>
						<option value="판타지">판타지</option>
						<option value="로맨스">로맨스</option>
						<option value="액션">액션</option>
						<option value="SF">SF</option>
				</select></td>
			</tr>
			<tr>
				<td><button>회원가입</button></td>
			</tr>
		</table>
	</form>

</body>
</html>