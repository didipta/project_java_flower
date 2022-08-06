
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/20/2022
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower|Online Flower Service</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <script src="https://kit.fontawesome.com/c476ca993e.js" crossorigin="anonymous"></script>
    <style>

    </style>
</head>
<body class="index_body">
<header>
    <div class="header">
        <div class="logo">
            <h3><i class="fa-solid fa-fan"></i> flower</h3>
        </div>
        <div class="navigation">
            <nav>
                <li><a href="">Home</a> </li>
                <li><a href="">Product</a> </li>
                <li><a href="">Blogs</a> </li>
                <li><a href="">Contact us</a> </li>
                <li><a href="">About us</a> </li>
                <button><a href="${pageContext.request.contextPath}/login">Log in</a></button>

            </nav>
        </div>
    </div>
</header>
<main>
    <section class="contain">

        <img src="${pageContext.request.contextPath}/resources/img/index.jpg">


        <div class="heading">
            <h1>Online Flower Service</h1>
            <h4>Any kind of flower Available</h4>
            <p>A flower, sometimes known as a bloom or blossom, is the reproductive
                structure found in flowering plants (plants of the division Angiospermae). The biological function of
                a flower is to facilitate reproduction, usually by providing a mechanism for the union of sperm with eggs.</p>
            <a href="${pageContext.request.contextPath}/login" class="btn-2">Log-in</a>
        </div>
    </section>
</main>
</body>
</html>
