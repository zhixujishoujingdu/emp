<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加员工</title>
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
	<div class="container">
		<div class="page-header">
			<h1>添加员工</h1>
		</div>
		<div class="col-md-5 col-md-offset-2">
			<form action="add.do" method="post">
				<div class="form-group">
					<label for="exampleInputEmpno">员工编号</label> <input type="text"
						class="form-control" name="empno" id="exampleInputEmpno"
						placeholder="员工编号">
				</div>
				<div class="form-group">
					<label for="exampleInputEname">员工姓名</label> <input type="text"
						class="form-control" name="ename" id="exampleInputEname"
						placeholder="员工姓名">
				</div>
				<div class="form-group">
					<label for="exampleInputJob">工作岗位</label> <input type="text"
						class="form-control" name="job" id="exampleInputJob"
						placeholder="工作岗位">
				</div>
				<div class="form-group">
					<label for="exampleInputMgr">领导编号</label> <input type="text"
						class="form-control" name="mgr" id="exampleInputMgr"
						placeholder="领导编号">
				</div>
				<div class="form-group">
					<label for="exampleInputHiredate">入职日期</label> <input type="text"
						class="form-control" name="hiredate" id="exampleInputHiredate"
						placeholder="入职日期">
				</div>
				<div class="form-group">
					<label for="exampleInputSal">员工工资</label> <input type="text"
						class="form-control" name="sal" id="exampleInputSal"
						placeholder="员工工资">
				</div>
				<div class="form-group">
					<label for="exampleInputComm">员工奖金</label> <input type="text"
						class="form-control" name="comm" id="exampleInputComm"
						placeholder="员工奖金">
				</div>
				<div class="form-group">
					<label for="exampleInputDeptno">部门编号</label> <input type="text"
						class="form-control" name="deptno" id="exampleInputDeptno"
						placeholder="部门编号">
				</div>
				<button style="width: 100%" class="btn btn-default" type="submit">添加员工</button>
				&emsp;&emsp;
			</form>
		</div>
	</div>
</body>
</html>