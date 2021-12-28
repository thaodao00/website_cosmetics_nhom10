
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
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
        <ul class="header__sort-bar">
            <li class="header__sort-item">
                <a href="" class="header__sort-link">Common</a>
            </li>
            <li class="header__sort-item header__sort-item--active">
                <a href="" class="header__sort-link">New</a>
            </li>
            <li class="header__sort-item">
                <a href="" class="header__sort-link">Lowest first</a>
            </li>
            <li class="header__sort-item">
                <a href="" class="header__sort-link">Highest first</a>
            </li>
        </ul>
    </header>
    <!--Header: end-->

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
                            <a href="" class="product__item-link">
                                <li class="product__items-item active-btn">The Ordinary</li>
                            </a>
                            <a href="" class="product__item-link">
                                <li class="product__items-item">Body Oil</li>
                            </a>
                            <a href="" class="product__item-link">
                                <li class="product__items-item">Face Masks</li>
                            </a>
                            <a href="" class="product__item-link">
                                <li class="product__items-item">Make Up</li>
                            </a>
                            <a href="" class="product__item-link">
                                <li class="product__items-item">Hari care</li>
                            </a>
                            <a href="" class="product__item-link">
                                <li class="product__items-item">Skincare</li>
                            </a>
                            <a href="" class="product__item-link">
                                <li class="product__items-item">Tool</li>
                            </a>
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
                            <li class="mobile-category__item">
                                <a href="" class="mobile-category__link active-border">The Ordinary</a></a>
                            </li>
                            <li class="mobile-category__item">
                                <a href="" class="mobile-category__link">Body Oil</a></a>
                            </li>
                            <li class="mobile-category__item">
                                <a href="" class="mobile-category__link">Face Masks</a></a>
                            </li>
                            <li class="mobile-category__item">
                                <a href="" class="mobile-category__link">Make Up</a></a>
                            </li>
                            <li class="mobile-category__item">
                                <a href="" class="mobile-category__link">Hair Care</a></a>
                            </li> <li class="mobile-category__item">
                            <a href="" class="mobile-category__link">Skincare</a></a>
                        </li>
                            </li> <li class="mobile-category__item">
                            <a href="" class="mobile-category__link">Tool</a></a>
                        </li>
                        </ul>
                    </nav>
                    <br>
                    <div class="row products">
                        <a href="./product.html" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-serum-foundation-31-y-30ml-1.png">
                                <h5 class="product__item-name">
                                    Serum Foundation
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $6.7
                                    </h3>
                                    <h3 class="product__item-price">
                                        $5.5
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
                                    <div class="product__sold-number">203 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>


                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-high-adherence-silicone-primer-30ml-2.png">
                                <h5 class="product__item-name">
                                    High-Adherence Silicone Primer
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $4.9
                                    </h3>
                                    <h3 class="product__item-price">
                                        $4.0
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
                                    <div class="product__sold-number">37 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>

                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-concealer-30-y-8ml-3.png">
                                <h5 class="product__item-name">
                                    Concealer
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $5.8
                                    </h3>
                                    <h3 class="product__item-price">
                                        $5.2
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
                                    <div class="product__sold-number">250 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-high-spreadability-fluid-primer-30ml-4.png">
                                <h5 class="product__item-name">
                                    High-Spreadability Fluid Primer                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $7.9
                                    </h3>
                                    <h3 class="product__item-price">
                                        $7.1
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
                                    <div class="product__sold-number">96 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-coverage-foundation-30-y-30ml-5.png">
                                <h5 class="product__item-name">
                                    Coverage Foundation
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $6.9
                                    </h3>
                                    <h3 class="product__item-price">
                                        $5.7
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
                                    <div class="product__sold-number">105 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-multi-peptide-serum-for-hair-density-60ml-6.png">
                                <h5 class="product__item-name">
                                    Multi-Peptide Serum for Hair Density
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $15.0
                                    </h3>
                                    <h3 class="product__item-price">
                                        $14.0
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
                                    <div class="product__sold-number">22 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-glycolic-acid-7pct-toning-solution-240ml-7.png">
                                <h5 class="product__item-name">
                                    Glycolic Acid 7% Toning Solution
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $8.70
                                    </h3>
                                    <h3 class="product__item-price">
                                        $8.50
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
                                    <div class="product__sold-number">55 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-caffeine-solution-5pct-egcg-30ml-8.png">
                                <h5 class="product__item-name">
                                    Caffeine Solution 5% + EGCG
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $6.70
                                    </h3>
                                    <h3 class="product__item-price">
                                        $5.50
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
                                    <div class="product__sold-number">102 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png">
                                <h5 class="product__item-name">
                                    Niacinamide 10% + Zinc 1%
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $5.9
                                    </h3>
                                    <h3 class="product__item-price">
                                        $4.8
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
                                    <div class="product__sold-number">86 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img" src="assets/img/ordinary/rdn-natural-moisturizing-factors-ha-30ml-10.png">
                                <h5 class="product__item-name">
                                    Natural Moisturizing Factors + HA
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $5.0
                                    </h3>
                                    <h3 class="product__item-price">
                                        $3.0
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
                                    <div class="product__sold-number">70 sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">Ordinary</span>
                                    <span class="product__item-origin-name">USA</span>
                                </div>
                            </div>
                        </a>

                    </div>
                    <button class="buttons" style="margin: 20px auto; display: block">
                        LOAD MORE
                    </button>
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

<script src="assets/js/showHide.js"></script>
</body>
</html>