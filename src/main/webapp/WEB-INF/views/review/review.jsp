<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
		<tr>
			<td><a onclick="location.href='reviewregpage.go'" >리뷰 작성하기</a></td>
		</tr>
		
	</table>

<c:forEach var="r" items="${reviews }">
	<table border="1">
		<tr>
			<td rowspan="3" ><img src="resources/files/${r.r_photo }"></td>
			<td>${r.r_title }</td>
		</tr>
		<tr>
			<td>${r.r_txt }</td>
		</tr>
		<tr>
			<td><fmt:formatDate value="${r.r_date }"/> </td>
		</tr>
	</table>
</c:forEach>

</body>
</html>