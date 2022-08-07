<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/25/2022
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower|Registration</title>
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

    <div class="reg_form">
        <h1>Registration</h1>
        <h3>This Will help you manage all your activities.</h3>
        <p>Let's get you set up you can verify your personal account and
            setting up your profile.</p>
        <%--        <form:form action="" modelAttribute="">--%>
        <%--            <form:input path="name"></form:input>--%>
        <%--            <hr>--%>
        <%--            <form:password path="password"></form:password>--%>
        <%--            <hr>--%>
        <%--        </form:form>--%>
     <form:form action="registration" modelAttribute="user">
            <div class="form_input">
                <label>
                    <p><i class="fa-solid fa-user"></i>
         <form:input path="firstname" placeholder="Enter your First Name"></form:input></p>
                    <hr>
                    <span class="errors"><form:errors path="firstname"></form:errors></span>
                </label>
                <label>
                    <p><i class="fa-solid fa-user"></i>
                        <form:input path="lastname" placeholder="Enter your Last Name"></form:input></p>
                    <hr>
                    <span class="errors"><form:errors path="lastname"></form:errors></span>
                </label>
                <label>
                    <p><i class="fa-solid fa-at"></i>
                        <form:input path="email" placeholder="Enter your Email"></form:input></p>
                    <hr>
                    <span class="errors"><form:errors path="email"></form:errors></span>
                </label>
                <label>
                    <p><i class="fa-solid fa-phone"></i>
                        <form:input path="phomenumber" placeholder="Enter your Phone Number"></form:input></p>
                    <hr>
                    <span class="errors"><form:errors path="phomenumber"></form:errors></span>
                </label>
                <label>
                    <p><i class="fa-solid fa-user-check"></i>
                        <form:input path="user.username" placeholder="Enter your username"></form:input>
                        <form:hidden path="user.usertype" value="user" placeholder="Enter your username"></form:hidden></p>
                    <hr>
                    <span class="errors"> <form:errors path="user.username"></form:errors></span>
                </label>
                <label>
                    <p><i class="fa-solid fa-location-dot"></i>
                        <form:input path="address" placeholder="Enter your Address"></form:input></p>
                    <hr>
                    <span class="errors"><form:errors path="address"></form:errors></span>
                </label>
                <label>
                    <p><i class="fa-solid fa-key"></i>
                        <form:password path="user.password" id="p_password" placeholder="Enter your Password"></form:password>
                        <i class="fa-solid fa-eye show"  id="p_show" onclick="p_password()"></i></p>

                    <hr>
                    <span class="errors"><form:errors path="user.password"></form:errors></span>
                </label>
                <label>
                    <p>
                        <i class="fa-solid fa-key"></i>
                        <form:password path="user.cpassword" id="password" placeholder="Enter your Confirm password"></form:password>
                        <i class="fa-solid fa-eye show"  id="show" onclick="password()"></i>
                    </p>
                    <hr>
                    <span class="errors"><form:errors path="user.cpassword"></form:errors></span>
                </label>
            </div>

            <div class="btn btn_rg">
                <button>Create Account</button>
            </div>

     </form:form>
        <div class="sign_up_info">
            <p>Already have an account? <a href="${pageContext.request.contextPath}/login">LOG IN</a></p>

        </div>



    </div>


</section>

<script src="${pageContext.request.contextPath}/resources/js/style.js"></script>
</body>
</html>
