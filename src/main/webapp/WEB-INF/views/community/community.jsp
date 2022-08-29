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

<table id="CommunityTbl2"><tr>
<td style="width: 500px;">게시글</td>
<td style="width: 200px;">작성자</td>
<td style="width: 200px;">날짜</td>
</tr></table>

<c:forEach var="c" items="${communitys }" >
	<table id="CommunityTbl">
		<tr>
			<td style="width: 500px;"><a onclick="location.href='communitydetail.go?c_no=${c.c_no}'">${c.c_title }</a></td>
			<td style="width: 200px; text-align: center;">${c.c_writer }</td>
			<td style="width: 200px; text-align: center;"><fmt:formatDate type="both" timeStyle="short" dateStyle="short" value="${c.c_date }"/> </td>
		</tr>
	</table>
</c:forEach>

<form action="CommunitySearch.go">
<table style="width:500px;" id="CommunityRegTbl" >
		<tr>
			<td><input name="c_title" id="">&ensp;<a style="font-weight: 900;"><button>검색</button></a></td>
			<td><button type="button" onclick="location.href='CommunityRegPage.go'">글쓰기</button></td>
		</tr>
	</table>
</form>

<table><tr><td></td></tr></table>

</body>
</html>