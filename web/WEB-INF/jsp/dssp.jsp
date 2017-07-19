<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sản phẩm</title>
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="../css/more.css" />
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
                        <button type="button" class="btn btn-success" onclick="window.location.href = '${pageContext.request.contextPath}/logout.html'">Đăng xuất</button>
                    </div>
                </div>
            </div>
        </nav>
        <h1 class="padding-bot-row text-center">DANH SÁCH SẢN PHẨM</h1>

        <table class="table table-bordered margin-table table-hover" >
            <thead>
                <tr>
                    <th class="width-col1 text-center">Mã sản phẩm</th>
                    <th class="width-col2 text-center">Tên sản phẩm</th>
                    <th class="width-col2 text-center">Mô tả</th>
                    <th class="width-col3 text-center">Giá</th>
                    <th class="width-col4 text-center">Số lượng</th>
                    <th class="width-col5 text-center">Xuất xứ</th> 
                </tr>
            </thead>
            <tbody>
                <c:forEach var="sp" items="${listsp}">
                    <tr>
                        <td>${sp.masp}</td> 
                        <td>${sp.tensp}</td> 
                        <td>${sp.mota}</td> 
                        <td class="text-right">${sp.gia}</td> 
                        <td class="text-right">${sp.soluong}</td> 
                        <td>${sp.xuatxu}</td> 
                    </tr>    
                
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
