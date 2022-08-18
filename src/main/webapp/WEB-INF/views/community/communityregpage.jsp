<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table id="communityDetailTbl2"><tr><td></td></tr></table>

<form action="communityReg.go" method="post" enctype="multipart/form-data">
	<table border="1" id="CommunityRegPTbl">
		<tr>
			<td colspan="2"><input name="c_title" placeholder="제목을 입력하세요"></td>
		</tr>
		<tr>
			<td colspan="2"><textarea name="c_txt" placeholder="내용을 입력하세요"></textarea></td>
		</tr>
		<tr>
			<td style="width: 250px;"><input name="c_photo" type="file">
			<button>작성하기</button>
		</tr>
	</table>
	
	<table style="height: 100px;"><tr><td></td></tr></table>
	
</form>

</body>
</html>