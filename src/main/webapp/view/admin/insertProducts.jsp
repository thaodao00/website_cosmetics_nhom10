<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Admin Insert Products</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; Add or Edit product
    </div>
    <form action="admin-insert-products" class="form" method="post">
        <h2 class="form__title">ADD PRODUCT</h2>
        <div class="form-group">
            <lable class="form__label">Id:</lable>
            <input required name="product-id" type="text" class="form__input" placeholder="Enter name product">
        </div>
        <div class="form-group">
            <lable class="form__label">Name:</lable>
            <input required name="product-name" type="text" class="form__input" placeholder="Enter name product">
        </div>
        <div class="form-group">
            <label  class="form__label">Select picture:</label>
            <input  required name="product-thumbnailImg" type="file" class="form__input">
        </div>
        <div class="form-group">
            <lable class="form__label">Price (USD):</lable>
            <input required name="product-price" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Discount (USD):</lable>
            <input required name="product-discount" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Amount:</lable>
            <input required name="product-amount" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Sold:</lable>
            <input  required name="product-quantity" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Short description:</lable>
            <textarea required name="product-description-short" type="text" class="form__input" placeholder=""
                      style="height: 50px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Long description:</lable>
            <textarea required name="product-description-long" type="text" class="form__input" placeholder=""
                      style="height: 100px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Rate:</lable>
            <input required name="product-rate" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Weight (ml):</lable>
            <input required name="product-weight" type="text" class="form__input" placeholder="ml">
        </div>

        <div class="form-group">
            <lable class="form__label">Dimension:</lable>
            <input required name="product-dimension" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable required class="form__label">Origin:</lable>
                        <select name="origin" class="form__input">
                            <c:forEach var="i" items="${origin}">
                                <option value="${i.id}">${i.name}</option>
                            </c:forEach>
                        </select>
        </div>
        <div class="form-group">
            <lable class="form__label">Category:</lable>
            <select required name="category" class="form__input">
                <c:forEach var="i" items="${category}">
                    <option value="${i.id}">${i.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">Company:</lable>
            <select required name="company" class="form__input">
                <c:forEach var="i" items="${company}">
                    <option value="${i.id}">${i.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">Tag:</lable>
            <select required name="tag" class="form__input">
                <c:forEach var="i" items="${tag}">
                    <option value="${i.id}">${i.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group-button">
            <input id="reset" class="form__btn" type="reset" value='Refresh'>
            <a href="#"><input class="form__btn form__btn--black" type="submit" value='Add'></a>
        </div>
    </form>
</div>
</body>
</html>