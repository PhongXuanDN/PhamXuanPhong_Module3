<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/20/2022
  Time: 7:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh Sách Khách Hàng</h1>
    <table BORDER="2px">
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa Chỉ</th>
            <th>Ảnh</th>
        </tr>
        <c:forEach items="${employees}" var="emp">
        <tr>

            <td>${emp.name}</td>
            <td>${emp.ngaySinh}</td>
            <td>${emp.diaChi}</td>
            <td>${emp.imagee}</td>

        </tr>
        </c:forEach>
    </table>
</body>
</html>
