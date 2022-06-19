<%@ page import="com.example.website_cosmetics_nhom10.beans.User" %>
<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<% User user = (User) request.getAttribute("user");%>
<% String error = (String) request.getAttribute("error"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PersonalInformation</title>
    <link rel="stylesheet"
          href="<c:url value="/template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css"/> ">
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
                                <img class="nav__information-personal-img"
                                <c:if test="${user != null}">
                                     src="<c:url value="/template/web/assets/img/avatar/${user.avatar}" />" alt="">
                                </c:if>
                                <c:if test="${user == null}">
                                    src="<c:url value="/template/web/assets/img/avatar/default-avatar.jpg"/>" alt="">
                                </c:if>
                                <h5 class="nav__information-personal-name active-btn">
                                    My account
                                </h5>
                            </div>
                            <ul class="nav__information-my-account-list" style="display: block">
                                <li class="nav__information-my-account-item active-btn my-account-profiles">
                                    Profiles
                                </li>
                                <li class="nav__information-my-account-item my-account-passwords">
                                    Change passwords
                                </li>
                                <li class="my-account-logout">
                                    <a href="<c:url value="web-logout" />">
                                        Log out
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <li class="nav__information-personal-purchase">
                            <img class="nav__information-personal-img"
                                 src="<c:url value="/template/web/assets/img/don-mua.png" />" alt="">
                            <h5 class="nav__information-personal-name">
                                Purchase order
                            </h5>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col l-10 m-12 c-12 purchase-order" style="display: none">
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
                <div class="nav__information-orders-content">
                    <div class="nav__information-orders-content-item">
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
            <div class="col l-10 m-12 c-12 my-account" style="display: block">
                <div class="my-account__main active-tab">
                    <div class="my-account__top">
                        <h5 class="my-account__top-title">
                            My account
                        </h5>
                        <p class="my-account__top-text">
                            Manage profile information to secure account
                        </p>
                    </div>
                    <form id="form-userinfo" class="my-account__form" action="web-update-user" method="post">
                        <div class="my-account__form-name">
                            <label for="input-username" class="my-account__form-label">
                                User name:
                            </label>
                            <input id="input-username" class="my-account__form-input" value="${user.username}"
                                   disabled size="50"
                                   required/>
                            <label for="input-username" class="edit-user-info">
                                Edit
                            </label>
                        </div>
                        <div class="my-account__form-name">
                            <label for="input-fullname" class="my-account__form-label">
                                Full name:
                            </label>
                            <input id="input-fullname" class="my-account__form-input" value="${user.fullName}"
                                   disabled size="50"
                                   required/>
                            <label for="input-fullname" class="edit-user-info">
                                Edit
                            </label>
                        </div>
                        <div class="my-account__form-name">
                            <label for="input-email" class="my-account__form-label">
                                Email:
                            </label>
                            <input id="input-email" class="my-account__form-input"
                                   value="${user.email}" disabled size="50"
                            />
                            <label for="input-email" class="edit-user-info">
                                Edit
                            </label>
                        </div>
                        <div class="my-account__form-name">
                            <label for="input-phone" class="my-account__form-label">
                                Phone number:
                            </label>
                            <input id="input-phone" class="my-account__form-input" value="${user.phone}"
                                   disabled
                                   size="50"
                            />
                            <label for="input-phone" class="edit-user-info">
                                Edit
                            </label>
                        </div>
                        <div class="my-account__form-name">
                            <label for="select-country" class="my-account__form-label">
                                Country:
                            </label>
                            <select name="select-country" id="select-country" name="select-country" disabled
                                    class="my-account__form-input">
                                <option value="">Select a Country</option>
                                <option value="Afghanistan">Afghanistan</option>
                                <option value="Aland Islands">Aland Islands</option>
                                <option value="Albania">Albania</option>
                                <option value="Algeria">Algeria</option>
                                <option value="American Samoa">American Samoa</option>
                                <option value="Andorra">Andorra</option>
                                <option value="Angola">Angola</option>
                                <option value="Anguilla">Anguilla</option>
                                <option value="Antarctica">Antarctica</option>
                                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                <option value="Argentina">Argentina</option>
                                <option value="Armenia">Armenia</option>
                                <option value="Aruba">Aruba</option>
                                <option value="Australia">Australia</option>
                                <option value="Austria">Austria</option>
                                <option value="Azerbaijan">Azerbaijan</option>
                                <option value="Bahamas">Bahamas</option>
                                <option value="Bahrain">Bahrain</option>
                                <option value="Bangladesh">Bangladesh</option>
                                <option value="Barbados">Barbados</option>
                                <option value="Belarus">Belarus</option>
                                <option value="Belgium">Belgium</option>
                                <option value="Belize">Belize</option>
                                <option value="Benin">Benin</option>
                                <option value="Bermuda">Bermuda</option>
                                <option value="Bhutan">Bhutan</option>
                                <option value="Bolivia">Bolivia</option>
                                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                <option value="Botswana">Botswana</option>
                                <option value="Bouvet Island">Bouvet Island</option>
                                <option value="Brazil">Brazil</option>
                                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
                                <option value="Brunei Darussalam">Brunei Darussalam</option>
                                <option value="Bulgaria">Bulgaria</option>
                                <option value="Burkina Faso">Burkina Faso</option>
                                <option value="Burundi">Burundi</option>
                                <option value="Cambodia">Cambodia</option>
                                <option value="Cameroon">Cameroon</option>
                                <option value="Canada">Canada</option>
                                <option value="Cape Verde">Cape Verde</option>
                                <option value="Cayman Islands">Cayman Islands</option>
                                <option value="Central African Republic">Central African Republic</option>
                                <option value="Chad">Chad</option>
                                <option value="Chile">Chile</option>
                                <option value="China">China</option>
                                <option value="Christmas Island">Christmas Island</option>
                                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                <option value="Colombia">Colombia</option>
                                <option value="Comoros">Comoros</option>
                                <option value="Congo">Congo</option>
                                <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of
                                    The
                                </option>
                                <option value="Cook Islands">Cook Islands</option>
                                <option value="Costa Rica">Costa Rica</option>
                                <option value="Cote D'ivoire">Cote D'ivoire</option>
                                <option value="Croatia">Croatia</option>
                                <option value="Cuba">Cuba</option>
                                <option value="Cyprus">Cyprus</option>
                                <option value="Czech Republic">Czech Republic</option>
                                <option value="Denmark">Denmark</option>
                                <option value="Djibouti">Djibouti</option>
                                <option value="Dominica">Dominica</option>
                                <option value="Dominican Republic">Dominican Republic</option>
                                <option value="Ecuador">Ecuador</option>
                                <option value="Egypt">Egypt</option>
                                <option value="El Salvador">El Salvador</option>
                                <option value="Equatorial Guinea">Equatorial Guinea</option>
                                <option value="Eritrea">Eritrea</option>
                                <option value="Estonia">Estonia</option>
                                <option value="Ethiopia">Ethiopia</option>
                                <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                <option value="Faroe Islands">Faroe Islands</option>
                                <option value="Fiji">Fiji</option>
                                <option value="Finland">Finland</option>
                                <option value="France">France</option>
                                <option value="French Guiana">French Guiana</option>
                                <option value="French Polynesia">French Polynesia</option>
                                <option value="French Southern Territories">French Southern Territories</option>
                                <option value="Gabon">Gabon</option>
                                <option value="Gambia">Gambia</option>
                                <option value="Georgia">Georgia</option>
                                <option value="Germany">Germany</option>
                                <option value="Ghana">Ghana</option>
                                <option value="Gibraltar">Gibraltar</option>
                                <option value="Greece">Greece</option>
                                <option value="Greenland">Greenland</option>
                                <option value="Grenada">Grenada</option>
                                <option value="Guadeloupe">Guadeloupe</option>
                                <option value="Guam">Guam</option>
                                <option value="Guatemala">Guatemala</option>
                                <option value="Guernsey">Guernsey</option>
                                <option value="Guinea">Guinea</option>
                                <option value="Guinea-bissau">Guinea-bissau</option>
                                <option value="Guyana">Guyana</option>
                                <option value="Haiti">Haiti</option>
                                <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands
                                </option>
                                <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                <option value="Honduras">Honduras</option>
                                <option value="Hong Kong">Hong Kong</option>
                                <option value="Hungary">Hungary</option>
                                <option value="Iceland">Iceland</option>
                                <option value="India">India</option>
                                <option value="Indonesia">Indonesia</option>
                                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                <option value="Iraq">Iraq</option>
                                <option value="Ireland">Ireland</option>
                                <option value="Isle of Man">Isle of Man</option>
                                <option value="Israel">Israel</option>
                                <option value="Italy">Italy</option>
                                <option value="Jamaica">Jamaica</option>
                                <option value="Japan">Japan</option>
                                <option value="Jersey">Jersey</option>
                                <option value="Jordan">Jordan</option>
                                <option value="Kazakhstan">Kazakhstan</option>
                                <option value="Kenya">Kenya</option>
                                <option value="Kiribati">Kiribati</option>
                                <option value="Korea, Democratic People's Republic of">Korea, Democratic People's
                                    Republic of
                                </option>
                                <option value="Korea, Republic of">Korea, Republic of</option>
                                <option value="Kuwait">Kuwait</option>
                                <option value="Kyrgyzstan">Kyrgyzstan</option>
                                <option value="Lao People's Democratic Republic">Lao People's Democratic Republic
                                </option>
                                <option value="Latvia">Latvia</option>
                                <option value="Lebanon">Lebanon</option>
                                <option value="Lesotho">Lesotho</option>
                                <option value="Liberia">Liberia</option>
                                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                <option value="Liechtenstein">Liechtenstein</option>
                                <option value="Lithuania">Lithuania</option>
                                <option value="Luxembourg">Luxembourg</option>
                                <option value="Macao">Macao</option>
                                <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former
                                    Yugoslav Republic of
                                </option>
                                <option value="Madagascar">Madagascar</option>
                                <option value="Malawi">Malawi</option>
                                <option value="Malaysia">Malaysia</option>
                                <option value="Maldives">Maldives</option>
                                <option value="Mali">Mali</option>
                                <option value="Malta">Malta</option>
                                <option value="Marshall Islands">Marshall Islands</option>
                                <option value="Martinique">Martinique</option>
                                <option value="Mauritania">Mauritania</option>
                                <option value="Mauritius">Mauritius</option>
                                <option value="Mayotte">Mayotte</option>
                                <option value="Mexico">Mexico</option>
                                <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
                                <option value="Moldova, Republic of">Moldova, Republic of</option>
                                <option value="Monaco">Monaco</option>
                                <option value="Mongolia">Mongolia</option>
                                <option value="Montenegro">Montenegro</option>
                                <option value="Montserrat">Montserrat</option>
                                <option value="Morocco">Morocco</option>
                                <option value="Mozambique">Mozambique</option>
                                <option value="Myanmar">Myanmar</option>
                                <option value="Namibia">Namibia</option>
                                <option value="Nauru">Nauru</option>
                                <option value="Nepal">Nepal</option>
                                <option value="Netherlands">Netherlands</option>
                                <option value="Netherlands Antilles">Netherlands Antilles</option>
                                <option value="New Caledonia">New Caledonia</option>
                                <option value="New Zealand">New Zealand</option>
                                <option value="Nicaragua">Nicaragua</option>
                                <option value="Niger">Niger</option>
                                <option value="Nigeria">Nigeria</option>
                                <option value="Niue">Niue</option>
                                <option value="Norfolk Island">Norfolk Island</option>
                                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                <option value="Norway">Norway</option>
                                <option value="Oman">Oman</option>
                                <option value="Pakistan">Pakistan</option>
                                <option value="Palau">Palau</option>
                                <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                                <option value="Panama">Panama</option>
                                <option value="Papua New Guinea">Papua New Guinea</option>
                                <option value="Paraguay">Paraguay</option>
                                <option value="Peru">Peru</option>
                                <option value="Philippines">Philippines</option>
                                <option value="Pitcairn">Pitcairn</option>
                                <option value="Poland">Poland</option>
                                <option value="Portugal">Portugal</option>
                                <option value="Puerto Rico">Puerto Rico</option>
                                <option value="Qatar">Qatar</option>
                                <option value="Reunion">Reunion</option>
                                <option value="Romania">Romania</option>
                                <option value="Russian Federation">Russian Federation</option>
                                <option value="Rwanda">Rwanda</option>
                                <option value="Saint Helena">Saint Helena</option>
                                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                <option value="Saint Lucia">Saint Lucia</option>
                                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines
                                </option>
                                <option value="Samoa">Samoa</option>
                                <option value="San Marino">San Marino</option>
                                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                <option value="Saudi Arabia">Saudi Arabia</option>
                                <option value="Senegal">Senegal</option>
                                <option value="Serbia">Serbia</option>
                                <option value="Seychelles">Seychelles</option>
                                <option value="Sierra Leone">Sierra Leone</option>
                                <option value="Singapore">Singapore</option>
                                <option value="Slovakia">Slovakia</option>
                                <option value="Slovenia">Slovenia</option>
                                <option value="Solomon Islands">Solomon Islands</option>
                                <option value="Somalia">Somalia</option>
                                <option value="South Africa">South Africa</option>
                                <option value="South Georgia and The South Sandwich Islands">South Georgia and The South
                                    Sandwich Islands
                                </option>
                                <option value="Spain">Spain</option>
                                <option value="Sri Lanka">Sri Lanka</option>
                                <option value="Sudan">Sudan</option>
                                <option value="Suriname">Suriname</option>
                                <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                <option value="Swaziland">Swaziland</option>
                                <option value="Sweden">Sweden</option>
                                <option value="Switzerland">Switzerland</option>
                                <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                <option value="Tajikistan">Tajikistan</option>
                                <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                <option value="Thailand">Thailand</option>
                                <option value="Timor-leste">Timor-leste</option>
                                <option value="Togo">Togo</option>
                                <option value="Tokelau">Tokelau</option>
                                <option value="Tonga">Tonga</option>
                                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                <option value="Tunisia">Tunisia</option>
                                <option value="Turkey">Turkey</option>
                                <option value="Turkmenistan">Turkmenistan</option>
                                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                <option value="Tuvalu">Tuvalu</option>
                                <option value="Uganda">Uganda</option>
                                <option value="Ukraine">Ukraine</option>
                                <option value="United Arab Emirates">United Arab Emirates</option>
                                <option value="United Kingdom">United Kingdom</option>
                                <option value="United States">United States</option>
                                <option value="United States Minor Outlying Islands">United States Minor Outlying
                                    Islands
                                </option>
                                <option value="Uruguay">Uruguay</option>
                                <option value="Uzbekistan">Uzbekistan</option>
                                <option value="Vanuatu">Vanuatu</option>
                                <option value="Venezuela">Venezuela</option>
                                <option value="Viet Nam">Viet Nam</option>
                                <option value="Virgin Islands, British">Virgin Islands, British</option>
                                <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                <option value="Wallis and Futuna">Wallis and Futuna</option>
                                <option value="Western Sahara">Western Sahara</option>
                                <option value="Yemen">Yemen</option>
                                <option value="Zambia">Zambia</option>
                                <option value="Zimbabwe">Zimbabwe</option>
                            </select>
                            <label for="select-country" class="edit-user-info">
                                Edit
                            </label>
                        </div>
                        <div class="my-account__form-name">
                            <label for="input-avatar" class="my-account__form-label">
                                Avatar:
                            </label>
                            <input type="file" id="input-avatar" class="my-account__form-content" disabled/>
                        </div>
                        <div style="display: flex; justify-content: center">
                            <button id="form-userinfo-submit" type="submit"
                                    class="buttons buttons--smaller" form="form-userinfo">Save
                            </button>
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
                    <form id="form-change-password" action="web-update-password" method="post" class="my-account__form">
                        <div class="my-account__form-change-password ">
                            <label for="input-current-password" class="my-account__form-label">
                                Current password
                            </label>
                            <input id="input-current-password" required type="password" class="my-account__form-input"
                                   name="input-current-password" size="50">
                        </div>
                        <div class="my-account__form-change-password">
                            <label for="input-new-password" class="my-account__form-label">
                                New password
                            </label>
                            <input id="input-new-password" name="input-new-password" required type="password"
                                   class="my-account__form-input" size="50">
                        </div>
                        <div class="my-account__form-change-password ">
                            <label for="input-confirm-password" class="my-account__form-label">
                                Password confirm
                            </label>
                            <input id="input-confirm-password" name="input-confirm-password" required type="password"
                                   class="my-account__form-input" size="50">
                        </div>
                        <div class="my-account__form-forgot-password">
                            Forgot password?
                        </div>
                        <div style="display: flex; justify-content: center">
                            <button type="submit" form="form-change-password"
                                    class="btn buttons my-account__password-btn">
                                SAVE
                            </button>
                        </div>
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

<script type="module" src="template/web/assets/js/JSPersonalInformation.js"></script>
<script>
    <c:if test="${error != null}">
    alert("${error}")
    </c:if>

    $('#input-avatar').onchange = function(event) {
        let fileList = event.target.files;
    }

    //copyfile.js

    // destination will be created or overwritten by default.
    fs.copyFile(fileList, 'C:\folderB\myfile.txt', (err) => {
        if (err) throw err;
        console.log('File was copied to destination');
    });
</script>
</body>
</html>