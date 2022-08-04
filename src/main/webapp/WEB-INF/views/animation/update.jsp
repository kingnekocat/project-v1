<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="animationupdate.go" method="post" enctype="multipart/form-data">
		<table border="1" id="animationTbl">
			<tr>
				<td>제목</td>
				<td><input value="${one.a_title }" name="a_title"></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><img src="resources/files/${one.a_photo }"></td>
			</tr>
			<tr>
				<td>사진수정</td>
				<td><input name="a_photo" type="file"><input name="oldphoto" type="hidden" value="${one.a_photo }" ></td>
			</tr>
			<tr>
				<td>줄거리</td>
				<td><textarea name="a_txt">${one.a_txt }</textarea></td>
			</tr>
			<tr>
				<td>장르</td>
				<td>${one.a_genre }<select name="a_genre">
						<option value="러브코미디">러브코미디</option>
						<option value="판타지">판타지</option>
						<option value="로맨스">로맨스</option>
						<option value="액션">액션</option>
						<option value="SF">SF</option>
				</select><input name="oldgenre" type="hidden" value="${one.a_genre }" >
				<input name="a_no" type="hidden" value="${one.a_no }" ></td>
			</tr>
			<tr>
				<td><button>수정하기</button></td>
			</tr>
		</table>
	</form>
	
</body>
</html>