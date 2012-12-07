<%@ page language="java" contentType="text/html; charset= UTF-8" pageEncoding="UTF-8"
import="java.util.*" import="java.sql.*" %>

 <%
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;
 

 String dbUrl = "jdbc:mysql://localhost:3306/users? CharacterEncoding=utf8";
 String dbUser = "web";
 String dbPassword = "123";
 Class.forName("com.mysql.jdbc.Driver");

 request.setCharacterEncoding("utf-8");
 String userid = request.getParameter("userid");
 String pwd = request.getParameter("pwd");
 String pwd_confirm = request.getParameter("pwd_confirm");
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String hometown = request.getParameter("hometown");

 List<String> errorMsgs = new ArrayList<String>();
 int result = 0;

 if (userid == null || userid.trim().length() == 0) {
 errorMsgs.add("ID를 입력하셔야 합니다.");
}
 if (pwd == null || pwd.length() < 6 ) {
 errorMsgs.add("비밀번호를 입력하세요(6자이상).");
}
 if (pwd_confirm == null || !pwd.equals(pwd_confirm) )  {
 errorMsgs.add("비밀번호를 확인해주세요.");
}
 if (name == null || name.trim().length() == 0) {
 errorMsgs.add("이름을 입력하세요.");
}
 if (email == null || email.trim().length() == 0) {
 errorMsgs.add("E-Mail주소를 입력하세요.");
}

 if(errorMsgs.size() == 0) {
 try {
  conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
  stmt = conn.prepareStatement(
  "INSERT INTO users(userid, name, pwd, email, hometown)" + "VALUES(?, ?, ?, ?, ?)"
  );
  stmt.setString(1, userid);
  stmt.setString(2, name);
  stmt.setString(3, pwd);
  stmt.setString(4, email);
  stmt.setString(5, hometown);

  result = stmt.executeUpdate();
  if(result !=1){
    errorMsgs.add("등록에 실패하였습니다.");
  }
} catch (SQLException e){
  errorMsgs.add("SQL 에러: " + e.getMessage());
} finally {
  if (rs != null ) try{rs.close();} catch(SQLException e) {}
  if (stmt != null) try{stmt.close();} catch(SQLException e) {}
  if (conn != null) try{conn.close();} catch(SQLException e) {}
  }
}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>RECYCLE MARKET - JOIN</title>
<link href="./css/main.css">
<script src="./js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<% if(errorMsgs.size() > 0) { %>
<div class="alert alert-error">
<h3>Errors:</h3>
<ul>
<%for(String msg: errorMsgs) { %>
<li><%=msg%></li>
<% } %>
</ul>
</div>
<div class="form-action">
<a href="join.jsp">뒤로 돌아가기 </a>
</div>
<% } else if(result == 1) { %>
<div class="alert alert-success">
<b><%= name %></b>님 회원가입을 환영합니다!
<a href="main.jsp"><input type="button" value="Home으로"/></a>
</div>
<%}%>
</div>
</body>
</html>

