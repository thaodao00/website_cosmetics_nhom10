
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
    <link rel="stylesheet" href="template/web/assets/css/base.css">
    <link rel="stylesheet" href="template/web/assets/css/grid.css">
    <link rel="stylesheet" href="template/web/assets/css/main.css">
    <link rel="stylesheet" href="template/web/assets/css/responsive.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comforter+Brush&family=Estonia&family=Kaushan+Script&family=Marck+Script&family=Nothing+You+Could+Do&family=Patrick+Hand&family=Roboto&family=Satisfy&family=Sawarabi+Gothic&family=Tangerine:wght@700&display=swap" rel="stylesheet">
</head>

<body>
<div id="app">
    <!--Header: begin-->
    <header class="header">
        <div class="grid wide ">
            <div class="row navbar">
                <div class="col l-2 m-2 c-6">
                    <a href="index.html" style="text-decoration: none">
                        <h1 class="logo"about=""> Cosmetics</h1>
                    </a>
                </div>
                <div class="col l-8 m-8 c-0">
                    <ul class="navbar__list">
                        <li class="navbar__item">
                            <a href="./index.html" class="navbar__item-link">
                                HOME
                            </a>
                        </li>
                        <li class="navbar__item">
                            <a class="navbar__item-link" href="./products.html">
                                PRODUCTS
                            </a>
                        </li>
                        <li class="navbar__item">
                            <a class="navbar__item-link" href="./about.html">
                                ABOUT US
                            </a>
                        </li>
                        <li class="navbar__item">
                            <a class="navbar__item-link" href="./contact.html">
                                CONTACT US
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="header-icon col l-2 m-2 c-0">
                    <a class="search-link">
                        <i class="fas fa-search"></i>
                    </a>
                    <a href="./cart.html" class="cart-link">
                        <span class="cart-link-notice">3</span>
                        <i class="fa fa-cart-plus"></i>
                    </a>
                    <a class="login-link">
                        <i class="fa fa-user"></i>
                    </a>

                </div>
                <div class="nav-icon col l-0 m-0 c-6">
                    <label for="nav-mobile__label">
                        <i class="nav-link fas fa-bars"></i>
                    </label>
                    <input type="checkbox" hidden="" id="nav-mobile__label" class="navbar__check">
                    <div class="nav-mobile">
                        <label for="nav-mobile__label">
                            <i class="icon-exit far fa-times-circle"></i>
                        </label>
                        <ul class="nav-mobile__list">
                            <a href="./index.html" class="nav-mobile__link">
                                <li class="nav-mobile__item">
                                    Home
                                </li>
                            </a>
                            <a href="./products.html" class="nav-mobile__link">
                                <li class="nav-mobile__item">
                                    Products
                                </li>
                            </a>
                            <a href="./about.html"class="nav-mobile__link">
                                <li class="nav-mobile__item">
                                    About Us
                                </li>
                            </a>
                            <a href="./contact.html" class="nav-mobile__link">
                                <li class="nav-mobile__item">
                                    Contact Us
                                </li>
                            </a>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </header>
    <!--Header: end-->

    <!-- About Us -->
    <div class="about-us">
        <div class="about-us__header-wrapper">
            <div class="about-us__header">About Us</div>
        </div>
        <div class="about-us__info-wrapper">
            <div class="about-us__info">
                <a href="https://www.facebook.com/profile.php?id=100058632992547"><div class="about-us__info-img"></div></a>
                <div class="about-us__info-content">
                    <span class="about-us__info-name">Name: <span>Dao Thi Thu Thao</span></span>
                    <span class="about-us__info-date">Date: <span>28.12.2000</span></span>
                    <span class="about-us__info-description">Description: <span>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></span>
                </div>
            </div>

            <div class="about-us__info info--background-dark">
                <a href="https://www.facebook.com/yangheenlw/"><div class="about-us__info-img"></div></a>
                <div class="about-us__info-content white">
                    <span class="about-us__info-name">Name: <span>Nguyen Huu Kha</span></span>
                    <span class="about-us__info-date">Date: <span>16.12.2001</span></span>
                    <span class="about-us__info-description">Description: <span>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></span>
                </div>
            </div>

            <div class="about-us__info">
                <a href="https://www.facebook.com/1597532846m"><div class="about-us__info-img"></div></a>
                <div class="about-us__info-content">
                    <span class="about-us__info-name">Name: <span>Trieu Hue Man</span></span>
                    <span class="about-us__info-date">Date: <span>25.01.2001</span></span>
                    <span class="about-us__info-description">Description: <span>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></span>
                </div>
            </div>
        </div>
    </div>
    <!--Footer: begin-->
    <div class="footer">
        <div class="grid wide">
            <div class="row footer-content">
                <div class="col l-4 m-12 c-12">
                    <ul class="footer__contact">
                        <li class="footer__contact--title">
                            CONTACT
                        </li>
                        <a class="footer__contact-link" href="">
                            <li class="footer__contact-address">
                                Address: Ho Chi Minh City
                            </li>
                        </a>
                        <a class="footer__contact-link" href="">
                            <li class="footer__contact-email">
                                Email: @gmail.com
                            </li>
                        </a>
                        <a class="footer__contact-link" href="">
                            <li class="footer__contact-phone">
                                Phone: +0363275624
                            </li>
                        </a>
                        <img class="footer__contact-img" src="assets/img/footer-tab-1.png" alt="">

                    </ul>
                </div>
                <div class="col l-4 m-12 c-12">
                    <ul class="footer__follow">
                        <li class="footer__contact--title">
                            COSMETICS
                        </li>
                        <p class="footer__follow-text">
                            An oasis of online beauty built
                            <br>
                            specifically so your new cosmetics
                            <br>
                            site can take everyone’s breaths away.
                        </p>
                        <div class="footer__follow-icon">
                            <a href="" class="footer__follow-icon-link">
                                <i class="fab fa-internet-explorer"></i>
                            </a>
                            <a href="" class="footer__follow-icon-link">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a href="" class="footer__follow-icon-link">
                                <i class="fab fa-facebook-square"></i>
                            </a>
                            <a href="" class="footer__follow-icon-link">
                                <i class="fab fa-pinterest-square"></i>
                            </a>

                        </div>
                    </ul>
                </div>
                <div class="col l-4 m-12 c-12">
                    <ul class="footer__follow">
                        <li class="footer__contact--title">
                            COLLECTIONS
                        </li>
                        <p class="footer__follow-text">
                            Glowing skin is a result
                            <br>
                            ABCDEH Beauty – Forever Young
                            <br>
                            Pure Skin Solutions
                        </p>
                    </ul>
                </div>

            </div>

        </div>
        <div class="footer--bottom">
            <p class="footer-bottom__text">Copyright © Group 1 Nong Lam University</p>
        </div>


    </div>
    <!--Footer: end-->
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
<!--    modal-->
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
<script src="template/web/assets/js/showHide.js"></script>
<script></script>
</body>
</html>