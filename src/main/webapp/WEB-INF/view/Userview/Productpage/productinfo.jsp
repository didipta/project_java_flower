<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/9/2022
  Time: 2:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower| ${product.pname}</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/productpage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.nice-number.css">
    <script src="https://kit.fontawesome.com/c476ca993e.js" crossorigin="anonymous"></script>
    <style>
        .headered{
            font-size: 1rem;
            text-align: center;
            padding: 15px;
            color: #3f3d3d;
            font-weight: bolder;
        }
    </style>
</head>
<body>


<main class="container">
    <div class="headered">
        <a href="${pageContext.request.contextPath}/User/home">Home</a> / ${product.pname}
    </div>
    <div class="product-info">
        <div class="product_img">
            <img src="${pageContext.request.contextPath}/resources/img/${product.pimg}">
        </div>

        <div class="details">
            <h1>${product.pname}</h1>
                <p>Beautiful flower. Rating is (4.5/5) </p>
            <hr>
            <p>${product.pdescription}</p>
            <h4 style="color: #3b3b3b">৳- ${product.pprice} <span style="text-decoration-line: line-through; color: rgba(231,23,23,0.95)">৳-${product.pprice+10}</span></h4>
            <form action="" method="post">
                <div class="input">
                    <input type="number" name="" id="value" value="1" min="1" >
                </div>
                <div class="btn-2">
                    <button style="background-color:rgb(243,80,97);"><i class="fa-solid fa-basket-shopping"></i> Buy Now</button>
                    <button style="background-color:rgb(0,0,0);"><i class="fa-solid fa-cart-plus"></i></i> Add to Cart</button>
                </div>
            </form>

        </div>
    </div>
    <section class="our_product">
        <h1>Our Products</h1>
        <div class="all_product">
            <%! int i=0; %>
            <c:forEach var="products" items="${products}" begin="0" end="4">
                <c:url var="productidlink" value="/product/productinfo">
                    <c:param name="productId" value="${products.id}"/>
                </c:url>
                <div class="item"><a href="${productidlink}">
                    <div class="img">
                        <img src="${pageContext.request.contextPath}/resources/img/${products.pimg}">
                        <div class="icon">
                            <p><i class="fa-solid fa-heart" style="color: deeppink"></i><span style="font-size: 12px;"> 20</span></p>
                            <p><i class="fa-solid fa-star" style="color: goldenrod"></i><span style="font-size: 12px;"> 4.5</span></p>
                        </div>
                    </div>
                    <div class="iteam_heading">
                        <h3>${product.pname}</h3>
                        <h4 style="color: #3b3b3b">৳- ${products.pprice} <span style="text-decoration-line: line-through; color: rgba(231,23,23,0.95)">৳-${products.pprice+10}</span></h4>
                        <button style="color:rgb(243, 82, 99);"><i class="fa-solid fa-basket-shopping"></i> Buy Now</button>
                    </div>
                </a> </div>

            </c:forEach>
            <div class="see-more">
                <a href="${pageContext.request.contextPath}/User/allprobuct">See more <i class="fa-solid fa-right-long"></i></a>
            </div>
        </div>
    </section>
</main>
<div class="footer">
    <div class="footer-address">
        <h2>Contact Us</h2>

        <p><i class="fa fa-map-marker" aria-hidden="true"></i>
            Road-18,Nikonjo-2,khilkhet,Dhaka,Bangladesh.<br>
            <i class="fa fa-phone" aria-hidden="true"></i>
            phone-01881401818<br>
            <i class="fa fa-clock-o" aria-hidden="true"></i> Anyday - 10AM To 10PM<br>
            <i class="fa fa-envelope-o" aria-hidden="true"></i> diptacompani12@gmail.com
        </p>
    </div>

    <div class="footer-list">
        <h2>MENU</h2>

        <li><a href="">HOME</a></li>
        <li><a href="">CATALOG</a></li>
        <li><a href="">BLOG</a></li>
        <li><a href="">ADOUT</a></li>
        <li><a href="">HELP</a></li>
    </div>
    <div class="footer-list">
        <h2>CATAGORIES</h2>
        <li><a href=""> Beautiful flower </a></li>
        <li><a href=""> Wedding Collection </a></li>
        <li><a href=""> Summer flowers</a></li>
        <li><a href=""> Colorfull flowers </a></li>
        <li><a href=""> Flowers </a></li>

    </div>

    <div class="socail-app">
        <h2>SOCIAL MEDIA APPS</h2><br>
        <a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a>
        <a href="https://mail.google.com/mail/u/0/?tab=rm#inbox?compose=new"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
        <a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        <a href="https://www.whatsapp.com/"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-number.js"></script>
<script>
    $(function(){

        $('input[type="number"]').niceNumber();

    });
</script>
</body>
</html>
