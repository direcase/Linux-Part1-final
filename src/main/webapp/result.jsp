<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 04.03.2021
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>process mem size</th>
        <th>block mem size</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${bestFits}" var="bestFits">
        <tr>
            <td>
                <p><c:out value="${bestFits.process}"/></p>
            </td>
            <td>
                <p><c:out value="${bestFits.block}"/></p>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>
