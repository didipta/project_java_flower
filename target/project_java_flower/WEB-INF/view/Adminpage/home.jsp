<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/7/2022
  Time: 8:01 PM
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminpage.css" />
    <script src="https://kit.fontawesome.com/ec8ab4f226.js" crossorigin="anonymous"></script>


</head>

<body>
<section id="sidebar">
    <div class="sidebar-brand">
        <h2><i class="fa fa-fan"></i> <span>FLOWER-SHOP</span></h2>
    </div>
    <div class="sidebar-menu">
        <ul>
            <li><a href="#"><i class="fa fa-desktop"></i> <span>Dashboard</span></a></li>
            <li><a href="#"><i class="fa fa-chart-line"></i> <span>Statement</span></a></li>
            <li><a href="#"><i class="fa fa-users"></i> <span>Customers</span></a></li>
            <li><a href="#"><i class="fa fa-fan"></i> <span>Flowers</span></a></li>
            <li><a href="#"><i class="fa fa-file"></i> <span>Orders</span></a></li>
            <li><a href="#"><i class="fa fa-money"></i> <span>Income</span></a></li>
            <li><a href="#"><i class="fa fa-user"></i> <span>Account</span></a></li>
            <li><a href="#"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
        </ul>
    </div>
</section>

<Section id="main-content">
    <header>
        <div class="header-left">
            <h2 class="toggle-btn">
                <i class="fa fa-bars"></i> Dashboard
            </h2>
        </div>
        <div class="header-left header-serach">
            <div class="serach-par">
                <input class="search" type="text" placeholder="Search Here...">
                <i class="fa fa-search"></i>
            </div>
        </div>
        <div class="header-left header-profile">
            <img src="images/user.png" class="img-responsive" />
            <h3>Profile</h3>
            <p>Admin</p>
        </div>
        <div class="clear"></div>
    </header>
    <div class="clear"></div>
    <div class="main-content-info container">
        <div class="card">
            <h2 class="cus-num cus-h">150</h2>
            <p>Total Customers</p>
        </div>
        <div class="card">
            <h2 class="cus-num cus-pro">500</h2>
            <p>Total Flowers</p>
        </div>
        <div class="card">
            <h2 class="cus-num cus-ord">50</h2>
            <p>Orders</p>
        </div>
        <div class="card">
            <h2 class="cus-num cus-inc">20k</h2>
            <p>Total Income</p>
        </div>
        <div class="clear"></div>
    </div>
    <div class="content-pro-par container">
        <div class="pro-table">
            <div class="recent-project">
                <div class="rec-pro-h">
                    <h2>Recent Orders</h2>
                </div>
                <div class="see-all">
                    <button>See all</button>
                </div>
                <div class="clear"></div>
            </div>
            <table style="width:100%">
                <tr>
                    <th>Flower Name</th>
                    <th>Flower ID</th>
                    <th>Amount</th>
                    <th>Cost</th>
                    <th>Status</th>
                </tr>
                <tr>
                    <td>ROSE</td>
                    <td>05</td>
                    <td>02</td>
                    <td>60</td>
                    <td><span class="pending-span"></span>Pending</td>
                </tr>
                <tr>
                    <td>Lily</td>
                    <td>02</td>
                    <td>01</td>
                    <td>20</td>
                    <td><span class="progress-span"></span>In Progress</td>
                </tr>
                <tr>
                    <td>ROSE</td>
                    <td>05</td>
                    <td>01</td>
                    <td>30</td>
                    <td><span class="pending-span"></span> Pending</td>
                </tr>
                <tr>
                    <td>Zinia</td>
                    <td>03</td>
                    <td>03</td>
                    <td>300</td>
                    <td><span class="rev-span"></span>Review</td>
                </tr>
            </table>
        </div>
        <div class="pro-cus">
            <div class="recent-project">
                <div class="rec-pro-h">
                    <h2>All Employee</h2>
                </div>
                <div class="see-all">
                    <button>See all</button>
                </div>
                <div class="clear"></div>
            </div>
            <table style="width:100%">
                <tr>
                    <th>P. Pic</th>
                    <th>Name</th>
                    <th>Contact</th>
                </tr>
                <tr>
                    <td><img class="table-img" src="${pageContext.request.contextPath}/resources/img/profilrimg.png"></td>
                    <td>Dipta Saha</td>
                    <td class="cnt-info-td"><a href="tel:0176654836"><i class="fa fa-phone"></i></a><a href="#"><i class="fa fa-envelope"></i></a></td>
                </tr>
                <tr>
                    <td><img class="table-img" src="${pageContext.request.contextPath}/resources/img/profilrimg.png"></td>
                    <td>Chaity Gosh</td>
                    <td class="cnt-info-td"><a href="tel:0196635482"><i class="fa fa-phone"></i></a><a href="#"><i class="fa fa-envelope"></i></a></td>
                </tr>
                <tr>
                    <td><img class="table-img" src="${pageContext.request.contextPath}/resources/img/profilrimg.png"></td>
                    <td>Shadik Hasan</td>
                    <td class="cnt-info-td"><a href="tel:01799404026"><i class="fa fa-phone"></i></a><a href="#"><i class="fa fa-envelope"></i></a></td>
                </tr>

            </table>
        </div>
        <div class="clear"></div>
    </div>
</Section>
<div class="clear"></div>

</body>

</html>

