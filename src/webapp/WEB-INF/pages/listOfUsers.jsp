<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title><spring:message code="global.title" /></title>
</head>

<body>
    <%@ include file="logout.jsp" %>
    <b><spring:message code="global.tableTitle" /></b>
    <br/>
    <form action="admin/add">
        <button type="submit"><spring:message code="global.add" /></button>
    </form>

    <table style=" width: 100%; border: 4px double black;">
        <tr>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.user.firstName" /></th>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.user.lastName" /></th>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.user.email" /></th>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.user.password" /></th>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.user.roles" /></th>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.edit" /></th>
            <th style="border: 1px solid black; text-align: center"><spring:message code="global.delete" /></th>
        </tr>
        <c:forEach var="user" items="${listUsers}">
            <tr>
                <td><c:out value="${user.firstName}"/></td>
                <td><c:out value="${user.lastName}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.password}"/></td>
<%--                <td><c:out value="${user.role}"/></td>--%>
                <td><c:out value="${user.roles}"/></td>


                <td style="text-align: center">
                    <form action="admin/edit">
                        <input type="hidden" name="id" value="${user.id}"/>
                        <button type="submit"><spring:message code="global.edit" /></button>
                    </form>
                </td>
                <td style="text-align: center">
                    <form action="admin/delete">
                        <input type="hidden" name="id" value="${user.id}"/>
                        <button type="submit"><spring:message code="global.delete" /></button>
                    </form>
                </td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>
