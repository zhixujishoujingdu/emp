<%@page import="per.zqx.domain.Emp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改信息</title>
<script type="application/javascript"
	src="${pageContext.request.contextPath}/js/bootstrapping/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/js/bootstrapping/bootstrap.min.css">
<style type="text/css">
.bdy {
	background: url("${pageContext.request.contextPath}/image/bg.jpg")
		center repeat;
}

.form_up {
	margin-top: 10%;
}
</style>
</head>
<body class="bdy">
	<%
		Emp e = new Emp();
		e = (Emp) request.getAttribute("emp");
		response.setContentType("text/html;charset=utf-8");
	%>

	<div class="container">
		<div class="page-header">
			<h1>修改信息</h1>
		</div>

		<hr>
		<c:if test="${!(empty emp)}">
			<div class="col-md-5 col-md-offset-2">
				<form action="update.do" method="post">
					<div class="form-group">
						<label for="exampleInputEmpno">员工编号</label> <input type="text"
							class="form-control" name="empno" value='${emp.empno }'
							id="exampleInputEmpno" placeholder="员工编号" disabled>
					</div>
					<div class="form-group">
						<label for="exampleInputEname">员工姓名</label> <input type="text"
							class="form-control" name="ename" value='${emp.ename }'
							id="exampleInputEname" placeholder="员工姓名">
					</div>
					<div class="form-group">
						<label for="exampleInputJob">工作岗位</label> <input type="text"
							class="form-control" name="job" value='${emp.job }'
							id="exampleInputJob" placeholder="工作岗位">
					</div>
					<div class="form-group">
						<label for="exampleInputMgr">领导编号</label> <input type="text"
							class="form-control" name="mgr" value='${emp.mgr }'
							id="exampleInputMgr" placeholder="领导编号">
					</div>
					<div class="form-group">
						<label for="exampleInputHiredate">入职日期</label> <input type="text"
							class="form-control" name="hiredate" value='${emp.hireDate }'
							id="exampleInputHiredate" placeholder="入职日期">
					</div>
					<div class="form-group">
						<label for="exampleInputSal">员工工资</label> <input type="text"
							class="form-control" name="sal" value='${emp.sal }'
							id="exampleInputSal" placeholder="员工工资">
					</div>
					<div class="form-group">
						<label for="exampleInputComm">员工奖金</label> <input type="text"
							class="form-control" name="comm" value='${emp.comm }'
							id="exampleInputComm" placeholder="员工奖金">
					</div>
					<div class="form-group">
						<label for="exampleInputDeptno">部门编号</label> <input type="text"
							class="form-control" name="deptno" value='${emp.deptno }'
							id="exampleInputDeptno" placeholder="部门编号">
					</div>
					<button style="width: 100%" class="btn btn-default" type="submit">修改信息</button>
					&emsp;&emsp;
				</form>
			</div>
		</c:if>

		<c:if test="${empty emp}">
			<h2>查无此人！</h2>
		</c:if>
	</div>
</body>
</html>