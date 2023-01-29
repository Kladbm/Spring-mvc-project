<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring-MVC</title>
    <style>
        <%@ include file="../resources/css/signUpForm.css"%>
    </style>
</head>
<body>
<header class="header">
    <div class="container">
        <nav class="menu">

            <a href="#" class="logo">
                LOGO
            </a>

            <div class="menu__reveal1"></div>
            <div class="menu__reveal2"></div>

            <ul class="menu__list">
                <li class="menu__list-item active">
                    <a href="#">Home</a>
                </li>
                <li class="menu__list-item">
                    <a href="#">About</a>
                </li>
                <li class="menu__list-item">
                    <a href="#">Contacts</a>
                </li>
                <li class="menu__list-item">
                    <a href="#">Gallery</a>
                </li>
                <li class="menu__list-item">
                    <a href="#">FAQ</a>
                </li>
            </ul>


            <div class="hamburger">
                <span class="hamburger__line"></span>
                <span class="hamburger__line"></span>
                <span class="hamburger__line"></span>
                <span class="hamburger__line"></span>
            </div>

        </nav>
    </div>
</header>
<form:form class="addUser" action="save_user" modelAttribute="user">

    <h4 class="addUserHeader">Registration</h4>

    <form:hidden path="id"/>

    <label>Username</label>
    <form:input class="text" path="username" placeholder="Write your username"/>
    <br>
    <label>Email</label>
    <form:input type="email" class="text" path="email" placeholder="Write your email"/>
    <br>
    <label>Password</label>
    <form:input type="password" class="text" path="password" placeholder="Write your password"/>
    <br><br>

    <input type="submit" class="button-add" value="Register"/>
    <br>
    <h5 class="addUseNotHeader">Already have login and password?
        <a href="/sign_in">Sign in</a></h5>
</form:form>
</body>
</html>
