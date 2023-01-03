<%@page import="notice.dao.NoticeDao"%>
<%@page import="notice.vo.Notice"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
<h3>noticeRegPro.jsp</h3><br />
<%
// String title=request.getParameter("title");
// String content=request.getParameter("content");

// Notice n=new Notice();
// n.setTitle(title);
// n.setContent(content);

// NoticeDao dao=new NoticeDao();
// int cnt=dao.insert(n);

/* String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";
try{
String sql="insert into notices values((select max(to_number(seq))+1 from notices),?,'cj',?,systimestamp,0)";
// String sql="insert into notices(seq,title,writer,content,regdate,hit)";
// sql +=" values((select max(to_number(seq))+1 from notices)";
// sql +=",?,'cj',?,systimestamp,0)";
Connection con=DriverManager.getConnection(url, user, pw);
PreparedStatement st=con.prepareStatement(sql);
st.setString(1, title);
st.setString(2, content);
int count=st.executeUpdate();
System.out.print("\n count :"+count);
}catch(Exception e){
	e.printStackTrace();
} */
// st.close();
// con.close();
// if(cnt>0){
	
// response.sendRedirect("noticeReg.jsp");
// }
%>

</body>
</html>