
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <div class="direct"><span><i class="direct-icon fas fa-home"></i>Trang chủ</span> &#160; &#62; &#160; Thêm hoặc sửa sản phẩm </div>
                <form action="" class="form">
                    <h2 class="form__title">THÊM SẢN PHẨM</h2>
                    <div class="form-group">
                        <lable class="form__label">Tên sản phẩm:</lable>
                        <input id="product-name" type="text" class="form__input" placeholder="Áo polo phối khóa cổ">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Giá sản phẩm (USD):</lable>
                        <input id="product-price" type="text" class="form__input" placeholder="0.00$">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Khối lượng (ml):</lable>
                        <input id="product-ml" type="text" class="form__input" placeholder="0.0ml">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Số lượng:</lable>
                        <input id="product-quantity" type="text" class="form__input" placeholder="10">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Phần trăm giảm giá (nếu có):</lable>
                        <input id="product-sale" type="text" class="form__input" placeholder="5">
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Mô tả ngắn:</lable>
                        <textarea id="product-description-short" type="text" class="form__input" placeholder="" style="height: 50px"></textarea>
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Mô tả dài:</lable>
                        <textarea id="product-description-long" type="text" class="form__input" placeholder=""style="height: 100px"></textarea>
                    </div>
                    <div class="form-group">
                        <lable class="form__label">Loại danh muc:</lable>
                        <select id="" class="form__input">
                            <option value="">Chọn danh mục</option>
                        </select>
                    </div>
                    <label for="" class="form__label">Chọn ảnh:</label>
                    <!--                            <div class="form-group-img">-->
                    <!--                                <div class="form__img-wrap">-->
                    <!--                                    <label for = 'img1' class="form__img-icon fas fa-plus"></label>-->
                    <!--                                    &lt;!&ndash; <img id="form__img1" src="" alt="" class="form__img"> &ndash;&gt;-->
                    <!--                                </div>-->
                    <!--                                <div class="form__img-wrap">-->
                    <!--                                    <label for="img2" class="form__img-icon fas fa-plus"></label>-->
                    <!--                                    &lt;!&ndash; <img id="form__img2" src="" alt="" class="form__img"> &ndash;&gt;-->
                    <!--                                </div>-->
                    <input type="file" id="files" name="files" multiple><br><br>
                    <input hidden type="file" class="form__input">
                    <!--                            </div>-->
                    <div class="form-group-button">
                        <input id="reset" class="form__btn" type="reset" value = 'Nhập lại'>
                        <a href="./products.html"><input class="form__btn form__btn--black" type="button" value = 'Thêm'></a>

                    </div>
                </form>
            </div>

<!--    <script>-->
<!--        const imgWrap = document.querySelectorAll('.form__img-wrap');-->
<!--        const resetBtn = document.getElementById('reset');-->
<!--        const img1 = document.getElementById('img1');-->
<!--        const img2 = document.getElementById('img2');-->
<!--        let file1;-->

<!--        img1.onchange = e => {-->
<!--            file1 = URL.createObjectURL(e.target.files[0]);-->
<!--            const img1El = `<img id="form__img1" src="${file1}" alt="" class="form__img">`;-->
<!--            imgWrap[0].insertAdjacentHTML('beforeend', img1El);-->
<!--        }-->
<!--        img2.onchange = e => {-->
<!--            const file2 = URL.createObjectURL(e.target.files[0]);-->
<!--            const img2El = `<img id="form__img2" src="${file2}" alt="" class="form__img">`;-->
<!--            imgWrap[1].insertAdjacentHTML('beforeend', img2El);-->
<!--        }-->
<!--        resetBtn.onclick = e => {-->
<!--            const formImg1 = document.getElementById('form__img1');-->
<!--            const formImg2 = document.getElementById('form__img2');-->
<!--            formImg1 ? formImg1.remove() : undefined;-->
<!--            formImg2 ? formImg2.remove() : undefined;-->
<!--        }-->
<!--    </script>-->
</body>
</html>
