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

<c:forEach var="c" items="${communitys }" >
	<table border="1" style="width:500px;" id="CommunityTbl">
		<tr>
			<td><a onclick="location.href='communitydetail.go?c_no=${c.c_no}'">${c.c_title }</a></td>
			<td>${c.c_writer }</td>
			<td><fmt:formatDate value="${c.c_date }"/> </td>
		</tr>
	</table>
</c:forEach>

<table border="1" style="width:500px;" id="CommunityRegTbl" >
		<tr>
			<td><button>글쓰기</button></td>
		</tr>
	</table>

</body>
</html>