<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>

<%
String userid= request.getParameter("userid");
String pwd = request.getParameter("pwd");

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

String dbUrl = "jdbc:mysql://localhost:3306/web";
String dbUser = "web";
String dbPassword = "123";

try{
Class.forName("com.mysql.jdbc.Driver");

conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

stmt = conn.prepareStatement("SELECT * FROM users WHERE userid = ?");
	stmt.setString(1, userid);
	rs = stmt.executeQuery();
if(rs.next())
{
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<%
if(rs.getString("userid").equals(userid) && rs.getString("pwd").equals(pwd))
{
	session.setAttribute("userid","userid");
	session.setAttribute("name",rs.getString("name"));
	response.sendRedirect("main_ok.jsp");
}else{
	out.println("아이디와 비밀번호를 확인해주세요");%>
	<br/><a href="login.jsp">다시 로그인하기</a><%}
}
}catch(ClassNotFoundException e){e.printStackTrace();}

%>


</body>
</html>