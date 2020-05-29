<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit user</title>
</head>
<body>
<div>
    <div>
        <%@ include file="logout.jsp" %>
        <div>
            <h2>Edit user</h2>
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
            <label>
                <input type="hidden" name="password" value="${user.password}"><br/>
            </label>

            <label>
                <input type="text" name="roles" value="${roles}"><br/>
<%--                <input type="text" name="roles" value="${roles}" multiple="true"><br/>--%>
            </label>

            <h1></h1>
            <div class="row">
                <div class="form-actions floatRight">
                    <input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/admin' />">Cancel</a>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>

