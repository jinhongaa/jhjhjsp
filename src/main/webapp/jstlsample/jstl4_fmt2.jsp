 <%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>jstl4_fmt2</h3>

<fmt:formatNumber value="1000000" type="currency"/> <br />
<fmt:formatNumber value="1000000" type="currency" pattern="#원"/> <br />
<fmt:formatNumber value="1000000" type="currency" pattern="###,###원"/> <br />
<fmt:formatNumber value="1000000" type="currency" pattern="###,###"/>원 <br />
<fmt:formatNumber value="1000000.1234" type="currency" pattern="###,###.##"/>원 <br />
<hr />
locle <br />
<c:set var="now" value="<%=new java.util.Date() %>"/>
<fmt:setLocale value="en_US" />
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-DD"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" pattern="YY-MM-DD [a] hh:mm:ss" /> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="short"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="full" pattern="YYYY-MM-dd[E]"/> <br />
<hr />
timeZone <br />
<fmt:setLocale value="fr_PM"/>
<fmt:formatDate value="${now }" type="both" dateStyle="short" pattern="YY-MM-dd"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="medium" pattern="YY-MM-dd [a] hh:mm:ss"/> <br />
<fmt:formatDate value="${now }" type="both" dateStyle="long" timeZone="America/los_Angeles"/> <br />
<hr />
국가코드알아보기 <br />
 <c:set var="ics" value="<%=Locale.getAvailableLocales() %>"></c:set>
 <c:forEach items="${ics }" var="lo">
 	${lo } &nbsp;&nbsp;
 </c:forEach>









</body>
</html>