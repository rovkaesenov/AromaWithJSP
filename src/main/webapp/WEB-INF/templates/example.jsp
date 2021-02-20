<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Example</title>
</head>
<body>
    <table>
        <c:forEach var="ecc" items="${getListAccessories}">
            <tr>
                <td>${ecc.id}</td>
                <td>${ecc.productName}</td>
                <td>${ecc.price}</td>
                <td>${ecc.category.nameCategory}</td>
<%--                <td><img  src="/rock/display/<c:out value='${ecc.id}'/>"></td>--%>
            </tr>
        </c:forEach>
    </table>

<%--    <p>${acc.category.nameCategory}</p>--%>
<%--    <p>${acc.productName}</p>--%>
<%--    <p>${acc.price}</p>--%>
<%--    <p>${acc.color}</p>--%>
</body>
</html>