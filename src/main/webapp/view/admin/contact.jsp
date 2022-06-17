<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="direct"><span><i class="direct-icon fas fa-home"></i>Home</span> &#160; &#62;
        &#160; All branch information
    </div>
    <div class="action">
        <a title="Thêm sản phẩm" href="admin-insert-contacts" class="action__add">
            <i class="action-icon fas fa-plus"></i>
        </a>

    </div>
    <div class="contact">
        <div class="contact__header">
            <div class="contact__header-column contact__header-choose"></div>
            <div class="contact__header-column contact__header-name">Name</div>
            <div class="contact__header-column contact__header-mail">Email</div>
            <div class="contact__header-column contact__header-address">Address</div>
            <div class="contact__header-column contact__header-phone">Phone</div>

            <div class="contact__header-column contact__header-update">Edit</div>
        </div>
        <div class="contact__body-wrap">
            <c:forEach var="i" items="${list}">
                <div class="contact__body">
                    <div class="contact__body-column contact__body-choose">
                        <a href="#" onclick="showMess(${i.id})" class="action__delete">
                            <i class="action-icon far fa-trash-alt"></i>
                        </a>
                    </div>

                    <div class="contact__body-column contact__body-name">
                        ${i.name}
                    </div>
                    <div class="contact__body-column contact__body-mail">${i.address}</div>
                    <div class="contact__body-column contact__body-address">
                        ${i.email}
                    </div>
                    <div class="contact__body-column contact__body-phone">${i.phone}</div>
                    <div class="contact__body-column contact__body-update">
                        <a href="admin-update-contacts?sid=${i.id}" class="account__body-icon far fa-edit"></a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="pagination">
        <ul class="pagination__list">
            <c:forEach begin="1" end="${endPage}" var="i">
                <li class="pagination__list-item">
                    <a id="${i}" href="admin-contact?index=${i}" class="pagination__list-item__link">${i}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<script>
    function showMess(id){
        let option = confirm('Are you sure to delete');
        if(option === true){
            window.location.href = 'deleteContact?sid='+id;
        }
    }
    var elem = document.getElementById('${index}');
    elem.style.backgroundColor="black"
    elem.style.color="white"
</script>
</body>
</html>