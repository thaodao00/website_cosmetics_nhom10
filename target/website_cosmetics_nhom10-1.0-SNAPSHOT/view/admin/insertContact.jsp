<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Insert Contact</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; Add or Edit branch
    </div>
    <form action="admin-insert-contacts" method="post" class="form">
        <h2 class="form__title">Add branch</h2>
        <div class="form-group">
            <lable class="form__label">Name:</lable>
            <input name="contact-name" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Address:</lable>
            <input name="contact-address" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Email:</lable>
            <input name="contact-email" type="text" class="form__input" placeholder="...@mail.com">
        </div>
        <div class="form-group">
            <lable class="form__label">Phone:</lable>
            <input name="contact-phone" type="text" class="form__input" placeholder=" ">
        </div>

        <div class="form-group-button">
            <input id="reset" class="form__btn" type="reset" value='Refresh'>
            <a href="#"><input class="form__btn form__btn--black" type="submit" value='Add'></a>
        </div>
    </form>
</div>
</body>
</html>
