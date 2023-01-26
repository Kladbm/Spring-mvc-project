<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Spring-MVC</title>
    <style>
        <%@ include file="../resources/css/allEmployees.css" %>
    </style>
</head>
<body>
<div class="container">
    <h2>List of employees</h2>
    <ul class="responsive-table">
        <li class="table-header">
            <div class="col col-1">ID</div>
            <div class="col col-2">Name</div>
            <div class="col col-3">Surname</div>
            <div class="col col-4">Department</div>
            <div class="col col-5">Salary</div>
            <div class="col col-5">Operations</div>
        </li>
        <c:forEach var="item" items="${allEmployees}">

            <c:url var="updateButton" value="/updateEmployee">
                <c:param name="employeeId" value="${item.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="employeeId" value="${item.id}"/>
            </c:url>

            <li class="table-row">
                <div class="col col-1" data-label="ID">${item.id}</div>
                <div class="col col-2" data-label="Name">${item.name}</div>
                <div class="col col-3" data-label="Surname">${item.surname}</div>
                <div class="col col-4" data-label="Department">${item.department}</div>
                <div class="col col-5" data-label="Salary">${item.salary}</div>
                <div class="col col-6" data-label="Operations">
                    <input type="button" class="button-update" value="Update"
                           onclick="window.location.href = '${updateButton}'"/>
                    <input type="button" class="button-error" value="Delete"
                           onclick="window.location.href = '${deleteButton}'">
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<br>
<input type="button" class="button-add" value="Add" onclick="window.location.href = 'addEmployee'">
</body>
</html>
