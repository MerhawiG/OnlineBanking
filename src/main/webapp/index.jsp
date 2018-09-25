<%--
  Created by IntelliJ IDEA.
  User: henoksolomon
  Date: 9/21/18
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Online Banking ..</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <link href="./resources/css/style.css" rel="stylesheet" type="text/css"/>
  <script ><%@include file="./resources/js/myapp.js"%></script>
  <script ><%@include file="./resources/js/withdraw.js"%></script>
</head>

<body>

<div id="top_links">


  <div id="header">
    <h1><span class="style1">Online Banking</span></h1>
    <h2>ExtraOrdinary Service</h2>

  </div>
  <%--${user.username}--%>
  <div id="navigation">
    <ul>
      <li><a href="home1">HOME</a></li>
      <%--<li><a href="newaccount.jsp">NEW ACCOUNT</a></li>--%>
      <li><a href="balance">BALANCE</a></li>
      <li><a href="deposit">DEPOSIT</a></li>
      <li><a href="withdraw">WITHDRAW</a></li>
      <li><a href="helpdesk">HELP-DESK</a></li>
      <li><a href="aboutus">ABOUT US</a></li>
      <li><a href="logout">  &nbsp;&nbsp;LOG OUT</a></li>
    </ul>
  </div>
  <div id="middle">


    <c:if test="${pageWelcome==true}">
     <%@include file="home1.jsp"%>
    </c:if>

    <c:if test="${pageBalance==true}">
      <%@include file="balance.jsp"%>
    </c:if>
    <c:if test="${pageDeposit==true}">
      <%@include file="deposit.jsp"%>
    </c:if>

    <c:if test="${pageWithdraw==true}">
      <%@include file="withdraw.jsp"%>
    </c:if>

    <c:if test="${aboutus==true}">
      <%@include file="aboutus.jsp"%>
    </c:if>

    <c:if test="${helpdesk==true}">
      <%@include file="helpdesk.jsp"%>
    </c:if>
    <c:if test="${home==true}">
      <%@include file="home1.jsp"%>
    </c:if>





















  <%--<div id="mid1">--%>
        <%--<form id="form" action="/sign-up" method="post">--%>
          <%--<h4>Sign-In Please! </h4>--%>
          <%--<label>User Name:<input type="text" name="username" placeholder="User Name"></label><br/><br/>--%>
          <%--<label>Password:<input type="Password" name="pass" placeholder="Password"></label><br/><br/>--%>
          <%--<input type="checkbox" value="remember-me"> Remember me<br/><br/>--%>
          <%--<input type="submit" id="signinbtn" value="Sign-In">--%>
          <%--<input type="reset" id="resetbtn" name="reset" value="Reset">--%>
          <%--<div></div>--%>

        <%--</form>--%>
  <%--</div>--%>
    <%--<div id="mid2">--%>
    <%--<img id="imagemid2" src="./resources/images/1.jpg" alt="main picture" width="400px">--%>
    <%--</div>--%>
  <div id="footer_copyright" >

    <img src="./resources/images/logo.jpeg" alt="business"  width="196" height="106">
    <p>The online banking system will typically connect to or be part of the core banking system
      operated by a bank and is in contrast to branch banking which was the traditional way
      customers accessed banking services.</p>
    Copyright © Your Company Name</div>
</div>
</div>

</body>
</html>
