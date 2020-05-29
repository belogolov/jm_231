<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home page</title>
</head>

<body>
<%@ include file="logout.jsp" %>
<div>
    <h1>Hello, ${user.firstName}!</h1>
</div>

<div>
    <p>Name: ${user.firstName}</p>
    <h1></h1>
    <p>Last name: ${user.lastName}</p>
    <h1></h1>
    <p>E-mail: ${user.email}</p>
    <h1></h1>
    <p>Password: ${user.password}</p>
    <h1></h1>
    <p>Roles: ${user.roles}</p>
</div>
</body>
</html>

