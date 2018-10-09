<%@page import="per.zqx.domain.Emp"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>员工列表</title>
<script type="application/javascript"
	src="${pageContext.request.contextPath}/assets/js/bootstrapping/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/js/bootstrapping/bootstrap.min.css">
<style type="text/css">
.bdy {
	background: url("${pageContext.request.contextPath}/assets/image/bg.jpg")
		center repeat;
}
</style>
</head>
<body class="bdy">
	<%
		List<Emp> elist = (List<Emp>) request.getAttribute("employees");
		response.setContentType("text/html;charset=utf-8");
//		String user = (String) session.getAttribute("username");
//		request.setAttribute("username", user);
	%>

	<div class="container">
		<div class="page-header">
			<h1>
				<%--${username},！--%>您好 <small><a href='addEmp.jsp'>添加员工</a> <a
					href='logout.do'>退出登录</a></small>
			</h1>
		</div>


		<hr>
		<table border='1px solid' width='80%'>
			<tr>
				<td>EMPNO</td>
				<td>ENAME</td>
				<td>JOB</td>
				<td>MGR</td>
				<td>HIREDATE</td>
				<td>SAL</td>
				<td>COMM</td>
				<td>DEPTNO</td>
				<td>EDIT</td>
			</tr>
			<c:forEach items="${elist}" var="e">

				<tr>
					<td>${e.empno }</td>
					<td>${e.ename}</td>
					<td>${e.job}</td>
					<td>${e.mgr}</td>
					<td>${e.hireDate}</td>
					<td>${e.sal}</td>
					<td>${e.comm}</td>
					<td>${e.deptno}</td>

					<td>&nbsp;&nbsp;&nbsp; <a href='toUpdate.do?empno=${e.empno}'>修改</a>
						&nbsp;&nbsp;&nbsp; <a href='del.do?empno=${e.empno}'>删除</a>
					</td>
				</tr>
			</c:forEach>


		</table>
	</div>
</body>
</html>