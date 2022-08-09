<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/8/2022
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower| Profilepage</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/profile.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
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

<div class="headered">
    <a href="${pageContext.request.contextPath}/User/home">Home</a> / Profile
</div>
<div class="profile">
    <div class="profile-img">
        <img src="${pageContext.request.contextPath}/resources/img/profilrimg.png">
    </div>
    <div id="profile-info">
        <form action="profile" method="Post" class="profile-form">



            <fieldset>
                <legend><p>Username</p></legend>
                <div class="input-file">
                    <input type="text" id="name" value="${userinfo.user.firstname} ${userinfo.user.lastname}" name="name" placeholder="username" readonly><br>
                </div>

            </fieldset>



            <fieldset>
                <legend><p>Address</p></legend>
                <div class="input-file">
                    <input type="text" id="address" value="${userinfo.user.address}" name="address" placeholder="Address"><br>
                </div>

            </fieldset>



            <fieldset>
                <legend><p>Email</p></legend>
                <div class="input-file">
                    <input type="text" id="U_email" value="${userinfo.user.email}" name="email" placeholder="Email"><br>
                </div>

            </fieldset>

            <fieldset>
                <legend><p>User Name</p></legend>
                <div class="input-file">
                    <input type="text" id="U_username" value="${userinfo.username}" name="U_username" placeholder="User Id" readonly><br>
                </div>

            </fieldset>

            <fieldset>
                <legend><p>Phone Number</p></legend>
                <div class="input-file">
                    <input type="text" id="U_phone" value="${userinfo.user.phomenumber}" name="phone" placeholder="Phone Number" readonly><br>
                </div>

            </fieldset>


            <input type="submit" name="submit" value="Save" class="btn">


        </form>
    </div>
</div>
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
