<%-- 
    Document   : admin
    Created on : May 31, 2017, 7:01:05 PM
    Author     : Hai Tran
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang admin</title>
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../css/more.css" />
    </head>
    
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/admin/qlsp.html">Danh sách sản phẩm</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <div class="navbar-form navbar-right">
                        <button type="button" class="btn btn-success" onclick="window.location.href = '${pageContext.request.contextPath}/logout.html'">Đăng xuất</button>
                    </div>
                </div>
            </div>
        </nav>
        <h1 class="padding-bot-row text-center">DANH SÁCH SẢN PHẨM</h1>
        <form method="POST" action="${pageContext.request.contextPath}/admin/xoaspchon.html">
            <div class="padding-bot-row padding-row">
                <button type="button" class="btn btn-success margin-button" onclick="window.location.href = '${pageContext.request.contextPath}/admin/themsp.html'">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                    Thêm sản phẩm
                </button>
                <button type="submit" class="btn btn-danger" id="btnMultiDelete">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                    Xoá (các) sản phẩm đã chọn
                </button>
            </div>
            <table class="table table-bordered margin-table table-hover " >
                <thead>
                    <tr>
                        <th class="width-col1 text-center">Mã sản phẩm</th>
                        <th class="width-col2 text-center">Tên sản phẩm</th>
                        <th class="width-col2 text-center">Mô tả</th>
                        <th class="width-col3 text-center">Giá</th>
                        <th class="width-col4 text-center">Số lượng</th>
                        <th class="width-col5 text-center">Xuất xứ</th>
                        <th class="text-center">Xoá</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sp" items="${listsp}">
                        <tr >
                            <td onclick="window.location.href = '${pageContext.request.contextPath}/admin/capnhatsp${sp.masp}.html'">${sp.masp}</td> 
                            <td onclick="window.location.href = '${pageContext.request.contextPath}/admin/capnhatsp${sp.masp}.html'">${sp.tensp}</td> 
                            <td onclick="window.location.href = '${pageContext.request.contextPath}/admin/capnhatsp${sp.masp}.html'">${sp.mota}</td> 
                            <td onclick="window.location.href = '${pageContext.request.contextPath}/admin/capnhatsp${sp.masp}.html'" class="text-right">${sp.gia}</td> 
                            <td onclick="window.location.href = '${pageContext.request.contextPath}/admin/capnhatsp${sp.masp}.html'" class="text-right">${sp.soluong}</td> 
                            <td onclick="window.location.href = '${pageContext.request.contextPath}/admin/capnhatsp${sp.masp}.html'">${sp.xuatxu}</td> 
                            <td style="text-align:center;"><input type="checkbox" value="${sp.masp}" name="cbDelete"/></td>
                        </tr>    
                    </c:forEach>
                </tbody>
            </table>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> 
        </form>
    </body>
</html>
