<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>New user</title>
</head>
<body>
<div>
    <div>
        <%@ include file="logout.jsp" %>
        <div>
            <h2>New user</h2>
        </div>

        <form method="POST">
            <label>Name:
                <input type="text" name="firstName" value="${user.firstName}"><br/>
            </label>
            <label>Last name:
                <input type="text" name="lastName" value="${user.lastName}"><br/>
            </label>
            <label>Email:
                <input type="text" name="email" value="${user.email}"><br/>
            </label>
            <label>Password:
                <input type="text" name="password" value="${user.password}"><br/>
            </label>
            <h1></h1>
            <div class="row">
                <div class="form-actions floatRight">
                    <input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/admin' />">Cancel</a>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

