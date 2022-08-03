<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/sitecss.css">
<script type="text/javascript" src="resources/js/go.js"></script>
</head>
<body>

	<table id="homePageTbl" border="1"
		style="width: 1700px; height:150px; text-align: center;">
		<tr>
			<td width="350px;"></td>
			<td width="1000px;"><a onclick="location.href='home.go'" style="font-size: 45px;">홈페이지</a></td>
			<td style="text-align: center;" ><jsp:include page="${loginPage }"></jsp:include></td>
		</tr>
	</table>

	<table border="1" id="menuTbl" style="width: 1000px; height: 80px; text-align: center;">
		<tr>
			<td><a onclick="location.href='animationgenre.go'">Animation</a></td>
			<td><a onclick="">Review</a></td>
			<td><a onclick="">Community</a></td>
			<td><a onclick="">Shop</a></td>
		</tr>
	</table>

	<table id="homePage" >
		<tr>
			<td><jsp:include page="${contentPage }"></jsp:include></td>
		</tr>
	</table>







</body>
</html>