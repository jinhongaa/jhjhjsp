<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
//세션을 삭제하고
// 다시 로그인 폼으로 돌려보내기
session.invalidate();//모든세션제거
response.sendRedirect("loginForm.jsp");

%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>looutproc.jsp</h3>

</body>
</html>