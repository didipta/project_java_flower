<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/18/2022
  Time: 1:29 PM
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
            <li><a href="index.html"><i class="fa fa-desktop"></i> <span>Dashboard</span></a></li>
            <li><a href="#"><i class="fa fa-chart-line"></i> <span>Statement</span></a></li>
            <li><a href="Employee.html"><i class="fa fa-users"></i> <span>Employee</span></a></li>
            <li><a href="Flower.html"><i class="fa fa-fan"></i> <span>Flowers</span></a></li>
            <li><a href="OrderList.html"><i class="fa fa-file"></i> <span>Orders</span></a></li>
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
                <i class="fa fa-bars"></i> Add Flower
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


    <div class="container">
        <div class="content">
            <div class="content-3">
                <h1>Add A New Flower</h1>

                <form action="" method="POST">

                    <label>FLOWER NAME</label></br>
                    <input type="text" name="p_name" id="p_name"></br>

                    <label>PRICE</label></br>
                    <input type="text" name="p_price" id="p_price"></br>

                    <label>DESCRIPTION</label></br>
                    <input type="text" name="p_description" id="p_description"></br>

                    <label>QUANTITY</label></br>
                    <input type="text" name="p_quantity" id="p_quantity"></br>

                    <label>CATEGORY</label></br>
                    <select name="Category">
                        <option value=" ">-------</option>
                        <option value="Summer flower">Summer flower</option>
                        <option value="Wedding flower">Wedding flower</option>
                        <option value="Gift flower">Gift flower</option>
                        <option value="Birthday flower">Birthday flower</option>
                    </select>


                    <label>IMAGE</label></br>
                    <input type="file" name="p_img" id="p_img"></br>


                    <button>ADD</button>
                </form>


            </div>
        </div>
    </div>



</Section>
</body>
</html>
