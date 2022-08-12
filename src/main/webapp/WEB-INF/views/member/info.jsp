<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/go.js"></script>
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
	
	<form action="update.go?m_id=${sessionScope.loginMember.m_id }" method="post" enctype="multipart/form-data">
		<table border="1" id="loginInfoTbl">
			<tr>
				<td>ID</td>
				<td>${sessionScope.loginMember.m_id }</td>
			</tr>
			<tr>
				<td>프로필 사진</td>
				<td><img style="width: 100px;" src="resources/files/${sessionScope.loginMember.m_photo }">
				<input name="oldphoto" type="hidden" value="${sessionScope.loginMember.m_photo }">
				</td>
			</tr>
			<tr>
				<td>프로필 사진 수정</td>
				<td><input name="m_photo" type="file"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input name="m_nickname" value="${sessionScope.loginMember.m_nickname }"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${sessionScope.loginMember.m_addr }
				<select name="m_addr">
						<option value="서울">서울</option>
						<option value="부산">부산</option>
						<option value="인천">인천</option>
						<option value="대구">대구</option>
						<option value="충청도">충청도</option>
						<option value="전라도">전라도</option>
						<option value="대전">대전</option>
				</select>
				<input name="oldaddr" type="hidden" value="${sessionScope.loginMember.m_addr }">
				</td>
			</tr>
			<tr>
				<td>선호장르</td>
				<td>${sessionScope.loginMember.m_fav }
				<select name="m_fav">
						<option value="러브코미디">러브코미디</option>
						<option value="판타지">판타지</option>
						<option value="로맨스">로맨스</option>
						<option value="액션">액션</option>
						<option value="SF">SF</option>
				</select>
				<input name="oldfav" type="hidden" value="${sessionScope.loginMember.m_fav }">
				</td>
			</tr>
			<tr>
				<td><button>수정하기</button></td>
				<td><button type="button" onclick="deletemGo();">탈퇴하기</button></td>
			</tr>
		</table>
	</form>

</body>
</html>