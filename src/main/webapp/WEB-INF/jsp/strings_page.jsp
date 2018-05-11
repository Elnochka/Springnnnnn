<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>Strings page</title>
</head>
<body>

<spring:url value="/statistic/list" var="addURL"/>
<a href="${addURL }">Statistic</a>

<h1>Strings line</h1>
<table width="100%" border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>

    </tr>
    <c:forEach var="listStr" items="${listStrings }">
        <tr>
            <td>${listStr.id }</td>
            <td>${listStr.name }</td>

        </tr>

    </c:forEach>
</table>
</body>
</html>
