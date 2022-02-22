<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.website_cosmetics_nhom10.beans.Products" %>
<%@ page import="com.example.website_cosmetics_nhom10.beans.Cart" %>
<%@include file="/common/taglib.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="cart" scope="session" type="com.example.website_cosmetics_nhom10.beans.Cart"/>
<script>console.log(${cData})</script>
<!--Header: begin-->
<header class="header">
    <div class="grid wide ">
        <div class="row navbar">
            <div class="col l-2 m-2 c-6">
                <a href="<c:url value="/web-home"/>" style="text-decoration: none">
                    <h1 class="logo" about=""> Cosmetics</h1>
                </a>
            </div>
            <div class="col l-8 m-8 c-0">
                <ul class="navbar__list">
                    <li class="navbar__item">
                        <a href="<c:url value="/web-home"/>" class="navbar__item-link">
                            HOME
                        </a>
                    </li>
                    <li class="navbar__item">
                        <a class="navbar__item-link" href="<c:url value="/web-products"/>">
                            PRODUCTS
                        </a>
                    </li>
                    <li class="navbar__item">
                        <a class="navbar__item-link" href="<c:url value="/web-about"/>">
                            ABOUT US
                        </a>
                    </li>
                    <li class="navbar__item">
                        <a class="navbar__item-link" href="<c:url value="/web-contact"/>">
                            CONTACT US
                        </a>
                    </li>
                </ul>
            </div>
            <div class="header-icon col l-2 m-2 c-0">
                <div class="search-link__wrapper">
                    <a class="search-link">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
                <div class="cart-link__wrapper">
                    <a href="<c:url value="/web-cart"/>" class="cart-link">
                        <span class="cart-link-notice">
                            ${cart.getDataAndQuantity().keySet().size()}
                        </span>
                        <i class="fa fa-cart-plus"></i>
                    </a>
                    <!-- cart list -->
                    <div class="cart-list">
                        <!-- empty cart list -->
                        <div class="cart-list__empty-cart" style="display: <c:if
                                test="${cart.getDataAndQuantity().keySet().size() == 0 or cart.getDataAndQuantity().keySet() == null}">block</c:if>">
                            <img src="<c:url value="/template/web/assets/img/icon/empty_cart.png"/>" alt="Empty cart"
                                 class="cart-list__empty-cart-img">
                            <div class="cart-list__empty-cart-title">
                                Unfortunately, Your Cart Is Empty
                            </div>
                            <div class="cart-list__empty-cart-message">
                                Please add something in your cart
                            </div>
                        </div>
                        <!-- filled cart list -->
                        <div class="cart-list__filled-cart" style="display:
                        <c:if test="${cart.getDataAndQuantity().keySet().size() == 0 or cart.getDataAndQuantity().keySet() == null}">none</c:if> ">
                            <div class="filled-cart__header">
                                        <span class="filled-cart__title">
                                            Added Products
                                        </span>
                            </div>
                            <ul class="cart-list__filled-cart__items-list">
                                <a href="./" class="cart-list__filled-cart__item-wrapper">
                                    <li class="cart-list__filled-cart__item">
                                        <img src="./assets/img/ordinary/rdn-coverage-foundation-30-y-30ml-5.png"
                                             alt="foundation" class="filled-cart__item-img">
                                        <div class="cart-list__filled-cart__item-info">
                                            <div class="cart-list__filled-cart__item-info-head">
                                                        <span class="cart-list__filled-cart__item-name">
                                                            RDN Coverage Foundation
                                                        </span>
                                                <div class="cart-list__filled-cart__price-wrapper">
                                                    <div class="cart-list__filled-cart__item-price">
                                                        $20
                                                    </div>
                                                    <div class="cart-list__filled-cart__multiphy">x</div>
                                                    <div class="cart-list__filled-cart__item-quantity">
                                                        2
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart-list__filled-cart__item-info-body">
                                                        <span class="cart-list__filled-cart__item-category">
                                                            Category: Serum
                                                        </span>
                                                <span class="cart-list__filled-cart__remove">
                                                            Remove
                                                        </span>
                                            </div>
                                        </div>
                                    </li>
                                </a>

                                <li class="cart-list__filled-cart__item">
                                    <img src="./assets/img/ordinary/rdn-multi-peptide-serum-for-hair-density-60ml-6.png"
                                         alt="foundation" class="filled-cart__item-img">
                                    <div class="cart-list__filled-cart__item-info">
                                        <div class="cart-list__filled-cart__item-info-head">
                                                    <span class="cart-list__filled-cart__item-name">
                                                        RDN High Spreadability Fluid Primer 30ml limited version made in USA
                                                    </span>
                                            <div class="cart-list__filled-cart__price-wrapper">
                                                <div class="cart-list__filled-cart__item-price">
                                                    $25
                                                </div>
                                                <div class="cart-list__filled-cart__multiphy">x</div>
                                                <div class="cart-list__filled-cart__item-quantity">
                                                    4
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-list__filled-cart__item-info-body">
                                                    <span class="cart-list__filled-cart__item-category">
                                                        Category: Serum
                                                    </span>
                                            <span class="cart-list__filled-cart__remove">
                                                        Remove
                                                    </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="cart-list__filled-cart__item">
                                    <img src="./assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png"
                                         alt="foundation" class="filled-cart__item-img">
                                    <div class="cart-list__filled-cart__item-info">
                                        <div class="cart-list__filled-cart__item-info-head">
                                                    <span class="cart-list__filled-cart__item-name">
                                                        Niacinamide
                                                    </span>
                                            <div class="cart-list__filled-cart__price-wrapper">
                                                <div class="cart-list__filled-cart__item-price">
                                                    $22
                                                </div>
                                                <div class="cart-list__filled-cart__multiphy">x</div>
                                                <div class="cart-list__filled-cart__item-quantity">
                                                    1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-list__filled-cart__item-info-body">
                                                    <span class="cart-list__filled-cart__item-category">
                                                        Category: Serum
                                                    </span>
                                            <span class="cart-list__filled-cart__remove">
                                                        Remove
                                                    </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="cart-list__filled-cart__item">
                                    <img src="./assets/img/ordinary/rdn-natural-moisturizing-factors-ha-30ml-10.png"
                                         alt="foundation" class="filled-cart__item-img">
                                    <div class="cart-list__filled-cart__item-info">
                                        <div class="cart-list__filled-cart__item-info-head">
                                                    <span class="cart-list__filled-cart__item-name">
                                                        RDN Natural Moisturizung
                                                    </span>
                                            <div class="cart-list__filled-cart__price-wrapper">
                                                <div class="cart-list__filled-cart__item-price">
                                                    $14
                                                </div>
                                                <div class="cart-list__filled-cart__multiphy">x</div>
                                                <div class="cart-list__filled-cart__item-quantity">
                                                    1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-list__filled-cart__item-info-body">
                                                    <span class="cart-list__filled-cart__item-category">
                                                        Category: Serum
                                                    </span>
                                            <span class="cart-list__filled-cart__remove">
                                                        Remove
                                                    </span>
                                        </div>
                                    </div>
                                </li>
                                <li class="cart-list__filled-cart__item">
                                    <img src="./assets/img/ordinary/rdn-glycolic-acid-7pct-toning-solution-240ml-7.png"
                                         alt="foundation" class="filled-cart__item-img">
                                    <div class="cart-list__filled-cart__item-info">
                                        <div class="cart-list__filled-cart__item-info-head">
                                                    <span class="cart-list__filled-cart__item-name">
                                                        RDN High Adherence Silicone Primer 30ml
                                                    </span>
                                            <div class="cart-list__filled-cart__price-wrapper">
                                                <div class="cart-list__filled-cart__item-price">
                                                    $33
                                                </div>
                                                <div class="cart-list__filled-cart__multiphy">x</div>
                                                <div class="cart-list__filled-cart__item-quantity">
                                                    2
                                                </div>
                                            </div>
                                        </div>
                                        <div class="cart-list__filled-cart__item-info-body">
                                                    <span class="cart-list__filled-cart__item-category">
                                                        Category: Serum
                                                    </span>
                                            <span class="cart-list__filled-cart__remove">
                                                        Remove
                                                    </span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <a href="<c:url value="/web-cart"/>" class="cart-list__filled-cart__footer">
                                <button id="cart-list__view-button" class="buttons buttons--smaller">View Cart</button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="login-link__wrapper">
                    <a href="<c:url value="/api-login"/>" class="login-link">
                        <i class="fa fa-user"></i>
                    </a>
                </div>
            </div>
            <div class="nav-mobile__overlay"></div>
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
                        <a href="<c:url value="/web-home"/>" class="nav-mobile__link">
                            <li class="nav-mobile__item">
                                Home
                            </li>
                        </a>
                        <a href="<c:url value="/web-products"/>" class="nav-mobile__link">
                            <li class="nav-mobile__item">
                                Products
                            </li>
                        </a>
                        <a href="<c:url value="/web-about"/>" class="nav-mobile__link">
                            <li class="nav-mobile__item">
                                About Us
                            </li>
                        </a>
                        <a href="<c:url value="/web-contact"/>" class="nav-mobile__link">
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
