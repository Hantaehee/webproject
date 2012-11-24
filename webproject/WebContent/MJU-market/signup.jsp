<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%!
private String title;
private String time;
%>
<%
title = "RECYCLE Market - JOIN page";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=title %></title>
</head>
<body>
<h2>Join</h2>
<form action="register.jsp" method="post">
		<table>
		<tr>
			<th>*이름</th>
			<td><input type="Text" name="name" value=""></td>
		</tr>
		<tr>
			<th>*아이디</th>
			<td><input type="Text" name="userid" value=""></td>
		</tr>
		<tr>
			<th>*비밀번호</th>
			<td><input type="Password" name="pwd" value=""></td>
		</tr>
		<tr>
			<th>*거주지</th>
			<td><select name="hometown" size="1"><option value>서울</option><option value>경기</option><option value>충청도</option><option value>전라도</option><option value>경상도</option><option value>제주도</option></select></td>
		</tr>
		<tr>
			<th>*E-Mail</th>
			<td><input type="Text" name="email" value=""></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" name="join-btn" value="회원가입"></th>
		</tr>
		</table>
	</form>

</body>
</html>