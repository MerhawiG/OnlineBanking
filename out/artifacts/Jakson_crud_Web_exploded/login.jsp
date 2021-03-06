<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Mehawi
  Date: 9/23/2018
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
  <link href="resources/css/lab12.css" rel="stylesheet">

--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="<c:url value="./resources/css/lab12.css" />" rel="stylesheet">

</head>
<body>
<div id="container">

    <h1>Login</h1>
    <div id="loginBox">
        <div id="errormessage">
            <%--<c:out value="${msg}"/>--%>
            </div>
        <form id="frmLogin" action="/login" method = "post">
        <div class="formElement">

            <label for="userName">User Name</label>
            <div class="input">
                <input type="text" name="userName" id="userName"/>
            </div>
        </div>

        <div class="formElement">
            <label for="passWord">Password</label>
            <div class="input">
                <input type="password" name="passWord" id="passWord" />
            </div>
        </div>

        <div class="formElement">
            <label><input type="checkbox" name="keepLogged" id="keepLogged" value="1" /> Remember me</label>
        </div>

        <div id="submitionBlock">
            <button id="btnSubmit" class="btn">Log in</button>
        </div>
        </form>
        <form id="frmsignup" action="/signup">
        <div id="signupforgot">
            <%--<a href="forgotpass" title="Recover your password here">Forgot your password ?</a> | <a href="signup" title="Sign Up here">Sign Up</a>--%>

                <button type="submit" name="signup" class="btn">Sign Up</button>
        </div>
        </form>
    </div>
</div>
</body>
<script src="<c:url value="resources/js/jquery-3.3.1.min.js" />" type="text/javascript"></script>
<script src="<c:url value="resources/js/lab12.js" />" type="text/javascript"></script>
</html>