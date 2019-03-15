<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>TẠO SẢN PHẨM MỚI</title>
</head>
<body>
<h1 align="center">TẠO SẢN PHẨM MỚI</h1>
<p style="font-size: 25px">
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p align="center">
    <a href="/product" style="font-size: 25px" width="100%">Trở lại danh sách sản phẩm</a>
</p>
<form method="post">
    <fieldset>
        <legend style="font-size: 25px">Thông tin sản phẩm</legend>
        <table style="font-size: 25px" width="100%">
            <tr>
                <td>Tên Sản Phẩm:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Giá:</td>
                <td><input type="text" name="gia" id="gia"></td>
            </tr>
            <tr>
                <td>Mô Tả:</td>
                <td><input type="text" name="mota" id="mota"></td>
            </tr>
            <tr>
                <td>Nhà Sản Xuất:</td>
                <td><input type="text" name="nhasanxuat" id="nhasanxuat"></td>
            </tr>
        </table>
        <p align="center">
        <td><input type="submit" value="Tạo sản phẩm"></td>
        </p>
    </fieldset>


</form>

</body>
</html>

