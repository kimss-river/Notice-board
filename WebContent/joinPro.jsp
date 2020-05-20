<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER JOIN PROCESS</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("passwd");
	String datenum = request.getParameter("date_number");
	String email = request.getParameter("email");
	String adress = request.getParameter("address");
	String tel = request.getParameter("tel");
	String name = request.getParameter("name");
	String reg_date = request.getParameter("reg_date");
	Timestamp time = new Timestamp(System.currentTimeMillis());
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try{
		String jdbc_driver = "oracle.jdbc.OracleDriver";
		String db_url  = "jdbc:oracle:thin:@localhost:1521:XE";
		
		Class.forName(jdbc_driver);
		conn = DriverManager.getConnection(db_url, "scott", "tiger");
		String sql = "insert into member (id, passwd, name, ";
		sql += "reg_date) values (?, ?, ?, CURRENT_TIMESTAMP)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		
		int result = pstmt.executeUpdate();
		
		if (result != 0) {
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("joinForm.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null)
			try{rs.close();}catch(SQLException sqle){}
		if(pstmt!=null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn!=null)
			try{conn.close();}catch(SQLException sqle){}
	}
%>
</body>
</html>