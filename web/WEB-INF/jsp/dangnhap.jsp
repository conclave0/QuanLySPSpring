<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
        <title>Trang quản lý sản phẩm</title>
        <link href="http://fonts.googleapis.com/css?family=Lato:100italic,100,300italic,300,400italic,400,700italic,700,900italic,900" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/user.css" />
    </head>
    <body>

    <section class="container">
        <section class="login-form">
            <div class="panel panel-default">
                <div class="panel-heading">Đăng nhập vào trang web</div>
                <div class="panel-body">

                    <form method="POST" action="${pageContext.request.contextPath}/j_spring_security_check" role="login">
                        <input type="text" class="form-control input-lg" placeholder="Tên đăng nhập" id="inputUsername" name="inputUsername" required=""  oninvalid="this.setCustomValidity('Vui lòng điền tên đăng nhập!')"
                               oninput="setCustomValidity('')"/>
                        <input type="password" class="form-control input-lg" placeholder="Mật khẩu" id="inputPassword" name="inputPassword" required="" oninvalid="this.setCustomValidity('Vui lòng điền mật khẩu!')"
                               oninput="setCustomValidity('')"/>
                        <button type="submit" name="btnLogIn" class="btn btn-lg btn-info btn-block">Đăng nhập</button>
                        <div> ${messageerror}</div>
                        <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/> 
                    </form>
                </div>
            </div>

        </section>
    </section>

    <script src="jquery/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>