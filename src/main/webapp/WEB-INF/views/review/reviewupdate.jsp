<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table id="reviewUpdateTbl2"><tr><td></td></tr></table>

	<form action="reviewupdate.go?r_no=${reviews.r_no }" method="post" enctype="multipart/form-data">
		<table id="reviewUpdateTbl">
			<tr>
				<td colspan="2"><input id="updateReviewInput1" name="r_title" value="${reviews.r_title }"></td>
			</tr>
			<tr>
				<td><img src="resources/files/${reviews.r_photo }">
				<input name="oldphoto" type="hidden" value="${reviews.r_photo }" ></td>
				<td><textarea  name="r_txt">${reviews.r_txt }</textarea></td>
			</tr>
			<tr>
				<td colspan="2">사진수정&ensp;&ensp;<input name="r_photo" type="file"></td>
			</tr>
			<tr>
				<td colspan="2"><br><button>수정하기</button></td>
			</tr>
		</table>
	</form>

<table style="height: 150px;"><tr><td></td></tr></table>

</body>
</html>