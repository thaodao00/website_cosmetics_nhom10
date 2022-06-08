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
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; Add or Edit product
    </div>
    <form action="admin-insert-products" class="form" method="post">
        <h2 class="form__title">Add product</h2>
        <div class="form-group">
            <lable class="form__label">Name:</lable>
            <input name="product-name" type="text" class="form__input" placeholder="Enter name product">
        </div>
        <div class="form-group">
            <label  class="form__label">Select picture:</label>
            <input  name="product-thumbnailImg" type="file" class="form__input">
        </div>
        <div class="form-group">
            <lable class="form__label">Price (USD):</lable>
            <input name="product-price" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Discount (USD):</lable>
            <input name="product-discount" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Sold:</lable>
            <input name="product-quantity" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Short description:</lable>
            <textarea name="product-description-short" type="text" class="form__input" placeholder=""
                      style="height: 50px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Long description:</lable>
            <textarea name="product-description-long" type="text" class="form__input" placeholder=""
                      style="height: 100px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Rate:</lable>
            <input name="product-rate" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Weight (ml):</lable>
            <input name="product-weight" type="text" class="form__input" placeholder="ml">
        </div>

        <div class="form-group">
            <lable class="form__label">Dimension:</lable>
            <input name="product-dimension" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">OriginID:</lable>
                        <select name="origin" class="form__input">
                            <option value="1">China</option>
                            <option value="2">Japan</option>
                            <option value="3">France</option>
                            <option value="4">America</option>
                            <option value="5">USA</option>
                            <option value="6">Australia</option>
                        </select>
        </div>
        <div class="form-group">
            <lable class="form__label">CategoryID:</lable>
            <select name="category" class="form__input">
                <option value="1">Toner</option>
                <option value="2">Serum</option>
                <option value="3">Face cleaner</option>
                <option value="4">Sunscreen</option>
                <option value="5">Moisturizer</option>
                <option value="6">Mask</option>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">CompanyID:</lable>
            <select name="company" class="form__input">
                <option value="1">Wal-Mart</option>
                <option value="2">Target</option>
                <option value="3">IKEA</option>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">TagID:</lable>
            <select name="tag" class="form__input">
                <option value="1">Hot</option>
                <option value="2">New</option>
                <option value="3">Sale</option>
                <option value="4">normal</option>
            </select>
        </div>
        <%--        //<label for="" class="form__label">Chọn ảnh:</label>--%>
        <!--                            <div class="form-group-img">-->
        <!--                                <div class="form__img-wrap">-->
        <!--                                    <label for = 'img1' class="form__img-icon fas fa-plus"></label>-->
        <!--                                    &lt;!&ndash; <img id="form__img1" src="" alt="" class="form__img"> &ndash;&gt;-->
        <!--                                </div>-->
        <!--                                <div class="form__img-wrap">-->
        <!--                                    <label for="img2" class="form__img-icon fas fa-plus"></label>-->
        <!--                                    &lt;!&ndash; <img id="form__img2" src="" alt="" class="form__img"> &ndash;&gt;-->
        <!--                                </div>-->

        <%--        <input hidden type="file" class="form__input">--%>
        <!--                            </div>-->
        <div class="form-group-button">
            <input id="reset" class="form__btn" type="reset" value='Refresh'>
            <a href="#"><input class="form__btn form__btn--black" type="submit" value='Add'></a>
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