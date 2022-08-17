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

<c:if test="${sessionScope.loginMember.m_id eq 'master'}">
<table id="animationUpdateTbl">
		<tr>
			<td><a onclick="location.href='regpage.go'">등록하기</a></td>
		</tr>
	</table>
</c:if>

	<table 
		style="width: 890px; height: 70px; text-align: center;" id="animationGenreTbl">
		<tr>
			<td id="genreTbl1" style="width: 170px;"><a onclick="location.href='loveco.go'">러브코미디</a></td>
			<td style="width: 10px;"></td>
			<td id="genreTbl2" style="width: 170px;"><a onclick="location.href='fantasy.go'">판타지</a></td>
			<td style="width: 10px;"></td>
			<td id="genreTbl3" style="width: 170px;"><a onclick="location.href='romance.go'">로맨스</a></td>
			<td style="width: 10px;"></td>
			<td id="genreTbl4" style="width: 170px;"><a onclick="location.href='action.go'">액션</a></td>
			<td style="width: 10px;"></td>
			<td id="genreTbl5" style="width: 170px;"><a onclick="location.href='sf.go'">SF</a></td>
		</tr>
	</table>


	<c:forEach var="l" items="${loves }">
		<table id="animationTbl2">
		<tr>
			<td></td>
		</tr>
	</table>
	<table id="animationTbl">
		<tr>
			<td rowspan="2" style="width:200px; height: 200px;"><img src="resources/files/${l.a_photo }"></td>
			<td style="height: 50px;">&ensp;<a style="font-weight: 900; font-size: 14pt;">${l.a_title }</a></td>
		</tr>
		<tr>
			<td><a>${l.a_txt }</a></td>
		</tr>
		<c:choose>
	<c:when test="${sessionScope.loginMember.m_id eq 'master'}">
		<tr>
			<td>&ensp;<a style="font-weight: 900; font-size: 12pt;">&ensp;장르</a> : ${l.a_genre }</td>
			<td><button onclick="animationdeleteGO('${l.a_no}');">삭제</button>
			<button onclick="location.href='animationupdatepage.go?a_no=${l.a_no }'">수정</button></td>
		</tr>
	
	</c:when>
	<c:otherwise>
	<tr>
	<td>&ensp;&ensp;<a style="font-weight: 900; font-size: 12pt;">장르</a> : ${l.a_genre }</td>
	<td></td>
	</tr>
	</c:otherwise>
	</c:choose>
	</table>
 	</c:forEach>


	





</body>
</html>