<%@page import="notice.dao.NoticeDao"%>
<%@page import="notice.vo.Notice"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String num=request.getParameter("c");

Notice n=new Notice();
n.setSeq(num);

NoticeDao dao=new NoticeDao();
int cnt=dao.delete(n);

/* String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, pw);
//접속성공 상태
// String sql="select * from notices where seq='"+num+"'";
String sql="delete notices where seq=?";

//실행
// Statement st=conn.createStatement();
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, num);
// ResultSet rs=st.executeQuery(sql);
int cnt=pstmt.executeUpdate(); */
if(cnt>0){
	System.out.print("삭제성공");
	response.sendRedirect("notice.jsp");
}
%>
