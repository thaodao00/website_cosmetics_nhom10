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
<!--Search mobile-->
<div class="search-mobile">
    <div class="search-mobile__input">
        <input class="search-mobile__input-text" placeholder="Search...">
        <i class="icon-search fas fa-search"></i>
    </div>

    <a class="cart-link">
        <i class="fa fa-cart-plus"></i>
    </a>
    <a class="login-link " style="padding-right: 10px">
        <i class="fa fa-user"></i>
    </a>
</div>
</body>
</html>