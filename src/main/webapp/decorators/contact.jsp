<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title><dec:title default="Contact Us"/></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="template/base.css">
    <link rel="stylesheet" href="template/grid.css">
    <link rel="stylesheet" href="template/web/assets/css/main.css">
    <link rel="stylesheet" href="template/web/assets/css/responsive.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comforter+Brush&family=Estonia&family=Kaushan+Script&family=Marck+Script&family=Nothing+You+Could+Do&family=Patrick+Hand&family=Roboto&family=Satisfy&family=Sawarabi+Gothic&family=Tangerine:wght@700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
</head>
<body>

<!-- header -->
<%@ include file="/common/web/header.jsp" %>
<!-- header -->

<dec:body/>

<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->
<%--Modal search--%>
<%@ include file="/common/web/modalSearch.jsp" %>
<script src="template/web/assets/js/showHide.js"></script>
</body>
</html>