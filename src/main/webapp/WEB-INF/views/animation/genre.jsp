<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" id="animationUpdateTbl">
		<tr>
			<td><a onclick="location.href='regpage.go'">등록하기</a></td>
		</tr>
	</table>
	
	<table border="1"
		style="width: 800px; height: 70px; text-align: center;">
		<tr>
			<td><a onclick="location.href='loveco.go'">러브코미디</a></td>
			<td><a onclick="location.href='fantasy.go'">판타지</a></td>
			<td><a onclick="location.href='romance.go'">로맨스</a></td>
			<td><a onclick="location.href='action.go'">액션</a></td>
			<td><a onclick="location.href='sf.go'">SF</a></td>
		</tr>
	</table>

	<c:forEach var="l" items="${loves }">
	<table id="animationTbl" border="1">
		<tr>
			<td rowspan="2"><img src="resources/files/${l.a_photo }" ></td>
			<td>${l.a_title }</td>
		</tr>
		<tr>
			<td>${l.a_txt }</td>
		</tr>
		<tr>
			<td>${l.a_genre }</td>
			<td><button onclick="animationdeleteGO('${l.a_no}');">삭제</button>
			<button onclick="location.href='animationupdatepage.go?a_no=${l.a_no }'">수정</button></td>
		</tr>
	</table>
 	</c:forEach>








</body>
</html>