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