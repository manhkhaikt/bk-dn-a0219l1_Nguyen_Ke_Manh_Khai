<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>SẢN PHẨM</title>
</head>
<body>
<h1 align="center">DANH SÁCH SẢN PHẨM</h1>
<p align="center">
    <a href="/product?action=create" style="font-size: 25px">Tạo sản phẩm mới</a>
</p>
<table border="1" width="100%" style="font-size: 25px">
    <tr align="center">
        <td>Tên Sán Phẩm</td>
        <td>Giá</td>
        <td>Mô Tả</td>
        <td>Nhà Sản Xuất</td>
        <td>Chỉnh sửa</td>
        <td>Xóa</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr align="center" >
            <td><a href="/product?action=view&id=${product.getId()}">${product.getName()}</td>
            <td>${product.getGiaSanPham()}</td>
            <td>${product.getMoTaSanPham()}</td>
            <td>${product.getNhaSanXuat()}</td>
            <td><a href="/product?action=update&id=${product.getId()}">Chỉnh sửa</a></td>
            <td><a href="/product?action=delete&id=${product.getId()}">Xóa sản phẩm</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>


