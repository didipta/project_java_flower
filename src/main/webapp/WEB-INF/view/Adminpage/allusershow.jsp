<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/17/2022
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <title>Admin Dashboard</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-witdh, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admitproduct.css" />
    <script src="https://kit.fontawesome.com/ec8ab4f226.js" crossorigin="anonymous"></script>


</head>

<body>
<section id="sidebar">
    <div class="sidebar-brand">
        <h2><i class="fa fa-fan"></i> <span>FLOWER-SHOP</span></h2>
    </div>
    <div class="sidebar-menu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/one"><i class="fa fa-desktop"></i> <span>Dashboard</span></a></li>
            <li><a href="#"><i class="fa fa-chart-line"></i> <span>Statement</span></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/allusershow"><i class="fa fa-users"></i> <span>Customers</span></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/productlist"><i class="fa fa-fan"></i> <span>Flowers</span></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/orderlist"><i class="fa fa-file"></i> <span>Orders</span></a></li>
            <li><a href="#"><i class="fa fa-money"></i> <span>Income</span></a></li>
            <li><a href="#"><i class="fa fa-user"></i> <span>Account</span></a></li>
            <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
        </ul>
    </div>
</section>

<Section id="main-content">

    <div class="clear"></div>
    <div class="main-content-info container">
        <div class="card">
            <h2 class="cus-num cus-ord">${alluser.size()}</h2>
            <p>Total User</p>
        </div>

        <div class="clear"></div>
        <div class="content-pro-par container">
            <div class="pro-table">
                <div class="recent-project">
                    <div class="rec-pro-h">
                        <h2>All users</h2>
                    </div>

                    <div class="clear"></div>
                </div>
                <table style="width:100%">
                    <tr>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Total order</th>
                    </tr>
                    <c:forEach var="allusers" items="${alluser}">
                        <tr>
                            <td style="color: deeppink;font-weight: bolder">${allusers.user.firstname} ${allusers.user.lastname}</td>
                            <td style="font-size: 0.8rem;">${allusers.user.address}</td>
                            <td>${allusers.user.phomenumber}</td>
                            <td>${allusers.user.email}</td>
                            <td>${allusers.username}</td>
                            <td style="font-weight: bolder">${allusers.ordersList.size()}</td>
                        </tr>
                    </c:forEach>
                </table>


            </div>
        </div>
    </div>
</Section>
<div class="clear"></div>

</body>

</html>