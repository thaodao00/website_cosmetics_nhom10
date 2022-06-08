<%@ page import="com.example.website_cosmetics_nhom10.beans.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Update Category</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; Add or Edit Category
    </div>
    <form action="admin-update-category" class="form" method="post">
        <h2 class="form__title">UPDATE CATEGORY</h2>
<%--        <% Category category = (Category) request.getAttribute("category"); %>--%>
        <div class="form-group">
            <lable class="form__label">id:</lable>
            <input name="id" required type="text" value="${category.id}" class="form__input" placeholder="Enter name category">
        </div>
        <div class="form-group">
            <lable class="form__label">Name:</lable>
            <input name="name" required type="text" value="${category.name}" class="form__input" placeholder="Enter name category">
        </div>
        <div class="form-group-button">
            <a href="#"><input class="form__btn form__btn--black" type="submit" value='Update'></a>
        </div>
    </form>
</div>
</body>
</html>