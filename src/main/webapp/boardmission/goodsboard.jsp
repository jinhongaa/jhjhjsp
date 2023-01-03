<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<%
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, pw);
//접속성공 상태
String sql="select * from goodsinfo order by gnum";

//실행
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(sql);


// rs.next();
// System.out.println("value : "+rs.getString("title"));
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>goodsboard.jsp</h3>
<table border="1" width="500">
	<tr>
		<td>상품번호</td>
		<td>상풍명</td>
<!-- 		<td>상품간략소개</td> -->
		<td>상품가격</td>
		<td>등록일</td>
	</tr>
	<%
	while(rs.next()){
		
	%>
	<tr>
		<td><%=rs.getInt(1) %></td>
		<td><a href="goodsboardDetail.jsp?c=<%=rs.getInt(1) %>"><%=rs.getString(2) %></a></td>
<%-- 		<td><%=rs.getString(3) %></td> --%>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getDate(5) %></td>
	</tr>
	<%
	}	
	%>
</table>
<a href="goodsboardReg.jsp">글쓰기</a>
</body>
</html>
<%
rs.close();
st.close();
conn.close();
%>
