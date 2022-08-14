<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/14/2022
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower|order list</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/orderpage.css">
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
    <h1>Order List</h1>
</header>
<div class="order_list">
    <c:forEach var="orderlist" items="${orderlists}">
        <div class="order_item">
            <div class="order_info">
                <div>
                <li style="font-weight: bolder;font-size: 1.4rem; margin: 10px;color:rgb(243, 82, 99);">${orderlist.token}</li>
                <li style="font-weight: bolder;font-size: 1.1rem; margin: 10px;color:rgb(101,101,101);">Total price- ${orderlist.totalprice}</li>
                <li style="font-weight: bolder;font-size: 1.1rem; margin: 10px;color:rgb(101,101,101);">Total quantity- ${orderlist.quantity}</li>
                </div>
                <div>
                <li style="font-weight: bolder;font-size: 1.2rem; margin: 10px;color:rgb(105,52,243);">${orderlist.status}</li>
                    <c:if test="${orderlist.status=='Delivered'}">
                        <button class="return" style="background-color: #27d281">Return</button>
                    </c:if>
                </div>
            </div>
            <div class="order_details">
                <c:forEach var="detailes" items="${orderlist.orderdetailsList}">
              <div class="order_info_li">
                <li><img src="${pageContext.request.contextPath}/resources/img/${detailes.productid.pimg}"></li>
                <li style="font-weight: 900">${detailes.productid.pname}</li>
                <li >price-${detailes.price}</li>
                <li >quantity-${detailes.quantity}</li>
                  <c:if test="${orderlist.status=='Delivered'}">

                      
                  </c:if>
                  <c:if test="${orderlist.status!='Delivered'}">
                      <li style="color: #0a58ca">${detailes.status}</li>
                  </c:if>

              </div>
                </c:forEach>
            </div>
        </div>

    </c:forEach>
</div>


</body>
</html>
