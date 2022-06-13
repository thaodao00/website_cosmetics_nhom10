<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
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
            <div class="contact__header-column account__header-role">Role</div>
            <div class="contact__header-column account__header-update">Edit</div>
        </div>
        <div class="account__body-wrap">
            <c:forEach var="i" items="${listUser}">
            <div class="account__body">
                <div class="contact__body-column account__body-choose">
                    <a href="#" onclick="showMess(${i.id})" class="action__delete">
                        <i class="action-icon far fa-trash-alt"></i>
                    </a>
                </div>
                <div class="contact__body-column account__body-name">
                    ${i.username}
                </div>
                <div class="contact__body-column account__body-mail">${i.email}</div>
                <div class="contact__body-column account__body-password">${i.password}</div>
                <div class="contact__body-column account__body-phone">${i.phone}</div>
                <div class="contact__body-column account__body-address">${i.country}</div>
                <div class="contact__body-column account__body-role">
                    <c:if test="${i.roleId == 1}">
                        User
                    </c:if>
                    <c:if test="${i.roleId == 2}">
                        Admin
                    </c:if>
                </div>
                <div class="contact__body-column account__body-update">
                    <a title="chỉnh sửa sản phẩm" href="admin-update-account?sid=${i.id}" class="account__body-icon far fa-edit"></a>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    <div class="pagination">
        <ul class="pagination__list">
            <c:forEach begin="1" end="${endPage}" var="i">
                <li class="pagination__list-item">
                    <a id="${i}" href="admin-account?index=${i}" class="pagination__list-item__link">${i}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<script>
    function showMess(id){
        const option = confirm('Are you sure to delete');
        if(option === true){
            window.location.href = 'deleteAccount?sid='+id;
        }
    }
    var elem = document.getElementById('${index}');
    elem.style.backgroundColor="black"
    elem.style.color="white"
</script>
</body>
</html>
