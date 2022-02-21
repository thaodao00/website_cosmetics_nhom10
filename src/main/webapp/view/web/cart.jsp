<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="cartData" scope="request" type="java.util.HashMap"/>
<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
</head>

<body>
<div id="cart">
    <div class="cart__title">Cart</div>
    <div class="cart__body">
        <!-- Empty cart -->
        <div class="empty-cart" style="display: <c:if test="${cartData.size() == 0 or cartData == null}">block</c:if>">
            <div class="empty-cart__title">Your cart is currently empty.</div>
            <div class="empty-cart__sub-title">Looks like you haven't made your choice yet...</div>
            <button class="buttons" onclick="location.href='<c:url value="/web-home"/>'">go back</button>
        </div>

        <!-- Filled cart -->
        <div class="filled-cart" style="display: <c:if test="${cartData.size() == 0 or cartData == null}">none</c:if>">
            <div class="filled-cart__title-bar">
                <input type="checkbox" class="select-all-products">
                <span>Product</span>
                <span>Unit Price</span>
                <span>Quantity</span>
                <span>Total</span>
                <span>Option</span>
            </div>

            <div class="filled-cart__items-wrapper">

                <c:forEach var="entry" items="${cartData.entrySet()}">
                    <div class="filled-cart__item">
                        <input type="checkbox" class="select-product">
                        <a href="<c:url value="web-product?id=${entry.getValue().id}"/>" class="filled-cart__item-info">
                            <div class="filled-cart__item-img" style="background-image: url(<c:url
                                    value="/template/web/assets/img/ordinary/${entry.getValue().thumbnailImg}"/>);"></div>
                            <p class="filled-cart__item-description">${entry.getValue().name}</p>
                        </a>
                        <span class="filled-cart__item-price">${entry.getValue().price}</span>
                        <div class="filled-cart__item-quantity">
                            <div class="quantity-buttons">
                                <button class="quantity-buttons--minus update-cart-be" pid="${entry.getValue().id}">-</button>
                                <div class="quantity-buttons--number">${entry.getKey()}</div>
                                <button class="quantity-buttons--plus update-cart-be" pid="${entry.getValue().id}">+</button>
                            </div>
                        </div>
                        <span class="filled-cart__item-totalPrice">${entry.getValue().price * entry.getKey()}</span>
                        <div class="filled-cart__item-delete-button">
                            <button class="buttons remove-cart-be" pid="${entry.getValue().id}">Delete</button>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <a href="<c:url value="/web-pay"/>" class="purchase-confirmation-button">
                <button class="buttons">Confirm Purchase</button>
            </a>
        </div>

    </div>
</div>

<script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous">
</script>
<script>
    $(document).ready(function () {
        $(".remove-cart-be").click(function () {
            if (confirm("Do you want to remove it?") == true) {
                const pid = $(this).attr("pid");
                const quantity = 0;
                console.log(pid + " " + quantity);
                $.ajax({
                    url: "api-update-cart",
                    method: "POST",
                    data: {
                        pid: pid,
                        quantity: quantity
                    },
                    success: function (data) {
                        console.log("removed")
                    },
                    error: function (data) {
                        console.log("failed")
                    }
                })
            }

        })
    })

    $(document).ready(function () {
        $(".update-cart-be").click(function () {
                const pid = $(this).attr("pid");
                const quantity = $(this).siblings(".quantity-buttons--number").text();
                console.log(pid + " " + quantity);
                if(quantity == 0) {
                    if(confirm("Do you want to remove it?") == true) {
                        $.ajax({
                            url: "api-update-cart",
                            method: "POST",
                            data: {
                                pid: pid,
                                quantity: quantity
                            },
                            success: function (data) {
                                console.log("updated")
                            },
                            error: function (data) {
                                console.log("failed")
                            }
                        })
                    }
                } else {
                    $.ajax({
                        url: "api-update-cart",
                        method: "POST",
                        data: {
                            pid: pid,
                            quantity: quantity
                        },
                        success: function (data) {
                            console.log("updated")
                        },
                        error: function (data) {
                            console.log("failed")
                        }
                    })

                }
        })
    })
</script>

</body>
</html>