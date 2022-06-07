<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Account</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; All account
    </div>
    <div class="action">
        <a title="Thêm sản phẩm" href="admin-insert-account" class="action__add">
            <i class="action-icon fas fa-plus"></i>
        </a>

    </div>
    <div class="account">
        <div class="account__header">
            <div class="contact__header-column contact__header-choose"></div>
            <div class="contact__header-column account__header-name">User name</div>
            <div class="contact__header-column account__header-mail">Email</div>
            <div class="contact__header-column account__header-password">Password</div>
            <div class="contact__header-column account__header-phone">Phone</div>
            <div class="contact__header-column account__header-address">Address</div>
            <div class="contact__header-column account__header-update">Edit</div>
        </div>
        <div class="account__body-wrap">
            <div class="account__body">
                <div class="contact__body-column account__body-choose">
                    <a href="" class="action__delete">
                        <i class="action-icon far fa-trash-alt"></i>
                    </a>
                </div>
                <div class="contact__body-column account__body-name">
                    ThaoDao
                </div>
                <div class="contact__body-column account__body-mail">thuthao5624@gmail.com</div>
                <div class="contact__body-column account__body-password">111111111111</div>
                <div class="contact__body-column account__body-phone">090920910</div>
                <div class="contact__body-column account__body-address">huyen Duc Linh Tinh Binh Thuan</div>
                <div class="contact__body-column account__body-update">
                    <a title="chỉnh sửa sản phẩm" href="" class="account__body-icon far fa-edit"></a>
                </div>
            </div>
            <div class="account__body">
                <div class="contact__body-column account__body-choose">
                    <input class="check-delete" type="checkbox">
                </div>
                <div class="contact__body-column account__body-name">
                    HuuKha
                </div>
                <div class="contact__body-column account__body-mail">huukha5624@gmail.com</div>
                <div class="contact__body-column account__body-password">111111111111</div>
                <div class="contact__body-column account__body-phone">090920910</div>
                <div class="contact__body-column account__body-address">huyen Duc Linh Tinh Binh Thuan</div>

                <div class="contact__body-column account__body-update">
                    <a title="chỉnh sửa sản phẩm" href="" class="account__body-icon far fa-edit"></a>
                </div>
            </div>
            <div class="account__body">
                <div class="contact__body-column account__body-choose">
                    <input class="check-delete" type="checkbox">
                </div>
                <div class="contact__body-column account__body-name">
                    HueMan
                </div>
                <div class="contact__body-column account__body-mail">hueman5624@gmail.com</div>
                <div class="contact__body-column account__body-password">111111111111</div>
                <div class="contact__body-column account__body-phone">090920910</div>
                <div class="contact__body-column account__body-address">huyen Duc Linh Tinh Binh Thuan</div>
                <div class="contact__body-column account__body-update">
                    <a title="chỉnh sửa sản phẩm" href="" class="account__body-icon far fa-edit"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="pagination">
        <ul class="pagination__list">
            <li class="pagination__list-item">
                <a href="" class="pagination__list-item__link">1</a>
            </li>
            <li class="pagination__list-item">
                <a href="" class="pagination__list-item__link">2</a>
            </li>
            <li class="pagination__list-item">
                <a href="" class="pagination__list-item__link"><i class="fas fa-chevron-right"></i></a>
            </li>
        </ul>
    </div>
</div>
<script>
    const btnDelete = document.querySelector('.action__delete');
    const checkDeletes = document.querySelectorAll('.check-delete');

    checkDeletes.forEach(check => {
        check.onclick = e => {
            const checkEl = [...checkDeletes].find(item => {
                return item.matches('.check-delete:checked');
            })
            if (checkEl) {
                btnDelete.style = `opacity: 1; pointer-events: all`;
            } else {
                btnDelete.style = `opacity: 0.5; pointer-events: none`;
            }
        }
    })

</script>
</body>

</html>
