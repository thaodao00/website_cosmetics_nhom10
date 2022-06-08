<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="products" scope="request" type="java.util.List"/>
<jsp:useBean id="category" scope="request" type="java.util.List"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
</head>
<body>

<!--Content: begin-->
<div class="content-products">
    <div class="grid wide">
        <div class="row">
            <div class="col l-2 m-2 c-0">
                <div class="product__items">
                    <h3 class="product_item-title">
                        CATEGORIES
                    </h3>
                    <ul class="product__items-list">
                        <c:forEach var="i" items="${category}">
                            <a href="category?categoryId=${i.id}" class="product__item-link">
                                <li class="product__items-item  ${tag==i.id?"active-btn":""}">${i.name}</li>
                            </a>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="col l-10 m-10 c-12">
                <div class="home-filter hide-on-mobile-tablet">
                    <span class="home-filter__lable">Sort by</span>
                    <button class="home-filter__btn btn btn-sort--js" type="common">Common</button>
                    <button class="home-filter__btn btn btn--primary btn-sort--js" type="new">New</button>
                    <div class="select-input">
                        <span class="select-input__lable">Price</span>
                        <i class="select-input__icon fas fa-angle-down "></i>
                        <ul class="select-input__list">
                            <li class="select-input__item">
                                <span class="select-input__link btn-sort--js"
                                      type="low" style="cursor: pointer">Lowest first</span>
                            </li>
                            <li class="select-input__item">
                                <span class="select-input__link btn-sort--js" type="high" style="cursor: pointer">Highest
                                    first</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <nav class="mobile-category">
                    <ul class="mobile-category__list">
                        <c:forEach var="i" items="${category}">
                            <li class="mobile-category__item">
                                <a href="category?categoryId=${i.id}"
                                   class="mobile-category__link ${tag==i.id?"active-btn":""}">${i.name}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>
                <br>
                <div id="content" class="row products">
                    <c:forEach var="i" items="${products}">
                        <a href="web-product?id=${i.id}" class="product col l-2-4 m-4 c-6">
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
                                    <div class="product__sold-number"> ${i.sold} sold</div>
                                </div>
                                <div class="product__item-company-wrapper">
                                    <span class="product__item-company">${i.companyName}</span>
                                    <span class="product__item-origin-name">${i.originName}</span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
                <button onclick="loadMore()" class="buttons" style="margin: 20px auto; display: block">
                    LOAD MORE
                </button>
            </div>
        </div>
    </div>

</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    let btn = document.getElementsByClassName("buttons");

    function loadMore() {
        let amount = document.getElementsByClassName("product").length;
        jQuery.ajax({
            url: "LoadMoreServlet",
            type: "get",
            data: {
                exits: amount
            },
            success: function (data) {
                let row = document.getElementById("content");
                row.innerHTML += data;
            }
        });
    }

    $(".btn-sort--js").click(function() {
        let type = $(this).attr("type")
        console.log(type)
        jQuery.ajax({
            url: "SortProductsServlet",
            type: "get",
            data: {
                type: type
            },
            success: function (data) {
                let row = document.getElementById("content");
                row.innerHTML = data;
            }
        });
    })


</script>
</body>
</html>
