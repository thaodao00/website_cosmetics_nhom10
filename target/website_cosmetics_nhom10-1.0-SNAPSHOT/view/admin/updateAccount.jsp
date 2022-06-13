<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Update Account</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; Add or Edit account
    </div>
    <form action="admin-update-account" method="post" class="form">
        <h2 class="form__title">UPDATE ACCOUNT</h2>
        <div class="form-group">
            <lable class="form__label">Id:</lable>
            <input value="${user.id}" name="account-id" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">User name:</lable>
            <input value="${user.username}" name="account-name" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Full name:</lable>
            <input value="${user.fullName}" name="account-fullName" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Password:</lable>
            <input value="${user.password}" name="account-password" type="password" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Email:</lable>
            <input value="${user.email}" name="account-mail" type="text" class="form__input" placeholder="...@gmail.com">
        </div>
        <div class="form-group">
            <lable class="form__label">Phone:</lable>
            <input value="${user.phone}" name="account-phone" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Country:</lable>
            <textarea name="account-address" type="text" class="form__input" placeholder=""
                      style="height: 50px">${user.country}</textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Role:</lable>
            <select required name="roleid" class="form__input">
                    <option value="1">Admin</option>
                    <option value="2">User</option>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">Avatar:</lable>
            <input name="account-avatar" type="file" class="form__input" placeholder="">
        </div>
        <div class="form-group-button">
            <a href="#"><input class="form__btn form__btn--black" type="submit" value='Update'></a>
        </div>
    </form>
</div>
</body>
</html>
