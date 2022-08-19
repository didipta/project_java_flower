<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/productadd.css" />
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
            <li><a href="#"><i class="fa fa-users"></i> <span>Customers</span></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/productlist"><i class="fa fa-fan"></i> <span>Flowers</span></a></li>
            <li><a href="${pageContext.request.contextPath}/admin/orderlist><i class="fa fa-file"></i> <span>Orders</span></a></li>
            <li><a href="#"><i class="fa fa-money"></i> <span>Income</span></a></li>
            <li><a href="#"><i class="fa fa-user"></i> <span>Account</span></a></li>
            <li><a href="${pageContext.request.contextPath}/logout"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
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

        <div class="clear"></div>
    </header>
    <div class="clear"></div>


    <div class="container">
        <div class="content">
            <div class="content-3">
                <h1>Add A New Flower</h1>

                <c:form action="productaddd" modelAttribute="product">



                    <label>FLOWER NAME</label></br>
                    <form:input path="pname"></form:input></br>

                    <label>PRICE</label></br>
                    <form:input path="pprice"></form:input> </br>

                    <label>DESCRIPTION</label></br>
                    <form:input path="pdescription"></form:input> </br>

                    <label>QUANTITY</label></br>
                    <form:input path="pquantity"></form:input> </br>

                    <label>CATEGORY</label></br>
                    <form:select path="category">
                        <option value=" ">-------</option>
                        <option value="Summer flower">Summer flower</option>
                        <option value="Wedding flower">Wedding flower</option>
                        <option value="Gift flower">Gift flower</option>
                        <option value="Birthday flower">Birthday flower</option>
                    </form:select><br>


                    <label>IMAGE</label></br>
                    <input type="file" name="pimg">
                        </br>


                    <button>ADD</button>
                </c:form>


            </div>
        </div>
    </div>



</Section>
</body>
</html>
