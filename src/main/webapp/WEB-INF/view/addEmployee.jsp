<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Add new employee</h2>
<br>
<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id"/>

    <form:input path="name" placeholder="Write your name"/>
    <br><br>
    <form:input path="surname" placeholder="Write your surname"/>
    <br><br>
    <form:input path="salary" placeholder="Write your salary"/>
    <br><br>
    <form:input path="department" placeholder="Write your department"/>
    <br><br>

    <input type="submit" value="Ok"/>
</form:form>
</body>
</html>
