<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num=request.getParameter("c");

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, pw);
Statement st=conn.createStatement();
String sql="select * from goodsinfo where gnum='"+num+"'";
ResultSet rs=st.executeQuery(sql);
// System.out.print("value : "+rs.getString(2));
rs.next();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
<link rel="stylesheet" href="../css/nstyle.css" />

<body>
<h3>goodsboardDetail.jsp</h3>
<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="5%"/>
		<col width="35%"/>
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">번호</th>
			<td><%=rs.getString("gnum") %></td>
			<th class="left">상품명</th>
			<td><%=rs.getString("gname") %></td>
		</tr>
		<tr>
			<th class="left">상품가격</th>
			<td><%=rs.getString("gprice") %></td>
			<th class="left">작성시간</th>
			<td><%=rs.getDate("gdate") %></td>
		</tr>
		<tr>
			<th class="left">상품간략소개</th>
			<td colspan="3" id="gdescribe"><%=rs.getString("gdescribe") %></td>		
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>		
		</tr>
	</tbody>
</table>
<a href="goodsboard.jsp">목록</a>
</body>
</head>
</html>
<%
rs.close();
st.close();
conn.close();
%>
