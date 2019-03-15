<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CHỈNH SỬA SẢN PHẨM</title>
</head>
<body>
<h1 align="center">CHỈNH SỬA SẢN PHẨM</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p align="center" style="font-size: 25px">
    <a href="/product">TRỞ VỀ DANH SÁCH SẢN PHẨM</a>
</p>
<form method="post">
    <fieldset align="center" style="font-size: 25px">
        <legend>Thông tin sản phẩm</legend>
        <table align="center" style="font-size: 25px">
            <tr>
                <td>Tên sản Phẩm:</td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Giá sản phẩm:</td>
                <td><input type="text" name="gia" id="gia" value="${requestScope["product"].getGiaSanPham()}"></td>
            </tr>
            <tr>
                <td>Mô tả sản phẩm:</td>
                <td><input type="text" name="mota" id="mota" value="${requestScope["product"].getMoTaSanPham()}">
                </td>
            </tr>
            <tr>
                <td>Nhà sản phẩm:</td>
                <td><input type="text" name="nhasanxuat" id="nhasanxuat" value="${requestScope["product"].getNhaSanXuat()}">
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="submit"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>