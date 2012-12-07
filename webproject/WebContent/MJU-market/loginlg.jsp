<%@ page language="java" contentType="text/html; charset= UTF-8" pageEncoding="UTF-8"
import="java.util.*" import="java.sql.*" %>

<%
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;
 

 String dbUrl = "jdbc:mysql://localhost:3306/users";
 String dbUser = "web";
 String dbPassword ="123";
 Class.forName("com.mysql.jdbc.Driver");
 
 request.setCharacterEncoding("UTF-8");
 String userid = request.getParameter("userid");
 String pwd = request.getParameter("pwd");
 
 List<String> errorMsgs = new ArrayList<String>();
 int result=0;
 
 if (userid == null || userid.trim().length() == 0) {
	 errorMsgs.add("ID를 입력하셔야 합니다.");
	}
	 if (pwd == null || pwd.length() < 6 ) {
	 errorMsgs.add("비밀번호를 확인해주세요(6자이상).");
	}
	 
	 if(errorMsgs.size() == 0) {
		 try {
			 conn = DriverManager.getConncetion(dbUrl, dbUser, dbPassword);
			  
		 }
		  
	 
	 
 