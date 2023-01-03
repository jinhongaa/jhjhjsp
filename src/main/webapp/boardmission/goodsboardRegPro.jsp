<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>goodsboardRegPro.jsp</h3>
<%
String gname=request.getParameter("gname");
String gdescribe=request.getParameter("gdescribe");
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Connection conn=DriverManager.getConnection(url, user, pw);
String sql="insert into goodsinfo values((select max(to_number(gnum))+1 from goodsinfo),?,?,'2000',systimestamp)";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, gname);
pstmt.setString(2, gdescribe);
int count=pstmt.executeUpdate();
System.out.print("\n"+count+" 행 이(가) 삽입되었습니다.");

pstmt.close();
conn.close();
response.sendRedirect("goodsboardReg.jsp");
%>
</body>
</html>