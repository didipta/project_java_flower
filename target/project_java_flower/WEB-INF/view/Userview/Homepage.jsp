<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/25/2022
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower| Homepage</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <script src="https://kit.fontawesome.com/c476ca993e.js" crossorigin="anonymous"></script>
</head>
<body>
<header style="background-color: rgb(182, 182, 182); height: 100vh; overflow:hidden ;">
    <div class="header">
        <div class="logo">
            <h3><i class="fa-solid fa-fan"></i> flower</h3>
        </div>
        <div class="navigation">
            <nav>
                <li><a href="">Home</a> </li>
                <li><a href="">Product</a> </li>
                <li><a href="">Order info <i class="fa-solid fa-angle-down"></i>
                    <ul class="nav-dropdown">
                        <li><a href=""></a>All order </li>
                        <li><a href=""></a>Order Status </li>
                        <li><a href=""></a>Card item </li>
                        <li><a href=""></a>Return product </li>

                    </ul>
                </a>
                </li>
                <li><a href="">Blogs</a> </li>
                <li><a href="">Contact us</a> </li>
                <li><a href="">About us</a> </li>
                <li><a href=""><i class="fa-solid fa-bell"></i></a> </li>
                <li><a href=""><i class="fa-solid fa-user"></i></a> @diptasaha </li>
                <button><a href="Sign_in">Log Out</a></button>

            </nav>
        </div>
    </div>

    <section class="slider">
        <div class="heading_slider">
            <h1>Fresh <span class="style">FLOWERS</span> & Perfect <span class="style">GIFT</span> For Your <span class="style">
                LOVED</span> Ones </h1>
            <p>A flower, sometimes known as a bloom or blossom, is the reproductive
                structure found in flowering plants plants of the division Angiospermae.</p>

            <div class="middel_form_2">
                <h3>Find your Desired flower</h3>
                <form action="/index.html" method="post" >
                    <input type="email" name="" id="" placeholder="Enter your Desired flower Name"><button>Find</button>
                </form>
            </div>
        </div>
        <img src="${pageContext.request.contextPath}/img/hero.png">
    </section>

</header>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
