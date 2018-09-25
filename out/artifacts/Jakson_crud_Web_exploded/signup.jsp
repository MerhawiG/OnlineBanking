<%--
  Created by IntelliJ IDEA.
  User: anna
  Date: 9/24/18
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
    <style>
        <%@include file="./resources/css/style.css"%>
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <script src="./resources/js/signup.js" ></script>
</head>
<body>
<h1 class="alert alert-primary">Online bank signup form</h1>
<form id="login-form" action="newUser" method="post">
    <label id="errorMessage">${errorMessage}</label>

        <label for="username">Username</label>
        <input type="text" name="username" id="username" aria-describedby="emailHelp" placeholder="Enter Username"><br/><br/>
<label for="user_password">Password</label>
<input type="password" name="password" id="user_password" placeholder="Enter Password"><br/><br/>

<label for="username">Email</label>
        <input type="email" name="email" id="email"  placeholder="Enter email"><br/><br/>
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small><br/><br/>
        <label for="username">Account</label>
        <input type="text" name="name" id="name"  placeholder="initial balance"><br/><br/>

        <button type="submit" id="signup" class="btn btn-primary">Sign up</button>
        <a href="login">Or Log in</a>
</form>
</body>
</html>


</body>
</html>
