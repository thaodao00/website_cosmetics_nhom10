<%@ page import="com.example.website_cosmetics_nhom10.beans.Product" %>
<%@ include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="products" scope="request" type="java.util.List"/>
<jsp:useBean id="reviews" scope="request" type="java.util.List"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
</head>
<body>
<!-- Slider begin -->
<div class="product-slider">
    <div class="product-slider-wrapper">
        <div class="product-slider__background"></div>
        <div class="product-slider__title ">Shop</div>
    </div>
</div>
<!-- Slider end -->
<div class="product-container">
    <div class="product-container__inner">
        <div class="product-frame">
            <div class="grid wide product-content">
                <div class="row">
                    <div class="col l-6 m-7 c-12">
                        <div class="product-content__img-wrapper products-slidesshow">
                            <div class="mySlider fadeSlider">
                                <% Product product = (Product) request.getAttribute("product"); %>
                                <img class="mySlider-img"
                                     src="<c:url value="/template/web/assets/img/ordinary/${product.thumbnailImg}"/>"
                                     style="height: 440px"/>
                            </div>
                            <div class="mySlider fadeSlider">
                                <img class="mySlider-img" src="assets/img/product/granary/zin10%25.webp"
                                     style="height: 440px"/>

                            </div>
                            <a class="prev" onclick="plusSlider(-1)" style="color: black;left: 0">
                                <i class="fas fa-chevron-circle-left"></i>
                            </a>
                            <a class="next" onclick="plusSlider(1)" style="color: black; right:0">
                                <i class="fas fa-chevron-circle-right"></i>
                            </a>
                        </div>
                    </div>

                    <script>
                        let index = 1;
                        showSliders(index)

                        function plusSlider(n) {
                            showSliders(index += n);
                        }

                        function currentSlider(n) {
                            showSliders(index = n)
                        }

                        function showSliders(n) {
                            let i;
                            let slider = document.getElementsByClassName("mySlider");
                            if (n > slider.length) {
                                index = 1
                            }
                            if (n < 1) {
                                index = slider.length;
                            }
                            for (i = 0; i < slider.length; i++) {
                                slider[i].style.display = "none";
                            }
                            slider[index - 1].style.display = "block";
                        }
                    </script>
                    <div class="col l-6 m-5 c-12">
                        <div class="product-content__text-wrapper">
                            <div class="product-content__text">
                                <div class="product-content__text__title">${product.name}</div>
                                <p class="product-price price">
                                    <span class="product-price__old del">$${product.price}</span>

                                    <span class="product-price__new">
                                        $${product.discount}
                                    </span>
                                </p>

                                <div class="product-content__rating">
                                    <i class="fas fa-star star-rating"></i>
                                    <i class="fas fa-star star-rating"></i>
                                    <i class="fas fa-star star-rating"></i>
                                    <i class="fas fa-star star-rating"></i>
                                    <i class="fas fa-star star-rating"></i>

                                    <a href="#" class="product-content__rating-description">(
                                        ${reviews.size()}
                                        customer review)</a>
                                </div>

                                <div class="product-content__details-description">
                                    <p>${product.shortDescription}</p>
                                </div>

                                <div class="product-content__quantity-vs-purchase">
                                    <div class="quantity-buttons">
                                        <button class="quantity-buttons--minus">-</button>
                                        <div id="quantity-product-be" class="quantity-buttons--number">1</div>
                                        <button class="quantity-buttons--plus">+</button>
                                    </div>

                                    <div id="add-product-be" class="purchase-buttons buttons">Add</div>
                                </div>

                                <a href="#" class="product-content__add-to-wishlist">
                                    <i class="far fa-heart product-content__add-to-wishlist__icon"></i>
                                    Add to Wishlist
                                </a>

                                <div class="product-content__meta">
                                <span class="meta__sku-wrapper">
                                SKU:
                                <span class="meta__sku">${product.id}</span>
                                </span>

                                    <span class="meta__category-wrapper">
                                Category:
                                <span class="meta__category">${product.categoryName}</span>
                                </span>

                                    <span class="meta__tag-wrapper">
                                Tag:
                                <span class="meta__tag">${product.tagName}</span>
                                </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Product tabs -->
                <div class="grid wide product-content__tabs">
                    <ul class="product-content__tabs-list">
                        <li class="product-content__tabs-item tabs-item__description tabs-active">Description</li>
                        <li class="product-content__tabs-item tabs-item__info">Additional information</li>
                        <li class="product-content__tabs-item tabs-item__review">Review</li>
                    </ul>

                    <div class="product-content__tabs-content">
                        <div class="tabs-content__item tabs-content__description tabs-active">${product.longDescription}
                        </div>

                        <div class="tabs-content__item tabs-content__info">
                            <div class="tabs-content__info-weight">
                                weight
                                <span>${product.weight}</span>
                            </div>
                            <div class="tabs-content__info-dimensions">
                                dimensions
                                <span>${product.dimension}</span>
                            </div>
                        </div>
                        <div class="tabs-content__item tabs-content__review">
                            <!-- review: start -->
                            <div class="product-review__wrapper">
                                <span class="product-review__title">Product reviews</span>
                                <div class="product-review__header">
                                    <div class="product-review__rating-wrapper">
                                        <span class="product-review__average-rating">5</span>
                                        /5
                                        <div class="product-review__rating">
                                            <i class="fas fa-star star-rating"></i>
                                            <i class="fas fa-star star-rating"></i>
                                            <i class="fas fa-star star-rating"></i>
                                            <i class="fas fa-star star-rating"></i>
                                            <i class="fas fa-star star-rating"></i>
                                        </div>
                                    </div>
                                    <div class="product-review__body">
                                        <!-- comment -->
                                        <div class="product-comment__wrapper">
                                            <div class="product-comment__user-img">
                                                <img src="./assets/img/admin_info/DaoThiThuThao.jpg" alt="avatar">
                                            </div>
                                            <div class="product-comment__body">
                                                <span class="product-comment__user-name">Thao</span>
                                                <div class="product-content__rating product-content__user-rating">
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                </div>
                                                <div class="product-comment__content-wrapper">
                                                    <span class="product-comment__content">Good product</span>
                                                </div>
                                                <div class="product-comment__created-time-wrapper">
                                                    <span class="product-comment__created-time">2021-11-16 22:30</span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- comment -->
                                        <div class="product-comment__wrapper">
                                            <div class="product-comment__user-img">
                                                <img src="./assets/img/admin_info/NguyenHuuKha2.jpg" alt="avatar">
                                            </div>
                                            <div class="product-comment__body">
                                                <span class="product-comment__user-name">Kha</span>
                                                <div class="product-content__rating product-content__user-rating">
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                </div>
                                                <div class="product-comment__content-wrapper">
                                                    <span class="product-comment__content">Did anyone get pimples after using it?</span>
                                                </div>
                                                <div class="product-comment__created-time-wrapper">
                                                    <span class="product-comment__created-time">2021-11-17 2:52</span>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- comment -->
                                        <div class="product-comment__wrapper">
                                            <div class="product-comment__user-img">
                                                <img src="./assets/img/admin_info/TrieuHueMan2.jpg" alt="avatar">
                                            </div>
                                            <div class="product-comment__body">
                                                <span class="product-comment__user-name">Man</span>
                                                <div class="product-content__rating product-content__user-rating">
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                    <i class="fas fa-star star-rating"></i>
                                                </div>
                                                <div class="product-comment__content-wrapper">
                                                    <span class="product-comment__content">This serum doesn't suit my skin</span>
                                                </div>
                                                <div class="product-comment__created-time-wrapper">
                                                    <span class="product-comment__created-time">2021-11-16 22:30</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-load-comment__wrapper">
                                            <button class="buttons">load more...</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- review: end -->

                            <textarea id="your-review-text" type="text" placeholder="Write your review"></textarea>
                            <input id="your-name-text" type="text" placeholder="Your name" required>
                            <input id="your-email-text" type="text" placeholder="Your email" required>
                            <div class="review-commit__wrapper">
                                <button class="buttons">submit</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Related products -->


            <div class="grid wide">
                <div class="related-products__title">related products</div>
                <!-- Product recommend -->
                <div class="row products">
                    <c:forEach var="i" items="${products}">
                        <a href="web-product?id=${i.id}" class="col l-2-4 m-4 c-6">
                            <div class="product__item">
                                <img class="product__item-img"
                                     src="<c:url value="/template/web/assets/img/ordinary/${i.thumbnailImg}"/>"/>
                                <h5 class="product__item-name">
                                        ${i.name}
                                </h5>
                                <div class="product__item-price-wrapper">
                                    <h3 class="product__item-price product__item-price--old">
                                        $${i.price}
                                    </h3>
                                    <h3 class="product__item-price">
                                        $${i.discount}
                                    </h3>
                                </div>
                                <div class="star-link-sold-wrapper">
                                    <div class="star-link">
                                        <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                        <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                        <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                        <i class="fa fa-star star--fill" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="product__sold-number">${i.sold} sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">${i.companyName}</span>
                                    <span class="product__item-origin-name">${i.originName}</span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>


</div>


<%--<script src="template/web/assets/js/JSProduct.js"></script>--%>
<%--<script type="module" src="template/web/assets/js/showHide.js"></script>--%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $("#add-product-be").click(function () {
            const pid = ${product.id};
            const quantity = $("#quantity-product-be").text();
            console.log(pid + " " + quantity);
            $.ajax({
                url: "api-add-to-cart",
                method: "POST",
                data: {
                    pid: pid,
                    quantity: quantity
                },
                success: function (data) {
                    alert("Add to cart successfully!")
                    $(".cart-link-notice").text(data)
                },
                error: function (data) {
                    alert("Error")
                }
            })
        })
    })

</script>
</div>
</body>
</html>
