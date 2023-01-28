<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring-MVC</title>
    <style>
        <%@ include file="../resources/css/signInForm.css"%>
    </style>
</head>
<body>
<form:form class="addUser" action="save_user" modelAttribute="user">

    <h4 class="addUserHeader">Sign in</h4>

    <form:hidden path="id"/>

    <label>Username</label>
    <form:input class="text" path="username" placeholder="Write your username"/>
    <br>
    <label>Password</label>
    <form:input type="password" class="text" path="password" placeholder="Write your password"/>
    <br><br>

    <input type="submit" class="button-add" value="Sign in"/>
    <br>
    <h5 class="addUseNotHeader">Don't have an account yet?
        <a href="/sign_up">Register now</a></h5>
</form:form>
</body>
</html>
