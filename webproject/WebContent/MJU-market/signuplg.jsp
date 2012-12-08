<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>

<%
try{
	int id=0;
	String title = request.getParameter("title");
	String cateb = request.getParameter("cateb");
	String cates = request.getParameter("cates");
	String color = request.getParameter("color");
	String status = request.getParameter("status");
	String price = request.getParameter("price");
	String explanation = request.getParameter("explanation");
	String photo = request.getParameter("photo");
	
	Class.forName("com.mysql.jdbc.Driver");
	request.setCharacterEncoding("UTF-8");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web?characterEncoding=utf8","web","123");
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select max(id) from item");
	
	if(rs.next()){
		id = rs.getInt(1);
		id = id + 1;
		rs.close();
		stmt.close();
	} else {
		id = 1;
	}
	
	PreparedStatement pstmt = conn.prepareStatement("insert into item(id,cateb,cates,color,status,price,explanation,title,date,photo) values(?,?,?,?,?,?,?,?,now(),?)");
	
	pstmt.setInt(1, id);
	pstmt.setString(2, cateb);
	pstmt.setString(3, cates);
	pstmt.setString(4, color);
	pstmt.setString(5, status);
	pstmt.setString(6, price);
	pstmt.setString(7, explanation);
	pstmt.setString(8, title);
	pstmt.setString(9, photo);
	pstmt.executeUpdate();
	pstmt.close();
	conn.close();
	
	response.sendRedirect("main_ok.jsp");
} catch(Exception e){out.println(e);}
%>