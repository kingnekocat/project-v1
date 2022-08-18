<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table id="communityDetailTbl2"><tr><td></td></tr></table>

	<table style="width: 550px; height: 350px;"
		id="communityDetailTbl">
		<tr>
			<td colspan="2">${communitys.c_title }</td>
		</tr>
		<tr>
			<td colspan="2"><img
				src="resources/files/${communitys.c_photo }"></td>
		</tr>
		<tr>
			<td colspan="2">${communitys.c_txt }</td>
		</tr>
		<tr>
			<td>작성자:${communitys.c_writer }</td>
			<td><fmt:formatDate type="both" timeStyle="short" dateStyle="short" value="${communitys.c_date }" /></td>
		</tr>
		<c:choose>
		<c:when
			test="${communitys.c_writer == sessionScope.loginMember.m_id }">
			<tr>
				<td colspan="2"><button
						onclick="location.href='communityUpdatePage.go?c_no=${communitys.c_no }'">수정하기</button>
					<button onclick="communitydeleteGo('${communitys.c_no }');">삭제하기</button></td>
			</tr>
		</c:when>
		<c:when test="${sessionScope.loginMember.m_id eq 'master' }">
			<tr>
				<td colspan="2"><button
						onclick="location.href='communityUpdatePage.go?c_no=${communitys.c_no }'">수정하기</button>
					<button onclick="communitydeleteGo('${communitys.c_no }');">삭제하기</button></td>
			</tr>
		</c:when>
		<c:otherwise>

		</c:otherwise>
	</c:choose>
	</table>


<table style="height: 100px;"><tr><td></td></tr></table>










</body>
</html>