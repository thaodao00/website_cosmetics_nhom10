<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="productsHot" scope="request" type="java.util.List"/>
<jsp:useBean id="productsNew" scope="request" type="java.util.List"/>
<jsp:useBean id="productsSale" scope="request" type="java.util.List"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>

<body>
<!--Slider: begin-->
<!-- Slideshow container -->
<div class="slideshow-container">
    <!-- Full-width images with number and caption text -->
    <div class="mySlides fade">
        <img src="template/web/assets/img/slider-3.jpg" style="width:100%">
    </div>
    <div class="mySlides fade">
        <img src="template/web/assets/img/slider-2.jpg" style="width:100%">
    </div>

    <div class="mySlides fade">
        <img src="template/web/assets/img/slider-1.jpg" style="width:100%">
    </div>
</div>
<br>
<!-- The dots/circles -->
<div style="text-align:center">
    <span class="dot"></span>
    <span class="dot"></span>
    <span class="dot"></span>
</div>
<!--Slider: end-->

<!--Content: begin-->
<div class="content">
    <!-- Featured Items: begin-->
    <div id="featured-items">
        <h1 class="content__title">
            FEATURED PRODUCT
        </h1>
        <div class="grid wide">
            <div class="row products">
                <c:forEach var="i" items="${productsHot}">
                    <a href="#" class="col l-2-4 m-3 c-6">
                        <div class="product__item">
                            <img class="product__item-img"
                                 src="${i.thumbnailImg}">
                            <h3 class="product__item-name">
                                    ${i.name}
                            </h3>
                            <div class="product__item-price-wrapper">
                                <h3 class="product__item-price product__item-price--old">
                                        ${i.price}
                                </h3>
                                <h3 class="product__item-price">
                                        ${i.discount}
                                </h3>
                            </div>
                            <div class="star-link-sold-wrapper">
                                <div class="star-link">
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                                <div class="product__sold-number">${i.sold} sold</div>
                            </div>
                            <div class="product__item-company-wrapper">
                                <span class="product__item-company">${i.companyName}</span>
                                <span class="product__item-origin-name">${i.originName}</span>
                            </div>
                            <div class="product__item--describe">
                                <i class="fas fa-check"></i>
                                <span>${i.tagName}</span>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
        <br>
    </div>
    <!-- Featured Items: end-->
    <div class="row sile-content">
        <div class="l-6 m-6 c-12 slide-content__main">
            <img class="slide-content__img" src="template/web/assets/img/slide-f-11.jpg" alt="" srcset="">
            <div class="slide-content__text">
                <h3 style="padding-top: 50%">MAKE UP IS AN ART FORM</h3>
                <p>Honoring natural beauty.</p>
            </div>
        </div>
        <div class="l-6 m-6 c-12 ">
            <div class="row slide-content__main">
                <img class="slide-content__img" src="template/web/assets/img/m-h-port-gallery-6.jpg" alt="" srcset="">
                <div class="slide-content__text">
                    <h3>MAKE UP IS AN ART FORM</h3>
                    <p>It gives you confidence and shine.</p>
                </div>
            </div>
            <div class="row slide-content__main">
                <img class="slide-content__img" src="template/web/assets/img/slide-f-3.jpg" alt="" srcset="">
                <div class="slide-content__text">
                    <h3>MAKE UP IS AN ART FORM</h3>
                    <p>Spread your own beauty with your hands.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- New Items: begin-->
    <div id="new-items">
        <h1 class="content__title">
            NEW PRODUCT
        </h1>
        <div class="grid wide">
            <div class="row products">
                <c:forEach var="i" items="${productsNew}">
                    <a href="#" class="col l-2-4 m-3 c-6">
                        <div class="product__item">
                            <img class="product__item-img"
                                 src="${i.thumbnailImg}">
                            <h3 class="product__item-name">
                                    ${i.name}
                            </h3>
                            <div class="product__item-price-wrapper">
                                <h3 class="product__item-price product__item-price--old">
                                        ${i.price}
                                </h3>
                                <h3 class="product__item-price">
                                        ${i.discount}
                                </h3>
                            </div>
                            <div class="star-link-sold-wrapper">
                                <div class="star-link">
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                </div>
                                <div class="product__sold-number">${i.sold} sold</div>
                            </div>
                            <div class="product__item-company-wrapper">
                                <span class="product__item-company">${i.companyName}</span>
                                <span class="product__item-origin-name">${i.originName}</span>
                            </div>
                            <div class="product__item--describe">
                                <i class="fas fa-check"></i>
                                <span>${i.tagName}</span>
                            </div>
                        </div>
                    </a>
                </c:forEach>

            </div>
        </div>
        <br>
    </div>
    <!-- New Items: end-->
    <!-- Discount Items: begin-->
    <div id="discount-items">
        <h1 class="content__title">
            SALE OFF 25%
        </h1>
        <div class="grid wide">
            <div class="row products">
                <div class="col l-4">
                    <!--Slider: begin-->
                    <div class="products-slidesshow">
                        <div class="mySlider fadeSlider">
                            <img class="mySlider-img" src="template/web/assets/img/slide/s1.webp"
                                 style="width: 100%;margin-bottom: 15px;">
                        </div>
                        <div class="mySlider fadeSlider">
                            <img class="mySlider-img" src="template/web/assets/img/slide/s2.webp"
                                 style="width: 100%;margin-bottom: 15px;">
                        </div>
                        <div class="mySlider fadeSlider">
                            <img class="mySlider-img" src="template/web/assets/img/slide/s3.webp"
                                 style="width: 100%;margin-bottom: 15px;">
                        </div>
                        <a class="prev" onclick="plusSlider(-1)" style="color: brown">
                            <i class="fas fa-arrow-circle-left"></i>
                        </a>
                        <a class="next" onclick="plusSlider(1)" style="color: brown">
                            <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                    <div style="text-align: center;margin-bottom: 10px">
    <span class="dotSlider" onclick="currentSlider(1)">
    </span>
                        <span class="dotSlider" onclick="currentSlider(2)">

    </span>
                        <span class="dotSlider" onclick="currentSlider(3)">

    </span>
                    </div>
                    <script>
                        var index = 0;
                        showSliders(index)

                        function plusSlider(n) {
                            showSliders(index += n);
                        }

                        function currentSlider(n) {
                            showSliders(index = n)
                        }

                        function showSliders(n) {
                            var i;
                            var slider = document.getElementsByClassName("mySlider");
                            var dotSlider = document.getElementsByClassName("dotSlider");
                            if (n > slider.length) {
                                index = 1
                            }
                            if (n < 1) {
                                index = slider.length;
                            }
                            for (i = 0; i < slider.length; i++) {
                                slider[i].style.display = "none";
                            }
                            for (i = 0; i < dotSlider.length; i++) {
                                dotSlider[i].className = dotSlider[i].className.replace(" active", "");

                            }
                            slider[index - 1].style.display = "block";
                            dotSlider[index - 1].className += " active";
                        }
                    </script>
                    <!--Slider: end-->
                </div>
                <div class="col l-8">
                    <div class="row">
                        <c:forEach var="i" items="${productsSale}">
                            <a href="#" class="col l-3 m-3 c-6">
                                <div class="product__item">
                                    <img class="product__item-img"
                                         src="${i.thumbnailImg}">
                                    <h3 class="product__item-name">
                                            ${i.name}
                                    </h3>
                                    <div class="product__item-price-wrapper">
                                        <h3 class="product__item-price product__item-price--old">
                                            $${i.price}
                                        </h3>
                                        <h3 class="product__item-price">
                                            $${i.discount}
                                        </h3>
                                    </div>
                                    <div class="star-link-sold-wrapper">
                                        <div class="star-link">
                                            <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                            <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                            <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                            <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                        <div class="product__sold-number">${i.sold} sold</div>
                                    </div>
                                    <div class="product__item-company-wrapper">
                                        <span class="product__item-company">${i.companyName}</span>
                                        <span class="product__item-origin-name">${i.originName}</span>
                                    </div>
                                    <div class="product__item--describe">
                                        <i class="fas fa-check"></i>
                                        <span>${i.tagName}</span>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <!-- Discount Items: end-->

</div>
<!--Content: end-->
<!--Overview: begin-->
<div class="overview">
    <div class="grid wide">
        <h3 class="overview__title">
            COSMETICS STORE ONLINE - COSMETICSMP
        </h3>
        <p class="overview__content">
            We started this online cosmetics store cosmeticsmp.co.uk due to the increasing demand for cosmetics
            that are difficult to find in drug stores and due to the price requirements of customers. Thanks to
            our offer, all your favourite makeup and care products from well-known, reputable brands are at your
            fingertips at an affordable price. We invite you to familiarize yourself with the store's offer.
        </p>
        <h3 class="overview__title">
            New | Favourite | Affordable | Outlet
        </h3>
        <p class="overview__content">
            Responding to the needs of customers, our cosmetics store is constantly expanding its range and
            introducing new products. Shop in various categories: makeup base, eyes and eyebrows, lips, bath and
            body, skin care, and many more.
        </p>
        <h3 class="overview__title">
            The best cosmetics at low prices
        </h3>
        <p class="overview__content">
            The prices of the products we offer are really competitive. Check how much we offer great eye
            shadows, perfect face creams or effective face masks. See for yourself that products from brands
            such as Revlon, L'oreal, Max Factor or Bourjois can cost really little.
        </p>
        <h3 class="overview__title">
            Convenient shopping, and when you spend £25 free shipping
        </h3>
        <p class="overview__content">
            Get free shipping on orders over £25. Find out that an online cosmetics store is a great way to buy
            products that emphasize your beauty and improve the quality of life. Check out the great and cheap
            makeup products in our store's offer.
        </p>
    </div>
</div>
<!--Overview: end-->


<!--Search mobile-->
<div class="search-mobile">
    <div class="search-mobile__input">
        <input class="search-mobile__input-text" placeholder="Search...">
        <i class="icon-search fas fa-search"></i>
    </div>

    <a href="./cart.html" class="cart-link">
        <i class="fa fa-cart-plus"></i>
    </a>
    <a class="login-link " style="padding-right: 10px">
        <i class="fa fa-user"></i>
    </a>

</div>


<!-- Back to top -->
<div id="back-to-top" class="back-to-top" title="Back to top">
    <i class="fas fa-arrow-up"></i>
</div>

<!-- Popup -->
<%--<div class="popup-wrapper">--%>
<%--    <div class="popup-overlay"></div>--%>
<%--    <div class="popup stay-in-touch">--%>
<%--        <div class="close-wrapper">--%>
<%--            <a href="javascript:void(0)" class="close-js">--%>
<%--                <i class="fas fa-times close-icon"></i>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="stay-in-touch__title">--%>
<%--            <h2>Stay in touch</h2>--%>
<%--        </div>--%>
<%--        <div class="stay-in-touch__form">--%>
<%--            <input type="text" placeholder="E-mail address">--%>
<%--            <button class="buttons">Send</button>--%>
<%--        </div>--%>
<%--        <div class="stay-in-touch__form-description">--%>
<%--            <p>*At vero eos et accusamus et iusto odio dignissimos</p>--%>
<%--        </div>--%>
<%--        <div class="stay-in-touch__prevent">--%>
<%--            <input type="checkbox" value="1" id="input-checkbox-prevent">--%>
<%--            <label for="input-checkbox-prevent">--%>
<%--                <p>Prevent This Pop-up</p>--%>
<%--            </label>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<!--Js slide-->
<script>
    var slideIndex = 0
    showSlides()

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>


</body>

</html>
