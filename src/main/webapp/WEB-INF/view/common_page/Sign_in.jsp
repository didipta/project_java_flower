<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/23/2022
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower| Welcome Back</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginpage.css">
    <script src="https://kit.fontawesome.com/c476ca993e.js" crossorigin="anonymous"></script>
</head>
<body>
<header>
    <a href="index.jsp"> <div class="logo">
        <h3><i class="fa-solid fa-fan"></i> flower</h3>
    </div></a>
</header>
<section class="form_section">

    <div class="form">

        <h1>:) Welcome Back</h1>
<%--        <form:form action="" modelAttribute="">--%>
<%--            <form:input path="name"></form:input>--%>
<%--            <hr>--%>
<%--            <form:password path="password"></form:password>--%>
<%--            <hr>--%>
<%--        </form:form>--%>

        <c:if test="${param.error != null}">
            Username/Password is incorrect
        </c:if>

        <form:form action="${pageContext.request.contextPath}/login" modelAttribute="user">
            <label>
                <p><i class="fa-solid fa-user"></i>
                    <form:input path="username" placeholder="Enter your username"></form:input></p>
                <hr>
                <span class="errors"><form:errors path="username"></form:errors></span>
            </label>
            <label>
                <p>
                    <i class="fa-solid fa-lock"></i>
                    <form:password path="password" id="password" placeholder="Enter your password"></form:password>
                    <i class="fa-solid fa-eye show"  id="show" onclick="password()"></i>

                </p>

                <hr>
                <span class="errors"><form:errors path="password"></form:errors></span>
            </label>
            <div class="btn">
                <button>Log-in</button>
            </div>

        </form:form>
        <div class="sign_up_info">
           <p>Are you new to this website? Do you like what we offer ?you should
               totally join our website and experience community. <a href="registration">Registration Now...</a> </p>
        </div>
        <div class="social_icon">
            <i class="fa-brands fa-facebook-f"></i>
            <i class="fa-brands fa-google-plus-g"></i>
            <i class="fa-brands fa-twitter"></i>
        </div>
    </div>


</section>
<script src="${pageContext.request.contextPath}/resources/js/style.js"></script>
</body>
</html>
