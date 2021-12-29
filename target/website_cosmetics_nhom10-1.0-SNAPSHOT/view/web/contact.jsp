<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
</head>
<body>
<div id="app">
    <div class="contact-content">
        <div class="product-slider">
            <div class="product-slider-wrapper">
                <div class="product-slider__background"></div>
                <div class="product-slider__title ">Contact Us</div>
            </div>
        </div>
        <div class="contact-branch">
            <div class="grid wide branch-wrapper">
                <div class="row branch-section">
                    <div class="col l-3 m-6 c-12 branch">
                        <ul class="branch-item">
                            <li><h2>ZURICH</h2></li>
                            <li><a href="#">Address: Seestrasse 21, Zurich</a></li>
                            <li><a href="#">E-mail: biagiottitheme@gmail.com</a></li>
                            <li><a href="#">Phone : + 99 411 725 39 12</a></li>
                        </ul>
                    </div>
                    <div class="col l-3 m-6 c-12 branch">
                        <ul class="branch-item">
                            <li><h2>PARIS</h2></li>
                            <li><a href="#">Address: Rue Vieille Du Temple, Paris</a></li>
                            <li><a href="#">E-mail: biagiottitheme@gmail.com</a></li>
                            <li><a href="#">Phone : + 99 411 725 39 12</a></li>
                        </ul>
                    </div>
                    <div class="col l-3 m-6 c-12 branch">
                        <ul class="branch-item">
                            <li><h2>LONDON</h2></li>
                            <li><a href="#">Address: 191 Victoria Street, London</a></li>
                            <li><a href="#">E-mail: biagiottitheme@gmail.com</a></li>
                            <li><a href="#">Phone : + 99 411 725 39 12</a></li>
                        </ul>
                    </div>
                    <div class="col l-3 m-6 c-12 branch">
                        <ul class="branch-item">
                            <li><h2>VIETNAM</h2></li>
                            <li><a href="#">Address: Tan Phu ward,Thu Duc city</a></li>
                            <li><a href="#">E-mail: biagiottitheme@gmail.com</a></li>
                            <li><a href="#">Phone : + 99 411 725 39 12</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-ask">

            <div class="grid wide">
                <div class="row contact-ask-wrapper">
                    <div class="col l-6 m-12 c-12 contact-ask-item">
                        <div class="contact-section-inner">
                            <h2 class="tagline"> Perfect shades</h2>
                            <h2 class="title">Ask us anything</h2>
                            <h5 class="subtitle">At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                blanditiis praesentium voluptatum deleniti atque</h5>
                        </div>
                        <div class="contact-form">
                            <input type="email" class="your-email" placeholder="Email*">
                            <textarea class="your-message" cols="40" rows="10" placeholder="Your comment"></textarea>
                            <button class="submit-btn">SUBMIT</button>
                        </div>
                    </div>
                    <div class="col l-6 m-12 c-12 contact-map">
                        <img src="./assets/img/contact2.jpg" alt="Map" class="img-map">
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

            <a href="cart.html" class="cart-link">
                <i class="fa fa-cart-plus"></i>
            </a>
            <a class="login-link " style="padding-right: 10px">
                <i class="fa fa-user"></i>
            </a>

        </div>
    </div>
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

<!-- Popup -->
<div class="popup-wrapper">
    <div class="popup-overlay"></div>
    <div class="popup stay-in-touch">
        <div class="close-wrapper">
            <a href="javascript:void(0)" class="close">
                <i class="fas fa-times close-icon"></i>
            </a>
        </div>
        <div class="stay-in-touch__title">
            <h2>Stay in touch</h2>
        </div>
        <div class="stay-in-touch__form">
            <input type="text" placeholder="E-mail address">
            <button class="buttons">Send</button>
        </div>
        <div class="stay-in-touch__form-description">
            <p>*At vero eos et accusamus et iusto odio dignissimos</p>
        </div>
        <div class="stay-in-touch__prevent">
            <input type="checkbox" value="1" id="input-checkbox-prevent">
            <label for="input-checkbox-prevent">
                <p>Prevent This Pop-up</p>
            </label>
        </div>
    </div>
</div>

</body>
</html>