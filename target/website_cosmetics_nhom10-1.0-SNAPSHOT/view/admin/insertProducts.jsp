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
    <form action="" class="form">
        <h2 class="form__title">Add product</h2>
        <div class="form-group">
            <lable class="form__label">Name:</lable>
            <input id="product-name" type="text" class="form__input" placeholder="Enter name product">
        </div>
        <div class="form-group">
            <lable class="form__label">Price (USD):</lable>
            <input id="product-price" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Discount (USD):</lable>
            <input id="product-discount" type="text" class="form__input" placeholder="0.00$">
        </div>
        <div class="form-group">
            <lable class="form__label">Sold:</lable>
            <input id="product-quantity" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Short description:</lable>
            <textarea id="product-description-short" type="text" class="form__input" placeholder=""
                      style="height: 50px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Long description:</lable>
            <textarea id="product-description-long" type="text" class="form__input" placeholder=""
                      style="height: 100px"></textarea>
        </div>
        <div class="form-group">
            <lable class="form__label">Rate:</lable>
            <input id="product-rate" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">Weight (ml):</lable>
            <input id="product-ml" type="text" class="form__input" placeholder="ml">
        </div>

        <div class="form-group">
            <lable class="form__label">Dimension:</lable>
            <input id="product-dimension" type="text" class="form__input" placeholder="">
        </div>
        <div class="form-group">
            <lable class="form__label">OriginID:</lable>
            <select id="origin" class="form__input">
                <option value="">1</option>
                <option value="">1</option>
                <option value="">1</option>
                <option value="">1</option>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">CategoryID:</lable>
            <select id="category" class="form__input">
                <option value="">1</option>
                <option value="">1</option>
                <option value="">1</option>
                <option value="">1</option>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">CompanyID:</lable>
            <select id="company" class="form__input">
                <option value="">1</option>
                <option value="">2</option>
                <option value="">3</option>
                <option value="">4</option>
            </select>
        </div>
        <div class="form-group">
            <lable class="form__label">TagID:</lable>
            <select id="Tag" class="form__input">
                <option value="">1</option>
                <option value="">2</option>
                <option value="">3</option>
                <option value="">0</option>
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
<%--        <input type="file" id="files" name="files" multiple><br><br>--%>
<%--        <input hidden type="file" class="form__input">--%>
        <!--                            </div>-->
        <div class="form-group-button">
            <input id="reset" class="form__btn" type="reset" value='Refresh'>
            <a href="#"><input class="form__btn form__btn--black" type="button" value='Add'></a>

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
