<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>All Employees</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="item" items="${allEmployees}">

        <c:url var="updateButton" value="/updateEmployee">
            <c:param name="employeeId" value="${item.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="employeeId" value="${item.id}"/>
        </c:url>

        <tr>
            <td><c:out value="${item.id}"/></td>
            <td><c:out value="${item.name}"/></td>
            <td><c:out value="${item.surname}"/></td>
            <td><c:out value="${item.department}"/></td>
            <td><c:out value="${item.salary}"/></td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href = '${updateButton}'"/>
                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href = 'addEmployee'">
</body>
</html>
