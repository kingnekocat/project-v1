<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="reviewupdate.go?r_no=${reviews.r_no }" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td><input name="r_title" value="${reviews.r_title }"></td>
			</tr>
			<tr>
				<td><img src="resources/files/${reviews.r_photo }">
				<input name="oldphoto" type="hidden" value="${reviews.r_photo }" ></td>
			</tr>
			<tr>
				<td><input name="r_photo" type="file"></td>
			</tr>
			<tr>
				<td><textarea  name="r_txt">${reviews.r_txt }</textarea></td>
			</tr>
			<tr>
				<td><button>수정하기</button></td>
			</tr>
		</table>
	</form>

</body>
</html>