<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: manhkhaikt
  Date: 3/27/2019
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CHANGE MONEY</title>
</head>
<body>
<h1 align="center">Currency Converter</h1>
<form method="post">
    <p align="center" style="font-size: 25px">
    <table>

        <tr>
            <td>Amount:</td>
            <td><input type="number" name="amount" id="amount" value="${requestScope['amount']}"></td>

        </tr>
        <tr>
            <td>From:</td>
            <td>
                <select name="from" id="from" value="${requestScope['from']}">
                    <option value="USD">American Dollar</option>
                    <option value="VND">Vietnamese Dong</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>To:</td>
            <td>
                <select name="to" id="to" value="${requestScope['to']}">
                    <option value="VND">Vietnamese Dong</option>
                    <option value="USD">American Dollar</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Result:</td>
            <td>
                <c:if test="${requestScope['result'] != null}">
                    ${requestScope['result']}
                </c:if>
            </td>
        </tr>
    </table>

    <tr>
        <input type="submit" value="convert" id="btnConvert">
    </tr>

    </p>
</form>
</body>
</html>

