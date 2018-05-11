<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>Statistic page</title>
</head>
<body>

<spring:url value="/strings/list" var="addURL"/>
<a href="${addURL }">StringsFile</a>

<h1>Statistic list</h1>
<table width="100%" border="1">
    <tr>
        <th>Id</th>
        <th>longest</th>
        <th>shortest</th>
        <th>length</th>
        <th>average</th>

    </tr>
    <c:forEach var="listStat" items="${listStatistic }">
        <tr>
            <td>${listStat.id }</td>
            <td>${listStat.longest }</td>
            <td>${listStat.shortest }</td>
            <td>${listStat.length }</td>
            <td>${listStat.average }</td>

        </tr>

    </c:forEach>
</table>
</body>
</html>

