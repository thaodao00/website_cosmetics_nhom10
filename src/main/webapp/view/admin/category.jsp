
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

    <title>Admin Category</title>
</head>
<body>
    <div class="col l-9 m-10 c-12">
                <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62; &#160; Danh mục loại </div>
                <div class="action">
                    <a title="Thêm mục loại" href="./insert-category.html" class="action__add">
                        <i class="action-icon fas fa-plus"></i>
                    </a>
                    <a title="Xóa mục loại" href="" class="action__delete">
                        <i class="action-icon far fa-trash-alt"></i>
                    </a>
                </div>
                <div class="categories">
                    <div class="categories__header">
                        <p class="categories__header-column categories__header-choose">Chọn</p>
                        <div class="categories__header-column categories__header-name">Tên danh mục</div>
                        <div class="categories__header-column categories__header-update">Chỉnh sửa</div>
                    </div>
                    <div class="categories__body-wrap">
                        <div class="categories__body">
                            <div class="categories__body-column categories__body-choose">
                                <input class="check-delete" type="checkbox">
                            </div>
                            <div class="categories__body-column categories__body-name">Áo nam</div>
                            <div class="categories__body-column categories__body-update">
                                <a title="chỉnh sửa mục loại" href="" class="categories__body-icon far fa-edit"></a>
                            </div>
                        </div>
                        <div class="categories__body">
                            <div class="categories__body-column categories__body-choose">
                                <input class="check-delete" type="checkbox">
                            </div>
                            <div class="categories__body-column categories__body-name">Quần nam</div>
                            <div class="categories__body-column categories__body-update">
                                <a title="chỉnh sửa mục loại" href="" class="categories__body-icon far fa-edit"></a>
                            </div>
                        </div>
                        <div class="categories__body">
                            <div class="categories__body-column categories__body-choose">
                                <input class="check-delete" type="checkbox">
                            </div>
                            <div class="categories__body-column categories__body-name">Áo nữ</div>
                            <div class="categories__body-column categories__body-update">
                                <a title="chỉnh sửa mục loại" href="" class="categories__body-icon far fa-edit"></a>
                            </div>
                        </div>
                        <div class="categories__body">
                            <div class="categories__body-column categories__body-choose">
                                <input class="check-delete" type="checkbox">
                            </div>
                            <div class="categories__body-column categories__body-name">Quần nữ</div>
                            <div class="categories__body-column categories__body-update">
                                <a title="chỉnh sửa mục loại" href="" class="categories__body-icon far fa-edit"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pagination">
                    <ul class="pagination__list">
                        <li class="pagination__list-item">
                            <a href="" class="pagination__list-item__link active">1</a>
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
                if(checkEl) {
                    btnDelete.style = `opacity: 1; pointer-events: all`;
                }else {
                    btnDelete.style = `opacity: 0.5; pointer-events: none`;
                }
            }
        })
    </script>
</body>
</html>