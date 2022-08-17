<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="reviewreg.go" method="post" enctype="multipart/form-data" >
		<table id="RegReviewtbl" border="1">
			<tr>
				<td>제목</td>
				<td><input id="RegReviewInput1" name="r_title"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="r_txt"></textarea></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input name="r_photo" type="file"></td>
			</tr>
			<tr>
				<td colspan="2"><button>작성하기</button></td>
			</tr>
		</table>
	</form>
	
</body>
</html>