<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<table>
    <tr>
        <td>Ten</td>
        <td>Ngay sinh</td>
        <td>Dia chi</td>
        <td>Anh</td>
    </tr>

    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>
                <fmt:formatDate value="${customer.dob}" pattern="dd/MM/yyyy"/>
            </td>
            <td>${customer.address}</td>
            <td>
                <img src="${pageContext.request.contextPath}/${customer.img}" width="100">
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>