<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <title>XÓA SẢN PHẨM</title>
</head>
<body>
<h1 align="center">XÓA SẢN PHẨM</h1>
<p align="center" style="font-size: 25px">
    <a href="/product">Trở về danh sách sản phẩm</a>
</p>
<form method="post">
    <h2 align="center">Bạn có chắc muốn xóa sản phẩm?</h2>
    <fieldset  width="100%" style="font-size: 25px" align="center">
        <legend>Thông tin sản phẩm</legend>
        <table align="center" width="100%" style="font-size: 25px">
            <tr>
                <td>Tên sản phẩm: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Giá sản phẩm: </td>
                <td>${requestScope["product"].getGiaSanPham()}</td>
            </tr>
            <tr>
                <td>Mô tả: </td>
                <td>${requestScope["product"].getMoTaSanPham()}</td>
            </tr>
            <tr>
                <td>Nhà sản xuất: </td>
                <td>${requestScope["product"].getNhaSanXuat()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="delete"></td>
                <td><a href="/product">Trở về danh sách sản phẩm</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>