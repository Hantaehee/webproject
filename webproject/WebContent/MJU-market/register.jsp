<%@ page language="java" contentType="text/html; charset= UTF-8" pageEncoding="UTF-8"%>

 <%
 Connection conn = null;
 PreparedStatement stmt = null;
 ResultSet rs = null;

 String dbUrl = "jdbc:mysql://localhost:8080/webproject/MJU-market";
 String dbUser = "web";
 String dbPassword = "asdf";

 request.setCharacterEncoding("utf-8");
 String userid = request.getParameter("userid");
 String pwd = request.getParameter("pwd");
 String pwd_confirm = request.getParameter("pwd_confirm");
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String hometown = request.getParameter("hometown");
 String gender = request.getParameter("gender");

 List<String> errorMsgs = new ArrayList<string>();
 int result = 0;

 if (userid = null || userid.trim().length() == 0) {
 errorMsg.add("ID를 입력하셔야 합니다.");
}
 if (pwd = null || pwd.length() < 6 ) {
 errorMsg.add("비밀번호를 입력하세요(6자이상).");
}
 if (pwd_confirm = null || (pwd!=(pwd_confirm))  {
 errorMsg.add("비밀번호를 확인해주세요.");
}
 if (name = null || name.trim().length() == 0) {
 errorMsg.add("이름을 입력하세요.");
}
 if (email = null || email.trim().length() == 0) {
 errorMsg.add("E-Mail주소를 입력하세요.");
}
 if (userid = null || !(gender.equals("M") || gender.equals("F"))) {
 errorMsg.add("M(남성)이나 F(여성) 중에 하나를 입력해 주세요.");
}
 if(errorMsg.size() == 0) {
 try {
  conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
  stmt = conn.prepareStatement(
  "INSERT INTO users(userid, name, pwd, email, hometown, gender)" + "VALUES(?, ?, ?, ?, ?, ?)"
  );
  stmt.setString(1, userid);
  stmt.setString(2, name);
  stmt.setString(3, pwd);
  stmt.setString(4, email);
  stmt.setString(5, hometown);
  stmt.setString(6, gender);

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
<% if(errorMSgs.size() > 0) { %>
<div class="alert alert-error">
<h3>Errors:</h3>
<ul>
<%for(String msg: errorMsgs) { %>
<li><%=msg%></li>
<% } %>
</ul>
</div>
<div class="form-action">
<a onclick="histroy.back();" class="btn">뒤로 돌아가기 </a>
</div>
<% } else if(result = 1) { %>
<div class="alert alert-success">
<b><%= name %></b>님 회원가입을 환영합니다!
</div>
<%}%>
</div>
</body>
</html>

