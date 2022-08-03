<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="reg.go" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input name="a_title"></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input name="a_photo" type="file"></td>
			</tr>
			<tr>
				<td>줄거리</td>
				<td><textarea name="a_txt"></textarea></td>
			</tr>
			<tr>
				<td>장르</td>
				<td><select name="a_genre">
						<option value="러브코미디">러브코미디</option>
						<option value="판타지">판타지</option>
						<option value="로맨스">로맨스</option>
						<option value="액션">액션</option>
						<option value="SF">SF</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>
			</tr>
		</table>
	</form>

</body>
</html>