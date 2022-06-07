<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.website_cosmetics_nhom10.beans.Product" %>
<%@ page import="com.example.website_cosmetics_nhom10.beans.Cart" %>
<%@include file="/common/taglib.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="cart" scope="session" type="com.example.website_cosmetics_nhom10.beans.Cart"/>
<c:set var="cData" value="${cart.getDataAndQuantity()}"/>
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
                            ${cData.keySet().size()}
                        </span>
                        <i class="fa fa-cart-plus"></i>
                    </a>
                    <!-- cart list -->
                    <div class="cart-list">
                        <!-- empty cart list -->
                        <div class="cart-list__empty-cart" style="display: <c:if
                                test="${cData.keySet().size() == 0 or cData.keySet() == null}">block</c:if>">
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
                        <c:if test="${cData.keySet().size() == 0 or cData.keySet() == null}">none</c:if> ">
                            <div class="filled-cart__header">
                                        <span class="filled-cart__title">
                                            Added Products
                                        </span>
                            </div>
                            <ul class="cart-list__filled-cart__items-list">
                                <c:forEach var="entry" items="${cData.entrySet()}">
                                    <a href="<c:url value="/web-product?id=${entry.getKey().id}"/> " class="cart-list__filled-cart__item-wrapper">
                                        <li class="cart-list__filled-cart__item">
                                            <img src="<c:url value="/template/web/assets/img/ordinary/${entry.getKey().thumbnailImg}"/>"
                                                 alt="${entry.getKey().name}" class="filled-cart__item-img">
                                            <div class="cart-list__filled-cart__item-info">
                                                <div class="cart-list__filled-cart__item-info-head">
                                                        <span class="cart-list__filled-cart__item-name">
                                                            RDN Coverage Foundation
                                                        </span>
                                                    <div class="cart-list__filled-cart__price-wrapper">
                                                        <div class="cart-list__filled-cart__item-price">
                                                            $${entry.getKey().price}
                                                        </div>
                                                        <div class="cart-list__filled-cart__multiphy">x</div>
                                                        <div class="cart-list__filled-cart__item-quantity">
                                                            ${entry.getValue()}
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cart-list__filled-cart__item-info-body">
                                                        <span class="cart-list__filled-cart__item-category">
                                                            Category: Serum
                                                        </span>
                                                    <span class="cart-list__filled-cart__remove mini-cart__remove-item-be" pid="${entry.getKey().id}">
                                                            Remove
                                                        </span>
                                                </div>
                                            </div>
                                        </li>
                                    </a>
                                </c:forEach>

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

<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">
</script>
<script>
    $(document).ready(function () {
        $(".mini-cart__remove-item-be").click(function (event) {
            event.stopPropagation();
            if (confirm("Do you want to remove it?") == true) {
                const pid = $(this).attr("pid");
                const quantity = 0;
                $.ajax({
                    url: "api-update-cart",
                    method: "POST",
                    data: {
                        pid: pid,
                        quantity: quantity
                    },
                    success: function (data) {
                        console.log("removed")
                        $(this).parents(".cart-list__filled-cart__item-wrapper").css("display", "none");
                    },
                    error: function (data) {
                        console.log("failed")
                    }
                })
            }

        })
    })
</script>
<!--Header: end-->
