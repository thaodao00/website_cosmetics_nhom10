
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PersonalInformation</title>
    <link rel="stylesheet" href="template/web/assets/css/base.css">
    <link rel="stylesheet" href="template/web/assets/css/grid.css">
    <link rel="stylesheet" href="template/web/assets/css/main.css">
    <link rel="stylesheet" href="template/web/assets/css/responsive.css">
    <link rel="stylesheet" href="template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comforter+Brush&family=Estonia&family=Kaushan+Script&family=Marck+Script&family=Nothing+You+Could+Do&family=Patrick+Hand&family=Roboto&family=Satisfy&family=Sawarabi+Gothic&family=Tangerine:wght@700&display=swap"
          rel="stylesheet">
</head>
<body>

    <!-- Content: begin-->
    <div class="content-account">
        <div class="grid wide">
            <div class="row nav__information">
                <div class="col l-2 m-12 c-12">
                    <div class="nav__information-personal">
                        <ul class="nav__information-personal-list">
                            <li class="nav__information-personal-account">
                                <div class="nav__information-personal-item">
                                    <img class="nav__information-personal-img" src="assets/img/user.jpg" alt="">
                                    <h5 class="nav__information-personal-name">
                                        My account
                                    </h5>
                                </div>
                                <ul class="nav__information-my-account-list">
                                    <li class="nav__information-my-account-item active-btn my-account-profiles">
                                        Profiles
                                    </li>
                                    <li class="nav__information-my-account-item my-account-address">
                                        Address
                                    </li>
                                    <li class="nav__information-my-account-item my-account-passwords">
                                        Change passwords
                                    </li>
                                    <li href="" class="my-account-logout">
                                        Log out
                                    </li>

                                </ul>
                            </li>
                            <li class="nav__information-personal-purchase">
                                <img class="nav__information-personal-img" src="assets/img/don-mua.png" alt="">
                                <h5 class="nav__information-personal-name active-btn">
                                    Purchase order
                                </h5>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col l-10 m-12 c-12 purchase-order">
                    <div class="nav__information-orders">
                        <ul class="nav__information-orders-list">
                            <li class="nav__information-orders-item active-btn">
                                All order
                            </li>
                            <li class="nav__information-orders-item">
                                Preparing orders
                            </li>
                            <li class="nav__information-orders-item">
                                Delivering orders
                            </li>
                            <li class="nav__information-orders-item">
                                Successful orders
                            </li>
                            <li class="nav__information-orders-item" style="padding-right: 40px">
                                Canceled orders
                            </li>
                        </ul>
                    </div>
                    <div class="nav__information-orders-content active-tab">
                        <div class="nav__information-orders-content-item ">
                            <div class="empty-order">
                                <div class="empty-order-img">

                                </div>
                                <div class="empty-order-text">
                                    No orders :)
                                </div>
                            </div>
                        </div>
                        <div class="nav__information-orders-content-item active-tab">
                            <div class="nav__information-orders-content-item-product">
                                <div class="order-status">
                                    Successful orders
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    Niacinamide 10% + Zinc 1% - The Ordinary
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $5.90
                                        </div>
                                    </div>
                                    <button class="btn buttons order-review">Review</button>
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-high-adherence-silicone-primer-30ml-2.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    High-Adherence Silicone Primer
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $4.90
                                        </div>
                                    </div>
                                    <button class="btn buttons order-review ">Review</button>
                                </div>
                                <div class="order-total-amount">
                                    <label class="order-total-amount__label">Total amount:</label>
                                    <div class="order-total-amount__number">
                                        $10.80
                                    </div>
                                </div>

                            </div>
                            <div class="nav__information-orders-content-item-product">
                                <div class="order-status">
                                    Canceled orders
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    Niacinamide 10% + Zinc 1% - The Ordinary
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $5.90
                                        </div>
                                    </div>
                                    <button class="btn  order-review" style="opacity: 0.2;cursor: not-allowed">REVIEW
                                    </button>
                                </div>

                                <div class="order-total-amount">
                                    <label class="order-total-amount__label">Total amount:</label>
                                    <div class="order-total-amount__number">
                                        $5.90
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="nav__information-orders-content">
                        <div class="nav__information-orders-content-item active-tab">
                            <div class="empty-order">
                                <div class="empty-order-img">

                                </div>
                                <div class="empty-order-text">
                                    No orders :)
                                </div>
                            </div>
                        </div>
                        <div class="nav__information-orders-content-item ">
                            <div class="nav__information-orders-content-item-product">
                                <div class="order-status">
                                    Preparing order
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    Niacinamide 10% + Zinc 1% - The Ordinary
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $5.90
                                        </div>
                                    </div>
                                    <button class="btn buttons order-review">Review</button>
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-high-adherence-silicone-primer-30ml-2.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    High-Adherence Silicone Primer
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $4.90
                                        </div>
                                    </div>
                                    <button class="btn buttons order-review ">Review</button>
                                </div>
                                <div class="order-total-amount">
                                    <label class="order-total-amount__label">Total amount:</label>
                                    <div class="order-total-amount__number">
                                        102$
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <div class="nav__information-orders-content">
                        <div class="nav__information-orders-content-item active-tab">
                            <div class="empty-order">
                                <div class="empty-order-img">

                                </div>
                                <div class="empty-order-text">
                                    No orders :)
                                </div>
                            </div>
                        </div>
                        <div class="nav__information-orders-content-item ">
                            <div class="nav__information-orders-content-item-product">
                                <div class="order-status">
                                    Preparing order
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/product/granary/filmeyeshadow.jpg">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    Niacinamide 10% + Zinc 1% - The Ordinary
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            56$
                                        </div>
                                    </div>
                                    <button class="order-review">Review</button>
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/product/granary/filmeyeshadow.jpg">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    Niacinamide 10% + Zinc 1% - The Ordinary
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            56$
                                        </div>
                                    </div>
                                    <button class="order-review">Review</button>
                                </div>
                                <div class="order-total-amount">
                                    <label class="order-total-amount__label">Total amount:</label>
                                    <div class="order-total-amount__number">
                                        102$
                                    </div>
                                </div>
                                <button class="order-review">Review</button>
                            </div>
                        </div>
                    </div>
                    <div class="nav__information-orders-content">
                        <div class="nav__information-orders-content-item ">
                            <div class="empty-order">
                                <div class="empty-order-img">

                                </div>
                                <div class="empty-order-text">
                                    No orders :)
                                </div>
                            </div>
                        </div>
                        <div class="nav__information-orders-content-item active-tab">
                            <div class="nav__information-orders-content-item-product">
                                <div class="order-status">
                                    Successful orders
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    Niacinamide 10% + Zinc 1% - The Ordinary
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $5.90
                                        </div>
                                    </div>
                                    <button class="btn buttons order-review">Review</button>
                                </div>
                                <div class="orders-purchase">
                                    <div class="orders-information">
                                        <div class="orders-information__content">
                                            <img class="orders-information__content-img"
                                                 src="assets/img/ordinary/rdn-high-adherence-silicone-primer-30ml-2.png">
                                            <div class="orders-information__content-overview">
                                                <h4 class="orders-information__content-overview-title">
                                                    High-Adherence Silicone Primer
                                                </h4>
                                                <div class="orders-information__content-overview-amount">
                                                    x1
                                                </div>
                                            </div>
                                        </div>
                                        <div class="orders-price">
                                            $4.90
                                        </div>
                                    </div>
                                    <button class="btn buttons order-review ">Review</button>
                                </div>
                                <div class="order-total-amount">
                                    <label class="order-total-amount__label">Total amount:</label>
                                    <div class="order-total-amount__number">
                                        $10.80
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="nav__information-orders-content">
                        <div class="nav__information-orders-content-item ">
                            <div class="empty-order">
                                <div class="empty-order-img">

                                </div>
                                <div class="empty-order-text">
                                    No orders :)
                                </div>

                            </div>
                        </div>
                        <div class="nav__information-orders-content-item-product">
                            <div class="order-status">
                                Canceled orders
                            </div>
                            <div class="orders-purchase">
                                <div class="orders-information">
                                    <div class="orders-information__content">
                                        <img class="orders-information__content-img"
                                             src="assets/img/ordinary/rdn-niacinamide-10pct-zinc-1pct-30ml-9.png">
                                        <div class="orders-information__content-overview">
                                            <h4 class="orders-information__content-overview-title">
                                                Niacinamide 10% + Zinc 1% - The Ordinary
                                            </h4>
                                            <div class="orders-information__content-overview-amount">
                                                x1
                                            </div>
                                        </div>
                                    </div>
                                    <div class="orders-price">
                                        $5.90
                                    </div>
                                </div>
                                <button class="btn  order-review" style="opacity: 0.2;cursor: not-allowed">REVIEW
                                </button>
                            </div>

                            <div class="order-total-amount">
                                <label class="order-total-amount__label">Total amount:</label>
                                <div class="order-total-amount__number">
                                    $5.90
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col l-10 m-12 c-12 my-account" style="display:none">
                    <div class="my-account__main active-tab ">
                        <div class="my-account__top">
                            <h5 class="my-account__top-title">
                                My account
                            </h5>
                            <p class="my-account__top-text">
                                Manage profile information to secure account
                            </p>
                        </div>
                        <form class="my-account__form">
                            <div class="my-account__form-name">
                                <label class="my-account__form-label">
                                    EMail
                                </label>
                                <div id="email-text" class="my-account__form-content">

                                </div>
                            </div>
                            <div class="my-account__form-name">
                                <label class="my-account__form-label">
                                    Password
                                </label>
                                <div id="password-text" class="my-account__form-content">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="my-account__main address">
                        <div class="my-account__top">
                            <h5 class="my-account__top-title">
                                My address
                            </h5>
                            <button class="my-account__top-btn">
                                Add address
                            </button>
                        </div>
                        <form class="my-account__form">
                            <div class="my-account__form-name">
                                <label class="my-account__form-label">
                                    Full name
                                </label>
                                <div class="my-account__form-content">

                                </div>
                            </div>
                            <div class="my-account__form-name">
                                <label class="my-account__form-label">
                                    Phone
                                </label>
                                <div class="my-account__form-content">

                                </div>
                            </div>
                            <div class="my-account__form-name">
                                <label class="my-account__form-label">
                                    Address
                                </label>
                                <div class="my-account__form-content">

                                </div>

                            </div>
                        </form>
                    </div>
                    <div class="my-account__main password">
                        <div class="my-account__top">
                            <h5 class="my-account__top-title">
                                Change password
                            </h5>
                            <p class="my-account__top-text">
                                To secure your account, please don't share your password with others
                            </p>
                        </div>
                        <form class="my-account__form">
                            <div class="my-account__form-change-password ">
                                <label class="my-account__form-label">
                                    Current password
                                </label>
                                <input type="password" class="my-account__form-input">
                                <div class="my-account__form-forgot-password">
                                    Forgot password?
                                </div>
                            </div>
                            <div class="my-account__form-change-password ">
                                <label class="my-account__form-label">
                                    New password
                                </label>
                                <input type="password" class="my-account__form-input">
                            </div>
                            <div class="my-account__form-change-password ">
                                <label class="my-account__form-label">
                                    Password confirm
                                </label>
                                <input type="password" class="my-account__form-input">
                            </div>
                            <button class="btn buttons my-account__password-btn">
                                SAVE
                            </button>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Content: END-->



</div>

<!--modal review-->
<div class="modal-review">
    <div class="modal__overlay"></div>
    <div class="modal__body">
        <div class="review-form">
            <div class="auth-form">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3 class="auth-form__heading">Product reviews</h3>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__list">
                            <div class="auth-form__group-star">
                                <i class="fas fa-star star-rating"></i>
                                <i class="fas fa-star star-rating"></i>
                                <i class="fas fa-star star-rating"></i>
                                <i class="fas fa-star star-rating"></i>
                                <i class="fas fa-star star-rating"></i>
                            </div>
                            <textarea id="your-review" type="text" placeholder="Write your review" maxlength="300"
                                      style="overflow: hidden; overflow-wrap: break-word; height: 100px; width: 100%"></textarea>
                        </div>
                    </div>
                    <div class="auth-form__controls" style="margin: 0">
                        <button class="btn buttons back-btn">
                            BACK
                        </button>
                        <button class="buttons">
                            SUBMIT
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="template/web/assets/js/showHide.js"></script>
<script type="module" src="template/web/assets/js/JSPersonalInfomation.js"></script>
</body>
</html>
