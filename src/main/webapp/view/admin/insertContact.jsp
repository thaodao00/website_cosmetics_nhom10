
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
                <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62; &#160; Thêm hoặc sửa chi nhánh </div>
                <form action="" class="form">
                    <h2 class="form__title">THÊM THÔNG TIN CHI NHÁNH</h2>
                    <div class="form-group">
                        <lable class="form__label">Tên chi nhánh:</lable>
                        <input id="account-id" type="text" class="form__input" placeholder="">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Email:</lable>
                        <input id="account-name" type="text" class="form__input" placeholder="">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Địa chỉ:</lable>
                        <input id="account-mail" type="text" class="form__input" placeholder="...@gmail.com">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Điện thoại:</lable>
                        <input id="account-password" type="text" class="form__input" placeholder="">
                    </div>

                    <div class="form-group-button">
                        <input id="reset" class="form__btn" type="reset" value = 'Nhập lại'>
                        <a href="./contact-admin.html"><input class="form__btn form__btn--black" type="button" value = 'Thêm' ></a>
                    </div>
                </form>
            </div>

</body>
</html>
