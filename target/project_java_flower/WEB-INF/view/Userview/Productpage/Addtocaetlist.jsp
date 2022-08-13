<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/9/2022
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower| Add to cart</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/orderpage.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.nice-number.css">
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
<div class="headered"><a href="${pageContext.request.contextPath}/User/home">Home</a>/ All cart iteam
</div>
<header style="text-align: center">
    <h1>All Cart iteam</h1>
</header>
<div class="contaim">
    <div class="addtocartlist">
       <c:set var="price" value="${0}"></c:set>
       <c:set var="quantity" value="${0}"></c:set>
       <c:forEach var="addtocarts" items="${addtocart}">
           <c:url var="productidlink" value="/product/productinfo">
               <c:param name="productId" value="${addtocarts.product}"/>
           </c:url>
           <c:url var="productdelete" value="/product/addtocartdelete">
               <c:param name="productdele" value="${addtocarts.id}"/>
           </c:url>
           <div class="add-item">
               <a href="${productidlink}"><h1>${addtocarts.pname}</h1></a>
               <h3>৳-${addtocarts.aquantity*addtocarts.pprice}</h3>
               <form action="addtocartupdate" method="Post">
                   <div class="input">
                       <input type="hidden" name="a_id" value="${addtocarts.id}">
                       <input type="number" name="quantity" id="value" value="${addtocarts.aquantity}" min="1" >
                   </div>
                   <div class="btn-add">
                       <button style="background-color:rgb(240,48,106);"><i class="fa-solid fa-cart-plus"></i></i>update</button>
                      <button style="background-color:rgb(248,76,14);"><i class="fa-solid fa-cart-plus"></i></i> <a href="${productdelete}" style="color: white">Delete</a></button>
                   </div>
               </form>

           </div>
          <c:set var="price" value="${price + (addtocarts.pprice*addtocarts.aquantity)}"></c:set>
          <c:set var="quantity" value="${quantity+(addtocarts.aquantity)}"></c:set>
       </c:forEach>
    </div>
    <div class="total_all">
        <h1>Quantity - <span>${quantity}</span></h1>
        <h1>TOTAL PRICE-<span>${price} TK</span></h1>

        <h1>DELIVARY CHARGE- <span>50 TK</span></h1>
        <HR>
        <h1>Total - <span>${price+50} Tk</span></h1>

        <button>Place order</button>
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
