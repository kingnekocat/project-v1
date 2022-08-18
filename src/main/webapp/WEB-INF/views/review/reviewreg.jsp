<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table id="RegReviewtbl2"><tr><td></td></tr></table>

	<form action="reviewreg.go" method="post" enctype="multipart/form-data" >
		<table id="RegReviewtbl">
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
	
	<table style="height: 100px;"><tr><td></td></tr></table>
	
</body>
</html>