<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/17/2022
  Time: 3:42 PM
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
    <header>
        <div class="header-left" style="padding-left: 10px">
            <h2 class="toggle-btn">
                <i class="fa fa-bars"></i> Flower
            </h2>
        </div>
        <div class="header-left header-serach">
            <div class="serach-par">
                <input class="search" type="text" placeholder="Search Here...">
                <i class="fa fa-search"></i>
            </div>
        </div>
        <div class="header-left header-profile">
            <img src="${pageContext.request.contextPath}/resources/img/profilrimg.png" style="padding-left: -10px" class="img-responsive" />
            <h3>@${loggedInUser}</h3>
            <p>Admin</p>
        </div>
        <div class="clear"></div>
    </header>
    <div class="clear"></div>

    <div class="main-content-info container">
        <div class="card">
            <h2 class="cus-num cus-pro">${product.size()}</h2>
            <p>Total Flower</p>
        </div>
        <div class="clear"></div>

        <div class="content-pro-par container">
            <div class="pro-table">
                <div class="recent-project">
                    <div class="rec-pro-h">
                        <h2>Flower List</h2>
                    </div>
                    <div class="see-all">
                        <a href="productaddshow"><button>ADD</button></a>
                    </div>
                    <div class="clear"></div>
                </div>
                <table style="width:100%">
                    <tr>
                        <th>Flower Name</th>
                        <th>Price</th>
                        <th>Description</th>
                        <th>Images</th>
                        <th>Catagory</th>
                        <th>Quantity</th>
                        <th>Rating(/5)</th>
                        <th>Comment</th>
                    </tr>

                    <c:forEach var="produts" items="${product}">
                        <c:set var="ratings" value="${0}"></c:set>
                        <c:set var="i" value="${0}"></c:set>
                        <c:forEach var="rating" items="${produts.productsratingList}">
                            <c:set var="ratings" value="${ratings+rating.rating}"></c:set>
                            <c:set var="i" value="${i+1}"></c:set>
                        </c:forEach>
                        <tr>
                            <td>${produts.pname}</td>
                            <td>${produts.pprice}</td>
                            <td style=" width: 500px">${produts.pdescription}</td>
                            <td><img class="table-img" src="${pageContext.request.contextPath}/resources/img/${produts.pimg}"/></td>
                            <td>${produts.category}</td>
                            <td>${produts.pquantity}</td>
                            <td><i class="fa fa-star" style="color: #ef306a"></i><c:if test="${ratings==0}">
                                <span style="font-weight: bolder">(0)</span>
                            </c:if>
                                <c:if test="${ratings>1}">
                                    <span style="font-weight: bolder">(${ratings/i})</span>
                                </c:if></td>
                            <td><button>See</button></td>
                        </tr>
                    </c:forEach>


                </table>
            </div>
        </div>
</Section>
<div class="clear"></div>

</body>

</html>
