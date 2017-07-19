<%-- 
    Document   : user
    Created on : Jun 3, 2017, 2:01:22 PM
    Author     : Hai Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang nhân viên</title>
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/user/ttcanhan.html">Thông tin cá nhân</a>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/user/dssp.html">Danh sách sản phẩm</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <div class="navbar-form navbar-right">
                        <button type="button" class="btn btn-success" onclick="window.location.href='${pageContext.request.contextPath}/logout.html'">Đăng xuất</button>
                </div>
            </div>
        </nav>
    </body>
</html>
