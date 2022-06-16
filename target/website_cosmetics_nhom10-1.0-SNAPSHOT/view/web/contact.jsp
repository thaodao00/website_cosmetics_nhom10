<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>

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
                    <c:forEach var="i" items="${contact}">
                        <div class="col l-3 m-6 c-12 branch">
                            <ul class="branch-item">
                                <li><h2>${i.name}</h2></li>
                                <li><a href="#">${i.address}</a></li>
                                <li><a href="#">${i.email}</a></li>
                                <li><a href="#">${i.phone}</a></li>
                            </ul>
                        </div>
                    </c:forEach>
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
                        <img src="<c:url value="/template/web/assets/img/contact-map.jpg" /> " alt="Map" class="img-map">
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
</body>
</html>