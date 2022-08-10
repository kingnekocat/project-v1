<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1" id="reviewRegTbl">
		<tr>
			<td><a onclick="location.href='reviewregpage.go'">리뷰 작성하기</a></td>
		</tr>

	</table>

	<c:forEach var="r" items="${reviews }">
		<table border="1" id="reviewTbl">
			<tr>
				<td colspan="2">${r.r_title }</td>
			</tr>
			<tr>
				<td style="width: 200px;"><img
					src="resources/files/${r.r_photo }"></td>
				<td><pre>${r.r_txt }</pre></td>
			</tr>
			<tr>
				<td>작성자:${r.r_writer }</td>
				<td><fmt:formatDate type="both" timeStyle="short"
						dateStyle="short" value="${r.r_date }" /></td>
			</tr>
			<c:choose>
		<c:when test="${r.r_writer == sessionScope.loginMember.m_id}">
			<tr>
				<td colspan="2" style="text-align: center;"><button
						onclick="location.href='reviewupdatepage.go?r_no=${r.r_no}'">수정</button>
					<button onclick="reviewdeletego('${r.r_no}');">삭제</button></td>
			</tr>
		</c:when>
		<c:when test="${sessionScope.loginMember.m_id eq 'master'}">
			<tr>
				<td colspan="2" style="text-align: center;"><button
						onclick="location.href='reviewupdatepage.go?r_no=${r.r_no}'">수정</button>
					<button onclick="reviewdeletego('${r.r_no}');">삭제</button></td>
			</tr>
		</c:when>
		<c:otherwise>
			
		</c:otherwise>
	</c:choose>
		</table>
	</c:forEach>


</body>
</html>