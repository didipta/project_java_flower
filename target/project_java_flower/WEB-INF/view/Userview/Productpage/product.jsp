<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/9/2022
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <script src="https://kit.fontawesome.com/c476ca993e.js" crossorigin="anonymous"></script>
    <title>Flower| All product</title>
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
<div class="headered"><a href="${pageContext.request.contextPath}/User/home">Home</a>/ All product
</div>

<section class="our_product">
    <h1>All Products</h1>
    <div class="all_product">

        <c:forEach var="product" items="${products}">
            <c:set var="ratings" value="${0}"></c:set>
            <c:set var="i" value="${0}"></c:set>
            <c:forEach var="rating" items="${product.productsratingList}">
                <c:set var="ratings" value="${ratings+rating.rating}"></c:set>
                <c:set var="i" value="${i+1}"></c:set>
            </c:forEach>
            <c:url var="productidlink" value="/product/productinfo">
                <c:param name="productId" value="${product.id}"/>
            </c:url>
           <div class="item"><a href="${productidlink}">
                <div class="img">
                    <img src="${pageContext.request.contextPath}/resources/img/${product.pimg}">
                    <div class="icon">
                        <p><i class="fa-solid fa-heart" style="color: deeppink"></i><span style="font-size: 12px;"> ${i+2}</span></p>
                        <c:if test="${ratings==0}">
                            <p><i class="fa-solid fa-star" style="color: goldenrod"></i><span style="font-size: 12px;">0</span></p>
                        </c:if>
                        <c:if test="${ratings>1}">
                            <p><i class="fa-solid fa-star" style="color: goldenrod"></i><span style="font-size: 12px;"> ${ratings/i}</span></p>
                        </c:if>

                    </div>
                </div>
                <div class="iteam_heading">
                    <h3>${product.pname}</h3>
                    <h4 style="color: #3b3b3b">৳- ${product.pprice} <span style="text-decoration-line: line-through; color: rgba(231,23,23,0.95)">৳-${product.pprice+10}</span></h4>
                    <button style="color:rgb(243, 82, 99);"><i class="fa-solid fa-basket-shopping"></i> Buy Now</button>
                </div>
           </a></div>

        </c:forEach>
    </div>




</section>
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
</body>
</html>
