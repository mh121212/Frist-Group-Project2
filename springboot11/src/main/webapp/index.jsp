<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生列表</title>
</head>
<body>
<c:forEach var="s" items="${list}">
    <h1>${s.studentid}</h1>
    <h1>${s.studentname}</h1>
    <h1>${s.studentdate}</h1>
</c:forEach>
</body>
</html>