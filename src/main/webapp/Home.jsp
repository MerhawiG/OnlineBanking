<%--
  Created by IntelliJ IDEA.
  User: henoksolomon
  Date: 9/22/18
  Time: 12:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Home-Page</title>
    <link rel="stylesheet" type="text/css" href="home.css">

</head>
<body><form id="form" action="/sign-up" method="post">
    <h4>Sign-In Please! </h4>
    <label>User Name:&nbsp;&nbsp;<input type="text" name="username" placeholder="User Name"></label><br/><br/>
    <label>Password:&nbsp;&nbsp;<input type="Password" name="pass" placeholder="Password"></label><br/><br/>
    <input type="checkbox" value="remember-me"> Remember me<br/><br/>
    <input type="submit" id="signinbtn" value="Sign-In">
    <input type="reset" id="signupbtn" name="rest" value="Reset">
    <div></div>

</form>
</body>
</html>
