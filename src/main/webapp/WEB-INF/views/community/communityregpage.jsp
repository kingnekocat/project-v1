<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="communityReg.go" method="post" enctype="multipart/form-data">
	<table border="1" style="width: 450px; height: 300px;">
		<tr>
			<td colspan="2"><input name="c_title" placeholder="제목을 입력하세요"></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="c_txt" placeholder="내용을 입력하세요"></textarea></td>
		</tr>
		<tr>
			<td><input name="c_photo" type="file"></td>
			<td><button>작성하기</button>
		</tr>
	</table>
</form>

</body>
</html>