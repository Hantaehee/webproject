<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%
Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String Url="jdbc:mysql://localhost:3306/lll";
String dbUser="web";
String dbPass="123";

String id = request.getParameter("id");
String name  = request.getParameter("name");

try{
	
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(Url,dbUser,dbPass);
pstmt  = conn.prepareStatement("insert into user (id,name) values (?,?)");
	pstmt.setString(1,id);
	pstmt.setString(2,name);
	
int result = pstmt.executeUpdate();
out.println("연결 완료되었습니다");

}

catch(Exception e){
	out.println(" 먼에러냐 " + e);
	e.printStackTrace();
	
}finally{
	if(conn!=null)conn.close();
	if(pstmt!=null)pstmt.close();
	if(rs!=null)rs.close();
}
%>
