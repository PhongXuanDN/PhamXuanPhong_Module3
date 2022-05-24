<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 5/23/2022
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple Calculate</h1>
<form>
    <table>
        <tr>
            First Operator:
            <td>
                <input type="text" name="num1" placeholder="Nhap so thu nhat">
            </td>
        </tr>
        <tr>
            Operator:
            <td>
                <select>
                    <option>cong</option>
                    <option>tru</option>
                    <option>nhan</option>
                    <option>chia</option>
                </select>
            </td>
        </tr>
        <tr>
            First Operator:
            <td>
                <input type="text" name="num2" placeholder="Nhap so thu hai">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
