<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/23/2022
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <table border="2px">
        <tr>
        <th>Id</th>
        <th>Tên Sản Phẩm</th>
        <th>Ngày Sản Xuất</th>
        <th>Hạn Sử dụng</th>
        </tr>
        <c:forEach items="${products}" var="emp">
        <tr>

                <td>${emp.id}</td>
                <td>${emp.name}</td>
                <td>${emp.ngaySanXuat}</td>
                <td>${emp.hanSuDung}</td>
        </tr>
        </c:forEach>
    </table>
    <a href="/product?action=add">Them Moi</a>
</form>
</body>
</html>
