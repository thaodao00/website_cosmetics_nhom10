<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<%
    request.setCharacterEncoding ("UTF-8");
    response.setCharacterEncoding ("UTF-8");
%>
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
        <div class="empty-cart">
            <div class="empty-cart__title">Your cart is currently empty.</div>
            <div class="empty-cart__sub-title">Looks like you haven't made your choice yet...</div>
            <button class="buttons">go back</button>
        </div>

        <!-- Filled cart -->
        <div class="filled-cart">
            <div class="filled-cart__title-bar">
                <input type="checkbox" class="select-all-products">
                <span>Product</span>
                <span>Unit Price</span>
                <span>Quantity</span>
                <span>Total</span>
                <span>Option</span>
            </div>

            <div class="filled-cart__items-wrapper">

                <div class="filled-cart__item">
                    <input type="checkbox" class="select-product">
                    <a href="#" class="filled-cart__item-info">
                        <div class="filled-cart__item-img"></div>
                        <p class="filled-cart__item-description">K Dream Kem lót trang điểm tự nhiên lâu trôi</p>
                    </a>
                    <span class="filled-cart__item-price">$24</span>
                    <div class="filled-cart__item-quantity">
                        <div class="quantity-buttons">
                            <button class="quantity-buttons--minus">-</button>
                            <div class="quantity-buttons--number">1</div>
                            <button class="quantity-buttons--plus">+</button>
                        </div>
                    </div>
                    <span class="filled-cart__item-totalPrice">$24</span>
                    <div class="filled-cart__item-delete-button">
                        <button class="buttons">Delete</button>
                    </div>
                </div>

                <div class="filled-cart__item">
                    <input type="checkbox" class="select-product">
                    <a href="#" class="filled-cart__item-info">
                        <div class="filled-cart__item-img"></div>
                        <p class="filled-cart__item-description">K Dream</p>
                    </a>
                    <span class="filled-cart__item-price">$24</span>
                    <div class="filled-cart__item-quantity">
                        <div class="quantity-buttons">
                            <button class="quantity-buttons--minus">-</button>
                            <div class="quantity-buttons--number">1</div>
                            <button class="quantity-buttons--plus">+</button>
                        </div>
                    </div>
                    <span class="filled-cart__item-totalPrice">$24</span>
                    <div class="filled-cart__item-delete-button">
                        <button class="buttons">Delete</button>
                    </div>
                </div>
            </div>

            <a href="./pay.html" class="purchase-confirmation-button">
                <button class="buttons">Confirm Purchase</button>
            </a>
        </div>

    </div>

</div>

</body>
</html>