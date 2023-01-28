<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring-MVC</title>
    <style>
        <%@ include file="../resources/css/detailsEmployee.css"%>
    </style>
</head>
<body>
<form:form class="detailsEmployee" action="saveEmployee" modelAttribute="employee">

    <h4 class="detailsEmployeeHeader">Employee</h4>

    <form:hidden path="id"/>

    <label>Name</label>
    <form:input class="text" path="name" placeholder="Write your name"/>
    <br>
    <label>Surname</label>
    <form:input class="text" path="surname" placeholder="Write your surname"/>
    <br>
    <label>Department</label>
    <form:input class="text" path="department" placeholder="Write your department"/>
    <br>
    <label>Salary</label>
    <form:input class="text" path="salary" placeholder="Write your salary"/>
    <br>

    <h4 class="detailsEmployeeHeader">Employee details</h4>

    <label>City</label>
    <form:input class="text" path="details.city" placeholder="Write your city"/>
    <br>
    <label>Phone number</label>
    <form:input class="text" path="details.phone_number" placeholder="Write your phone number"/>
    <br>
    <label>Email</label>
    <form:input class="text" path="details.email" placeholder="Write your email"/>
    <br>

    <input type="submit" class="button-add" value="Save details"/>
    <input type="button" class="button-cancel" value="Cancel"
           onclick="window.location.href = '/allEmployees'">
</form:form>
</body>
</html>
