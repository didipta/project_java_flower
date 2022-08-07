<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

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
                <li><a href=""><i class="fa-solid fa-user"></i></a> @${loggedInUser} </li>
                <button><a href="${pageContext.request.contextPath}/logout">Log Out</a></button>

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
        <img src="${pageContext.request.contextPath}/resources/img/hero.png">
    </section>



</header>
<main id="section-2">
    <section class="about_us">
        <div class="aboutu_details">
            <h2>ABOUT US</h2>
            <p>A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering
                plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction,
                usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing
                (fusion of sperm and eggs from different individuals in a population) resulting from
                cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.</p>
            <button>Read More</button>

        </div>
        <div class="about-img">
            <img src="${pageContext.request.contextPath}/resources/img/adout-us.png">
        </div>
    </section>

    <section class="our_product">
        <h1>Our Products</h1>
        <div class="all_product">
            <%! int i=0; %>
            <c:forEach var="product" items="${products}">
                <%
                    i++;
                    if(i==6)
                    {
                        break;
                    }
                %>
            <div class="item">
                <div class="img">
                    <img src="${pageContext.request.contextPath}/resources/img/${product.pimg}">
                    <div class="icon">
                        <p><i class="fa-solid fa-heart" style="color: deeppink"></i><span style="font-size: 12px;"> 20</span></p>
                        <p><i class="fa-solid fa-star" style="color: goldenrod"></i><span style="font-size: 12px;"> 4.5</span></p>
                    </div>
                </div>
                <div class="iteam_heading">
                    <h3>${product.pname}</h3>
                    <h4 style="color: #3b3b3b">৳- ${product.pprice} <span style="text-decoration-line: line-through; color: rgba(231,23,23,0.95)">৳-${product.pprice+10}</span></h4>
                    <button style="color:rgb(243, 82, 99);"><i class="fa-solid fa-basket-shopping"></i> Buy Now</button>
                </div>
            </div>

</c:forEach>
        </div>
        <div style="text-align: center; margin-top: 10px; font-weight: 700;">
            <a href="">See more</a>
        </div>

        <div class="catagory">
            <div class="c-item" style="background-color: #FFB3B3">
                <div class="c-heading">
                    <h6>Upto 30% off</h6>
                    <h2>SUMMER</h2>
                    <P>Shop Now</P>
                </div>
                <img src="${pageContext.request.contextPath}/resources/img/summer.png">
            </div>
            <div class="c-item" style="background-color: #B2C8DF">
                <div class="c-heading">
                    <h6>Weeding Collection</h6>
                    <h2>FLOWER</h2>
                    <P>Shop Now</P>
                </div>
                <img src="${pageContext.request.contextPath}/resources/img/wedding.png">
            </div>
        </div>
    </section>
</main>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
