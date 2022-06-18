<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header">
    <div class="grid wide">
        <div class="header-wrap">
            <div class="header__logo">
                <i class="header__logo-icon fas fa-leaf"></i>
                <span class="header__logo-text">Admin</span>
            </div>
            <div class="header__welcome">
                <div class="header__welcome-item">
                </div>
                <div class="header__welcome-item">
                </div>
                <div class="header__welcome-item">
                </div>
                <div class="header__welcome-item">
                    Hi Admin!
                    <ul class="header__welcome-item__board">
                        <li class="header__welcome-item__board-row">
                            <a href="<c:url value="web-logout" />" class="header__welcome-item__board-link">
                                <i class="header__welcome-item__board-icon fas fa-sign-out-alt"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>