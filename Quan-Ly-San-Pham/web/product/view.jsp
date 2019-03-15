<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<html>
<head>
    <title>THÔNG TIN SẢN PHẨM</title>
</head>
<body>
<h1 align="center">CHI TIẾT THÔNG TIN SẢN PHẨM</h1>
<p align="center" style="font-size: 25px">
    <a href="/product">Trở về danh sách sản phẩm</a>
</p>
<table align="center" style="font-size: 25px" border="1">
    <tr>
        <td>Tên sản phẩm:</td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Giá sản phẩm:</td>
        <td>${requestScope["product"].getGiaSanPham()}</td>
    </tr>
    <tr>
        <td>Mô tả:</td>
        <td>${requestScope["product"].getMoTaSanPham()}</td>
    </tr>
    <tr>
        <td>Nhà sản xuất:</td>
        <td>${requestScope["product"].getNhaSanXuat()}</td>
    </tr>
</table>
</body>
</html>