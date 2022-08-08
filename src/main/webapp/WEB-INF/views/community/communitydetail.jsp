<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<table border="1" style="width: 450px; height: 300px;" >
		<tr>
			<td colspan="2">${communitys.c_title }</td>
		</tr>
		<tr>
			<td colspan="2"><img src="resources/files/${communitys.c_photo }"></td>
		</tr>
		<tr>
			<td colspan="2">${communitys.c_txt }</td>
		</tr>
		<tr>
			<td>${communitys.c_writer }</td>
			<td><fmt:formatDate value="${communitys.c_date }"/> </td>
		</tr>
		<tr>
			<td colspan="2"><button onclick="location.href='communityUpdatePage.go?c_no=${communitys.c_no }'">수정하기</button>
			<button onclick="communitydeleteGo('${communitys.c_no }');">삭제하기</button></td>
		</tr>
	</table>


</body>
</html>