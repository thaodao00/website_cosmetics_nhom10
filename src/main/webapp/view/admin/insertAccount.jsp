<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Insert Account</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; Add or Edit account
    </div>
    <form action="" class="form">
        <h2 class="form__title">ADD ACCOUNT</h2>
<%--        <div class="form-group">--%>
<%--            <lable class="form__label">Mã TK:</lable>--%>
<%--            <input id="account-id" type="text" class="form__input" placeholder="">--%>
<%--        </div>--%>
        <div class="form-group">
            <lable class="form__label">User name:</lable>
            <input id="account-name" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Full name:</lable>
            <input id="account-fullName" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Password:</lable>
            <input id="account-password" type="password" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Email:</lable>
            <input id="account-mail" type="text" class="form__input" placeholder="...@gmail.com">
        </div>
        <div class="form-group">
            <lable class="form__label">Phone:</lable>
            <input id="account-phone" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Country:</lable>
            <textarea id="account-address" type="text" class="form__input" placeholder=""
                      style="height: 50px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Role:</lable>
            <input id="account-role" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Avatar:</lable>
            <input id="account-avatar" type="file" class="form__input" placeholder="">
        </div>
        <div class="form-group-button">
            <input id="reset" class="form__btn" type="reset" value='Refresh'>
            <a href="#"><input class="form__btn form__btn--black" type="button" value='Add'></a>
        </div>
    </form>
</div>
</body>
</html>
