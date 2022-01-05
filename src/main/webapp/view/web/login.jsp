<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String error = (String) request.getAttribute("error"); %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="template/web/assets/css/main.css">
</head>

<body>
<div class="modal-account  modal-account__open">
    <div class="modal__overlay"></div>
    <div class="modal__body">
        <!--Login form -->
        <form name="login-form" action="web-login" method="post" id="login-form" class="login-form" style="display: block;">
            <div class="auth-form">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3 class="auth-form__heading">Login</h3>
                        <a href="<c:url value="/web-register"/>"
                        class="register-from__btn auth-form__switch-btn">Register
                        </a>

                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input id="mail" type="mail" class="auth-form__input" placeholder="user name" required name="username">
                        </div>
                        <div class="auth-form__group">
                            <input id="password" type="password" class="auth-form__input" placeholder="password" required name="password">
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
                    <div class="auth-form__aside" style="text-align: center;">
                        <p class="error-message regis-fail-js">${error}</p>
                    </div>
                    <div class="auth-form__controls">
                        <button class="btn buttons auth-form__controls-back ">
                            BACK
                        </button>
                        <a><input id="submit" type="submit" class="buttons" name="Login" value="SEND"></a>

                    </div>
                </div>
                <div class="auth-form_socials">
                    <a href="" class="auth-form_socials--face btn  btn--size-s btn--width-icon">
                        <i class="auth-form_socials-icon fab fa-facebook-square"></i>
                        <span class="auth-form__social-title">
                                Connect to Facebook</span>
                    </a>
                    <a href="" class="auth-form_socials-icon auth-form_socials--google btn btn--size-s btn--width-icon">
                        <i class="icon-gg fab fa-google-plus-square"></i>
                        <span class="auth-form__social-title">
                                Connect to Google</span>
                    </a>
                </div>
            </div>
        </form>
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
