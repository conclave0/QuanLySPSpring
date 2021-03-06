<%-- 
    Document   : capnhatsp
    Created on : Jun 4, 2017, 3:04:50 PM
    Author     : Hai Tran
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang quản lý</title>
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
        </nav>
        <div class="container padding-navbar"> 
            <h1 class="padding-bot-row text-center">CHI TIẾT SẢN PHẨM</h1>
            <form:form method="POST" action="${pageContext.request.contextPath}/admin/updatesp.html" commandName="sp">
                <div class="row padding-row padding-bot-row">
                    <div class="col-md-12">
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                        <label class ="col-md-2 control-label padding-label">Mã sản phẩm: </label>
                        <div class="controls col-md-6">
                            <form:input path="masp" class="form-control" readonly="true"/>
                        </div>
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    </div>
                </div>
                <div class="row padding-row padding-bot-row">
                    <div class="col-md-12">
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                        <label class ="col-md-2 control-label padding-label" >Tên sản phẩm:</label>
                        <div class="controls col-md-6">
                            <form:input path="tensp" class="form-control"/>
                        </div>
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    </div>
                </div>
                <div class="row padding-row padding-bot-row">
                    <div class="col-md-12">
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                        <label class ="col-md-2 control-label padding-label">Mô tả: </label>
                        <div class="controls col-md-6">
                            <form:input path="mota" class="form-control"/>
                        </div>
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    </div>
                </div>
                <div class="row padding-row padding-bot-row">
                    <div class="col-md-12">
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                        <label class ="col-md-2 control-label padding-label">Giá: </label>
                        <div class="controls col-md-6">
                            <form:input path="gia" class="form-control"/>
                        </div>
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    </div>
                </div>
                <div class="row padding-row padding-bot-row">
                    <div class="col-md-12">
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                        <label class ="col-md-2 control-label padding-label">Số lượng: </label>
                        <div class="controls col-md-6">
                            <form:input path="soluong" class="form-control"/>
                        </div>
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    </div>
                </div>
                <div class="row padding-row padding-bot-row">
                    <div class="col-md-12">
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                        <label class ="col-md-2 control-label padding-label">Xuất xứ: </label>
                        <div class="controls col-md-6">
                            <form:input path="xuatxu" class="form-control"/>
                        </div>
                        <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    </div>
                </div> 
                <div class="margin-left-mess row padding-row padding-bot-row margin-left-mess">${message}</div>
                <div class="row padding-row padding-bot-row">
                    <button type="submit" class="btn btn-success" id="btnUpdateSp">
                        <span class="glyphicon glyphicon-refresh" aria-hidden="true"></span>
                        Cập nhật sản phẩm</button>
                    <button type="button" class="btn btn-danger" id="btnDeleteSp" onclick="window.location.href = '${pageContext.request.contextPath}/admin/xoasp${sp.masp}.html'">
                        <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                        Xoá sản phẩm</button>
                    <button type="button" class="btn btn-success" id="btnBack" onclick="window.location.href = '${pageContext.request.contextPath}/admin/qlsp.html'">
                        <span class="glyphicon glyphicon-circle-arrow-left" aria-hidden="true"></span>
                        Về trang Danh sách sản phẩm</button>
                    
                </div>
            </form:form>
        </div>
    </body>
</html>
