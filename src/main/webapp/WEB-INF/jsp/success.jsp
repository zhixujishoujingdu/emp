<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册成功</title>
<script type="application/javascript"
	src="${pageContext.request.contextPath}/assets/js/bootstrapping/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/js/bootstrapping/bootstrap.min.css">

</head>
<body>
	<div class="container">
		<div class="page-header">
			<h1>
				注册成功！ <small>系统将在5秒后自动跳转到 <a href='${pageContext.request.contextPath}/login.jsp'>登录界面</a></small>
			</h1>
		</div>
	</div>

	<%
		response.setHeader("refresh", "5;url='login.jsp'");
	%>
</body>
</html>