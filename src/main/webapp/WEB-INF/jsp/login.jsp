<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>请登录</title>
    <script type="application/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrapping/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/js/bootstrapping/bootstrap.min.css">
    <style type="text/css">
        .login_form{
            padding: 10px;
            backgroundrgba(238, 238, 238, 0.13);
            margin-top: 20%;
        }
        .ju{
        backgroundrgba(238, 238, 238, 0.13);
        }
        .bdy{
            background: url("${pageContext.request.contextPath}/assets/image/bg.jpg") center repeat;
        }

    </style>
</head>
<body class="bdy">


<div class="container">
    <div class="page-header">
        <h1>&emsp;&emsp;欢迎使用员工管理系统&emsp;&emsp;<small>请登录</small></h1>
    </div>

    <div class="row">
        <div class="col-md-5">
            <img src="${pageContext.request.contextPath}/assets/image/mgr.jpg" class="img-responsive">
        </div>

        <div class="col-md-5 col-md-offset-2">
            <form class="login_form" action="login.do" method="post">
                <div class="form-group">
                    <label for="exampleInputUsername">Username</label>
                    <input type="text" class="form-control"  name="username" id="exampleInputUsername" placeholder="Username">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember" value="checked"> Remember Me For Ten Days
                    </label>
                </div>
                <button style="width: 100%" class="btn btn-default" type="submit">Login</button>&emsp;&emsp;
                <a style="width: 100%" class="btn btn-default" href="register.jsp" role="true">Register</a>
            </form>
        </div>
    </div>
</div>

</body>
</html>