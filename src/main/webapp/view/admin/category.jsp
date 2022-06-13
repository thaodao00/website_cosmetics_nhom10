<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%--<jsp:useBean id="category" scope="request" type="java.util.List"/>--%>
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
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62; &#160; All Category
    </div>
    <div class="action">
        <a title="Thêm mục loại" href="admin-insert-category" class="action__add">
            <i class="action-icon fas fa-plus"></i>
        </a>
    </div>
    <div class="categories">
        <div class="categories__header">
            <p class="categories__header-column categories__header-choose"></p>
            <div class="categories__header-column categories__header-name">Name</div>
            <div class="categories__header-column categories__header-update">Edit</div>
        </div>
        <div class="categories__body-wrap">
            <c:forEach var="i" items="${category}">
                <div class="categories__body">
                    <div class="categories__body-column categories__body-choose">
                        <a href="#" onclick="showMess(${i.id})" class="action__delete">
                            <i class="action-icon far fa-trash-alt"></i>
                        </a>
                    </div>
                    <div class="categories__body-column categories__body-name">${i.name}</div>
                    <div class="categories__body-column categories__body-update">
                        <a href="admin-update-account?sid=${i.id}" class="categories__body-icon far fa-edit"></a>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
    <div class="pagination">
        <ul class="pagination__list">
            <c:forEach begin="1" end="${endPage}" var="i">
                <li class="pagination__list-item">
                    <a id="${i}" href="admin-category?index=${i}" class="pagination__list-item__link">${i}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<script>
    function showMess(id){
        const option = confirm('Are you sure to delete');
        if(option === true){
            window.location.href = 'deleteCategory?sid='+id;
        }
    }
    var elem = document.getElementById('${index}');
    elem.style.backgroundColor="black"
    elem.style.color="white"
</script>
</body>
</html>