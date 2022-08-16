<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/site_jquery.js"></script>
<script type="text/javascript" src="resources/js/go.js"></script>
<link rel="stylesheet" href="resources/css/sitecss.css">
<link rel="stylesheet" href="resources/css/animation.css">
<link rel="stylesheet" href="resources/css/review.css">
<link rel="stylesheet" href="resources/css/community.css">
<link rel="stylesheet" href="resources/css/member.css">
</head>
<body>
	<table id="homefirstTbl">
		<tr>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>


	<table id="homePageTbl"
		style="width: 1870px; height: 150px; text-align: center;">
		<tr>
			<td width="500px;"></td>
			<td width="1000px;"><a onclick="location.href='home.go'"
				style="font-size: 45px;"><img src="resources/img/logo3.png"></a></td>
			<td style="text-align: center;"><jsp:include page="${loginPage }"></jsp:include></td>
		</tr>
	</table>

	<table id="menuTbl"
		style="width: 100%; height: 80px; text-align: center;">
		<tr>
			<td></td>
			<td id="indexmenu1"><a
				onclick="location.href='animationgenre.go'">Animation</a></td>
			<td id="indexmenu2"><a onclick="location.href='reviewpage.go'">Review</a></td>
			<td id="indexmenu3"><a
				onclick="location.href='communitypage.go'">Community</a></td>
			<td id="indexmenu4"><a onclick="location.href='shop.go'">Shop</a></td>
			<td></td>
		</tr>
	</table>

	<table id="homePage">
		<tr>
			<td><jsp:include page="${contentPage }"></jsp:include></td>
		</tr>
	</table>







</body>
</html>