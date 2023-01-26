<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Spring-MVC</title>
    <style>
        <%@ include file="../resources/css/addEmployees.css" %>
    </style>
</head>
<body>
<div class="container">
    <h2>Add new employee</h2>
    <form:form action="saveEmployee" modelAttribute="employee">

        <form:hidden path="id"/>

        <form:input path="name" placeholder="Write your name"/>
        <br><br>
        <form:input path="surname" placeholder="Write your surname"/>
        <br><br>
        <form:input path="department" placeholder="Write your department"/>
        <br><br>
        <form:input path="salary" placeholder="Write your salary"/>
        <br><br>

        <input type="submit" class="button-add" value="Add employee"/>
        <input type="button" class="button-cancel" value="Cancel"
               onclick="window.location.href = '/'">
    </form:form>
</div>
</body>
</html>
