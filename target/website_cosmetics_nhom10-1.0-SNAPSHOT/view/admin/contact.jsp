<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Contact</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62;
        &#160; Tất cả thông tin chi nhánh
    </div>
    <div class="action">
        <a title="Thêm sản phẩm" href="admin-insert-contacts" class="action__add">
            <i class="action-icon fas fa-plus"></i>
        </a>
        <a title="Xóa sản phẩm" href="" class="action__delete">
            <i class="action-icon far fa-trash-alt"></i>
        </a>
    </div>
    <div class="contact">
        <div class="contact__header">
            <div class="contact__header-column contact__header-choose">Chọn</div>
            <div class="contact__header-column contact__header-name">Tên chi nhánh</div>
            <div class="contact__header-column contact__header-mail">Email</div>
            <div class="contact__header-column contact__header-address">Địa chỉ</div>
            <div class="contact__header-column contact__header-phone">Điện thoại</div>

            <div class="contact__header-column contact__header-update">Chỉnh sửa</div>
        </div>
        <div class="contact__body-wrap">
            <div class="contact__body">
                <div class="contact__body-column contact__body-choose">
                    <input class="check-delete" type="checkbox">
                </div>

                <div class="contact__body-column contact__body-name">
                    Viet Nam
                </div>
                <div class="contact__body-column contact__body-mail">huukha5624@gmail.com</div>
                <div class="contact__body-column contact__body-address">huyen Duc Linh Tinh Binh Thuan
                </div>
                <div class="contact__body-column contact__body-phone">090920910</div>
                <div class="contact__body-column contact__body-update">
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