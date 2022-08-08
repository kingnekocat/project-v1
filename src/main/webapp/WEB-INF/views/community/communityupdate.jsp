<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="communityUpdate.go?c_no=${communitys.c_no }" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan="2"><input name="c_title" value="${communitys.c_title }" ></td>
		</tr>
		<tr>
			<td colspan="2"><img src="resources/files/${communitys.c_photo }">
			<input type="hidden" name="oldphoto" value="${communitys.c_photo }"></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="c_txt">${communitys.c_txt }</textarea></td>
		</tr>
		<tr>
			<td><input type="file" name="c_photo"></td>
			<td><button>수정하기</button></td>
		</tr>
	</table>
</form>

</body>
</html>