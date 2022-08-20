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
            <h2 class="cus-num cus-ord">${orders.size()}</h2>
            <p>Total Orders</p>
        </div>

        <div class="clear"></div>
        <div class="content-pro-par container">
            <div class="pro-table">
                <div class="recent-project">
                    <div class="rec-pro-h">
                        <h2>Orders</h2>
                    </div>

                    <div class="clear"></div>
                </div>
                <table style="width:100%">
                    <tr>
                        <th>Order Id</th>
                        <th>Customer</th>
                        <th>Quantity</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>


                    <c:forEach var="order" items="${orders}">
                        <c:url var="orderidlink" value="/product/productinfo">
                            <c:param name="orderid" value="${order.id}"/>
                        </c:url>
                        <tr>
                            <td style="font-weight: bold">${order.token}</td>
                            <td>${order.username}</td>
                            <td>${order.quantity}</td>
                            <td>${order.totalprice}</td>
                            <td><c:if test="${order.status=='Delivered'}"><span class="rev-span"></span></c:if>
                                <c:if test="${order.status!='Delivered'}"><span class="progress-span"></span></c:if>${order.status}</td>

                            <td style="display: flex">
                                <c:if test="${order.status!='Delivered'}">
                                    <form action="orderstatus" method="post">
                                        <input type="hidden" name="order_id" value="${order.id}">
                                        <select name="status">
                                            <option value="${order.status}">${order.status}</option>
                                            <option value="order is on the way">order is on the way</option>
                                            <option value="Delivered">Delivered</option>
                                        </select>
                                        <button style="width: 80px">change</button>
                                    </form>
                                </c:if>
                                <c:if test="${order.status=='Delivered'}">
                                    <p style="color: deeppink;font-weight: bolder;font-size: 0.8rem">This order all readly delivered</p>
                                </c:if>

                            </td>
                        </tr>

                                <tr style="background-color: #85a4d5; text-align: center;">
                                    <th>product name</th>
                                    <th>Quantity</th>
                                    <th>Amount</th>
                                    <th>Status</th>
                                </tr>
                                <c:forEach var="orderdetails" items="${order.orderdetailsList}">
                                    <tr >
                                        <td>${orderdetails.productid.pname}</td>
                                        <td>${orderdetails.quantity}</td>
                                        <td>${orderdetails.price}</td>
                                        <td>${orderdetails.status}</td>
                                    </tr>
                                </c:forEach>


                    </c:forEach>
                </table>


            </div>
        </div>
    </div>
</Section>
<div class="clear"></div>

</body>

</html>