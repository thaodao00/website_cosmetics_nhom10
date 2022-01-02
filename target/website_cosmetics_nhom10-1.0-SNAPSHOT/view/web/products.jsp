<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding ("UTF-8");
    response.setCharacterEncoding ("UTF-8");
%>
<jsp:useBean id="products" scope="request" type="java.util.List"/>
<jsp:useBean id="category" scope="request" type="java.util.List"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <title>Products</title>
</head>
<body>

    <!--Content: begin-->
    <div class="content-products">
        <div class="grid wide">
            <div class="row">
                <div class="col l-2 m-2 c-0">
                    <div class="product__items">
                        <h3 class="product_item-title">
                            CATEGORIES
                        </h3>
                        <ul class="product__items-list">
                            <c:forEach var="i" items="${category}">
                            <a href="" class="product__item-link">
<%--                                <li class="product__items-item active-btn">${i.title}</li>--%>
                                <li class="product__items-item">${i.title}</li>

                            </a>

                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="col l-10 m-10 c-12">
                    <div class="home-filter hide-on-mobile-tablet">
                        <span class="home-filter__lable">Sort by</span>
                        <button class="home-filter__btn btn">Common</button>
                        <button class="home-filter__btn btn btn--primary">New</button>
                        <div class="select-input">
                            <span class="select-input__lable">Price</span>
                            <i class="select-input__icon fas fa-angle-down "></i>
                            <ul class="select-input__list">
                                <li class="select-input__item">
                                    <a href="" class="select-input__link">Lowest first</a>
                                </li>
                                <li class="select-input__item">
                                    <a href="" class="select-input__link">Highest first</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <nav class="mobile-category">
                        <ul class="mobile-category__list">
                            <c:forEach var="i" items="${category}">
                            <li class="mobile-category__item">
<%--                                <a href="" class="mobile-category__link active-border">${i.title}</a>--%>
                                <a href="" class="mobile-category__link">${i.title}</a>

                            </li>
                            </c:forEach>
                        </ul>
                    </nav>
                    <br>
                    <div class="row products">
                        <c:forEach var="i" items="${products}">
                        <a href="./product.html" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="${i.thumnailImg}">
                                <h5 class="product__item-name">
                                    ${i.name}
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                            ${i.discount}
                                    </h3>
                                    <h3 class="product__item-price">
                                            $${i.price}
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
                                    <div class="product__sold-number"> ${i.sold} sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>


                            </div>
                        </a>
                        </c:forEach>
                    </div>
                    <button class="buttons" style="margin: 20px auto; display: block">
                        LOAD MORE
                    </button>
                </div>
            </div>
        </div>

    </div>

    <!--Search mobile-->
    <div class="search-mobile">
        <div class="search-mobile__input">
            <input class="search-mobile__input-text" placeholder="Search..." >
            <i class="icon-search fas fa-search"></i>
        </div>

        <a href="cart.html" class="cart-link">
            <i class="fa fa-cart-plus"></i>
        </a>
        <a class="login-link " style="padding-right: 10px">
            <i class="fa fa-user"></i>
        </a>
    </div>
</div>

<!--    modal  search -->
<div class="modal">
    <div class="modal__icon-close">
        <i class="fa fa-times" aria-hidden="true"></i>
    </div>
    <input type="text" class="modal__input" placeholder="Search...">
    <!-- Search history -->
    <div class="modal__history">
        <h3 class="modal__history-history-heading">Search history</h3>
        <ul class="modal__history-history-list">
            <li class="modal__history-item">
                <a href="">Body mist</a>
            </li>
            <li class="modal__history-item">
                <a href="">Innisfee green tea</a>
            </li>
        </ul>
    </div>
</div>
<!--modal account-->
<div class="modal-account">
    <div class="modal__overlay"></div>
    <div class="modal__body">
        <!--Register form -->
        <div class="register-form">
            <div class="auth-form">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3 class="auth-form__heading">Register</h3>
                        <span class="login-from__btn auth-form__switch-btn">Login</span>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input type="mail" class="auth-form__input" placeholder="User name">
                        </div>
                        <div class="auth-form__group">
                            <input type="mail" class="auth-form__input" placeholder="Email">
                        </div>
                        <div class="auth-form__group">
                            <input type="password" class="auth-form__input" placeholder="Password">
                        </div>
                        <div class="auth-form__group">
                            <input type="password" class="auth-form__input" placeholder="Confirm password">
                        </div>

                    </div>
                    <div class="auth-form__aside">
                        <p class="auth-form__policy-text">
                            By registering, you agree with Cosmetics
                            <a href="" class="auth-form__text-link">
                                Terms of service
                            </a>&
                            <a href="" class="auth-form__text-link">
                                Privacy policy
                            </a>
                        </p>
                    </div>
                    <div class="auth-form__controls">
                        <button class="btn buttons auth-form__controls-back ">
                            BACK
                        </button>
                        <button class="buttons">
                            REGISTER
                        </button>
                    </div>
                </div>
                <div class="auth-form_socials">
                    <a href="" class="auth-form_socials--face btn  btn--size-s btn--width-icon">
                        <i class="auth-form_socials-icon fab fa-facebook-square"></i>
                        <span class="auth-form__social-title">
                                Connect to Facebook</span>
                    </a>
                    <a href=""
                       class="auth-form_socials-icon auth-form_socials--google btn btn--size-s btn--width-icon">
                        <i class="icon-gg fab fa-google-plus-square"></i>
                        <span class="auth-form__social-title">
                                Connect to Google</span>
                    </a>
                </div>
            </div>
        </div>
        <!--Login form -->
        <div class="login-form">
            <div class="auth-form">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3 class="auth-form__heading">Login</h3>
                        <span class="register-from__btn auth-form__switch-btn">Register</span>

                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input id="mail" type="email" class="auth-form__input" placeholder="User name">
                        </div>
                        <div class="auth-form__group">
                            <input id="password" type="password" class="auth-form__input" placeholder="Password">
                        </div>


                    </div>
                    <div class="auth-form__aside">
                        <div class="auth-form__help">
                                <span href="" class="auth-form__help-link auth-form__help-link--forgot">Forgot
                                    password</span>
                            <span class="auth-form__help-separate"></span>
                            <a href="" class="auth-form__help-link">Help?</a>
                        </div>
                    </div>
                    <div class="auth-form__controls">
                        <button class="btn buttons auth-form__controls-back ">
                            BACK
                        </button>
                        <a><input id="submit" type="submit" class="buttons" name="Login"> </a>

                    </div>
                </div>
                <div class="auth-form_socials">
                    <a href="" class="auth-form_socials--face btn  btn--size-s btn--width-icon">
                        <i class="auth-form_socials-icon fab fa-facebook-square"></i>
                        <span class="auth-form__social-title">
                                Kết nối với Facebook</span>
                    </a>
                    <a href=""
                       class="auth-form_socials-icon auth-form_socials--google btn btn--size-s btn--width-icon">
                        <i class="icon-gg fab fa-google-plus-square"></i>
                        <span class="auth-form__social-title">
                                Kết nối với Google</span>
                    </a>
                </div>
            </div>
        </div>
        <!--Forgot password-->
        <div class="forgot-pass-form">
            <div class="auth-form">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3 class="auth-form__heading">Forgot password</h3>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input type="mail" class="auth-form__input" placeholder="Email">
                        </div>
                    </div>
                    <div class="auth-form__controls">
                        <button class="btn buttons auth-form__controls-back ">
                            BACK
                        </button>
                        <button class="buttons">
                            SEND
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
