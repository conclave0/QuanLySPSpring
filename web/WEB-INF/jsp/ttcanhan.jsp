<%-- 
    Document   : ttcanhan
    Created on : Jun 3, 2017, 5:21:26 PM
    Author     : Hai Tran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang nhân viên</title>
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
        </nav>
        <div class="container padding-navbar"> 
            <h1 class="padding-bot-row text-center">THÔNG TIN CÁ NHÂN</h1>
            <div class="row padding-row padding-bot-row">
                <div class="col-md-12">
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    <label class ="col-md-2 control-label padding-label">Họ tên: </label>
                    <div class="controls col-md-6">
                        <input type="text" class="form-control" value="${tk.hoten}" readonly="true">
                    </div>
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                </div>
            </div>
            <div class="row padding-row padding-bot-row">
                <div class="col-md-12">
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    <label class ="col-md-2 control-label padding-label">Giới tính:</label>
                    <div class="controls col-md-6">
                        <input type="text" class="form-control" value="${tk.gioitinh}" readonly="true">
                    </div>
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                </div>
            </div>
            <div class="row padding-row padding-bot-row">
                <div class="col-md-12">
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    <label class ="col-md-2 control-label padding-label">Ngày sinh: </label>
                    <div class="controls col-md-6">
                        <input type="text" class="form-control" value="${ngaysinh}" readonly="true">
                    </div>
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                </div>
            </div>
            <div class="row padding-row padding-bot-row">
                <div class="col-md-12">
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    <label class ="col-md-2 control-label padding-label">Địa chỉ: </label>
                    <div class="controls col-md-6">
                        <input type="text" class="form-control" value="${tk.diachi}" readonly="true">
                    </div>
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                </div>
            </div>
            <div class="row padding-row padding-bot-row">
                <div class="col-md-12">
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                    <label class ="col-md-2 control-label padding-label">CMND: </label>
                    <div class="controls col-md-6">
                        <input type="text" class="form-control" value="${tk.cmnd}" readonly="true">
                    </div>
                    <label class ="col-md-2 control-label padding-label">&nbsp;</label>
                </div>
            </div>
        </div>
    </body>
</html>
