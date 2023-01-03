<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>goodsboardReg.jsp</h3>
<form action="goodsboardRegPro.jsp" method="post">
<dl>
	<dt>상품명</dt>
	<td>
		<input type="text" name="gname"/>
	</td>
</dl>
<dl>
	<dt>첨부파일</dt>
	<dt>
		<input type="file" name="txtFile" />
	</dt>
</dl>
<div>
	<textarea id="gdescribe" name="gdescribe">상품소개</textarea>
</div>

	<input type="submit" value="save" />
	<input type="button" value="cancel" class="cancel"/><br />
	<a href="goodsboard.jsp">목록</a>
</form>
</body>
</html>