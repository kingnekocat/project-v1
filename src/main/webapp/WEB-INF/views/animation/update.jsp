<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table id="animationUpTbl2">
	<tr>
	<td></td>
	</tr>
	</table>

	<form action="animationupdate.go" method="post" enctype="multipart/form-data">
		<table id="animationUpTbl">
			<tr>
				<td><a style="font-weight: 900; font-size: 14pt;">제목</a></td>
				<td><input id="upinput1" value="${one.a_title }" name="a_title"></td>
			</tr>
			<tr>
				<td><a style="font-weight: 900; font-size: 14pt;">사진</a></td>
				<td><img src="resources/files/${one.a_photo }"></td>
			</tr>
			<tr>
				<td><a style="font-weight: 900; font-size: 14pt;">사진수정</a></td>
				<td><input name="a_photo" type="file"><input name="oldphoto" type="hidden" value="${one.a_photo }" ></td>
			</tr>
			<tr>
				<td><a style="font-weight: 900; font-size: 14pt;">줄거리</a></td>
				<td><textarea name="a_txt">${one.a_txt }</textarea></td>
			</tr>
			<tr>
				<td><a style="font-weight: 900; font-size: 14pt;">장르</a></td>
				<td>${one.a_genre }&ensp;<select name="a_genre">
						<option value="러브코미디">러브코미디</option>
						<option value="판타지">판타지</option>
						<option value="로맨스">로맨스</option>
						<option value="액션">액션</option>
						<option value="SF">SF</option>
				</select><input name="oldgenre" type="hidden" value="${one.a_genre }" >
				<input name="a_no" type="hidden" value="${one.a_no }" ></td>
			</tr>
			<tr>
				<td></td>
				<td><br><button>수정하기</button></td>
			</tr>
		</table>
	</form>
	
	<table style="height: 100px;">
	<tr>
	<td></td>
	</tr>
	</table>
	
	
</body>
</html>