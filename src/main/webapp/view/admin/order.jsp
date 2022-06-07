<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
          crossorigin="anonymous"/>

    <title>Admin Order</title>
</head>
<body>
<div class="col l-9 m-10 c-12">
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; All order
    </div>
    <div class="action">
    </div>
    <div class="order">
        <div class="order__header">
            <div class="order__header-column order__header-choose"></div>
            <div class="order__header-column order__header-id">ID Order </div>
            <div class="order__header-column order__header-name">Customer</div>
            <div class="order__header-column order__header-quantity">Quantity</div>
            <div class="order__header-column order__header-price">Total order</div>
            <div class="order__header-column order__header-date">Create at</div>
            <div class="order__header-column order__header-ttdh">Status order</div>
            <div class="order__header-column order__header-update">Edit</div>
        </div>
        <div class="order__body-wrap">
            <div class="order__body">
                <div class="order__body-column order__body-choose">
                    <a  href="" class="action__delete">
                        <i class="action-icon far fa-trash-alt"></i>
                    </a>
                </div>
                <div class="order__body-column order__body-id">0111111</div>
                <div class="order__body-column order__body-name">
                    <ul>
                        <li>
                            Dao Thi Thu Thao
                        </li>
                        <li>
                            090902020
                        </li>
                        <li>
                            Hem 41/35 duong Cau Xay, phuong Tan Phu, Tp. Thu Duc
                        </li>
                    </ul>
                </div>
                <div class="order__body-column order__body-quantity">2</div>
                <div class="order__body-column order__body-price">58.00$</div>
                <div class="order__body-column order__body-date">28/12/2021</div>
                <div class="order__body-column order__body-ttdh">Don hang moi</div>

                <div class="order__body-column order__body-update">
                    <a title="chỉnh sửa sản phẩm" href="" class="order__body-icon far fa-edit"></a>
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
