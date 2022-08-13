<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/25/2022
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Flower| Homepage</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

    <script src="https://kit.fontawesome.com/c476ca993e.js" crossorigin="anonymous"></script>
</head>
<body>
<header style="background-color: rgb(182, 182, 182); height: 100vh; overflow:hidden ;">
    <div class="header">
        <div class="logo">
            <h3><i class="fa-solid fa-fan"></i> flower</h3>
        </div>
        <div class="navigation">
            <nav>
                <li><a href="">Home</a> </li>
                <li><a href="${pageContext.request.contextPath}/User/allprobuct">Product</a> </li>
                <li><a href="">Order info <i class="fa-solid fa-angle-down"></i>
                    <ul class="nav-dropdown">
                        <li><a href=""></a>All order </li>
                        <li><a href=""></a>Order Status </li>
                        <li><a href="${pageContext.request.contextPath}/product/addtocartlist">Cart item </a></li>
                        <li><a href=""></a>Return product </li>

                    </ul>
                </a>
                </li>
                <li><a href="">Blogs</a> </li>
                <li><a href="">Contact us</a> </li>
                <li><a href="">About us</a> </li>
                <li><a href=""><i class="fa-solid fa-bell"></i></a> </li>
                <li><a href="${pageContext.request.contextPath}/User/profile"><i class="fa-solid fa-user"></i> @${loggedInUser} </a></li>
                <button><a href="${pageContext.request.contextPath}/logout">Log Out</a></button>

            </nav>
        </div>
    </div>

    <section class="slider">
        <div class="heading_slider">
            <h1>Fresh <span class="style">FLOWERS</span> & Perfect <span class="style">GIFT</span> For Your <span class="style">
                LOVED</span> Ones </h1>
            <p>A flower, sometimes known as a bloom or blossom, is the reproductive
                structure found in flowering plants plants of the division Angiospermae.</p>

            <div class="middel_form_2">
                <h3>Find your Desired flower</h3>
                <form action="/index.html" method="post" >
                    <input type="text" name="" id="search-live" placeholder="Enter your Desired flower Name"><button>Find</button>
                </form>
              <div id="result-search" class="searchshow"></div>
            </div>
        </div>
        <img src="${pageContext.request.contextPath}/resources/img/hero.png">
    </section>



</header>
<main id="section-2">
    <section class="about_us">
        <div class="aboutu_details">
            <h2>ABOUT US</h2>
            <p>A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering
                plants (plants of the division Angiospermae). The biological function of a flower is to facilitate reproduction,
                usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing
                (fusion of sperm and eggs from different individuals in a population) resulting from
                cross-pollination or allow selfing (fusion of sperm and egg from the same flower) when self-pollination occurs.</p>
            <button>Read More</button>

        </div>
        <div class="about-img">
            <img src="${pageContext.request.contextPath}/resources/img/adout-us.png">
        </div>
    </section>

    <section class="our_product">
        <h1>Our Products</h1>
        <div class="all_product">
            <%! int i=0; %>
            <c:forEach var="product" items="${products}" begin="0" end="4">
                    <c:url var="productidlink" value="/product/productinfo">
                        <c:param name="productId" value="${product.id}"/>
                    </c:url>
                    <div class="item"><a href="${productidlink}">
                <div class="img">
                    <img src="${pageContext.request.contextPath}/resources/img/${product.pimg}">
                    <div class="icon">
                        <p><i class="fa-solid fa-heart" style="color: deeppink"></i><span style="font-size: 12px;"> 20</span></p>
                        <p><i class="fa-solid fa-star" style="color: goldenrod"></i><span style="font-size: 12px;"> 4.5</span></p>
                    </div>
                </div>
                <div class="iteam_heading">
                    <h3>${product.pname}</h3>
                    <h4 style="color: #3b3b3b">৳- ${product.pprice} <span style="text-decoration-line: line-through; color: rgba(231,23,23,0.95)">৳-${product.pprice+10}</span></h4>
                    <button style="color:rgb(243, 82, 99);"><i class="fa-solid fa-basket-shopping"></i> Buy Now</button>
                </div>
                    </a> </div>

</c:forEach>
            <div class="see-more">
                <a href="${pageContext.request.contextPath}/User/allprobuct">See more <i class="fa-solid fa-right-long"></i></a>
            </div>
        </div>
        <c:url var="SUMMERlink" value="/product/categoryproduct">
            <c:param name="category" value="Summer flower"/>
        </c:url>
        <c:url var="Weedinglink" value="/product/categoryproduct">
            <c:param name="category" value="Wedding flower"/>
        </c:url>
        <c:url var="GIFTlink" value="/product/categoryproduct">
            <c:param name="category" value="Gift flower"/>
        </c:url>

        <div class="catagory">
           <a href="${SUMMERlink}"> <div class="c-item" style="background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
                <div class="c-heading">
                    <h6>Upto 30% off</h6>
                    <h2>SUMMER</h2>
                    <P>Shop Now</P>
                </div>
                <img src="${pageContext.request.contextPath}/resources/img/summer.png">
            </div></a>
            <a href="${Weedinglink}"> <div class="c-item" style="background-image: linear-gradient(to right top, #e78c2f, #f4814d, #f97a69, #f77884, #ed7b9c, #e586bd, #d394d9, #baa3ee, #8fbdff, #58d6ff, #36eaff, #5ffbf1);">
                <div class="c-heading">
                    <h6>Weeding Collection</h6>
                    <h2>FLOWER</h2>
                    <P>Shop Now</P>
                </div>
                <img src="${pageContext.request.contextPath}/resources/img/wedding.png">
            </div></a>
            <a href="${GIFTlink}">  <div class="c-item" style="background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgb(97,157,224) 100%);">
                <div class="c-heading">
                    <h6>GIFT Collection</h6>
                    <h2>FLOWER</h2>
                    <P>Shop Now</P>
                </div>
                <img src="${pageContext.request.contextPath}/resources/img/gift.png">
            </div></a>
        </div>

    </section>
</main>
<div class="birth-day-gift">
<img src="${pageContext.request.contextPath}/resources/img/birthday.png">
    <div class="details">
        <h2>Beautiful Range of</h2>
        <h3>ColourFul Birthday Flower</h3>
        <button>View Collection</button>
    </div>
</div>
<main id="section-3">
    <h1>OUR BLOG</h1>
<div class="blog">
    <div class="blog-item">
        <img src="${pageContext.request.contextPath}/resources/img/blog-2.jpg">
        <div class="blog-details">
            <h2>BeautiFul Multiple Flower</h2>
            <p>Undoubtedly one of the most beautiful flowers in the world,
                tulips are bulbous showy blooms with six distinct petals.
                While yellow tulips symbolise cheerfulness, white ones mean forgiveness and the red ones stand for true love.
                The myriad colours make excellent floral arrangements. Tulips are the 11th wedding anniversary flowers.</p>
        </div>
    </div>
    <div class="blog-item">
        <img src="${pageContext.request.contextPath}/resources/img/blog-1.webp">
        <div class="blog-details">
            <h2>BeautiFul Bridal Flowers</h2>
            <p>Undoubtedly one of the most beautiful flowers in the world,
                tulips are bulbous showy blooms with six distinct petals.
                While yellow tulips symbolise cheerfulness, white ones mean forgiveness and the red ones stand for true love.
                The myriad colours make excellent floral arrangements. Tulips are the 11th wedding anniversary flowers.</p>
        </div>
    </div>
    <div class="blog-item">
        <img src="${pageContext.request.contextPath}/resources/img/blog-3.jpg">
        <div class="blog-details">
            <h2>Bridesmaid Shower Flower</h2>
            <p>Undoubtedly one of the most beautiful flowers in the world,
                tulips are bulbous showy blooms with six distinct petals.
                While yellow tulips symbolise cheerfulness, white ones mean forgiveness and the red ones stand for true love.
                The myriad colours make excellent floral arrangements. Tulips are the 11th wedding anniversary flowers.</p>
        </div>
    </div>
</div>



</main>
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

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
$("#search-live").on('keyup',function(){
$value=$(this).val();
if($value!="")
{

$.ajax({
url:"${pageContext.request.contextPath}/product/search",
type:"GET",
data:{'search':$value},
success:function(data)
{
$('#result-search').html(data);
}
});
}
else
{
$('#result-search').html('');
}

});

</script>
</body>
</html>
