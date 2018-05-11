<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu Swiss spring</title>
</head>
<body>
<spring:url value="/strings/list" var="pURL"/>
<a href="${pURL }">StringsFile   </a>
<spring:url value="/statistic/list" var="mURL"/>
<a href="${mURL }">Statistic</a>

</body>
</html>
