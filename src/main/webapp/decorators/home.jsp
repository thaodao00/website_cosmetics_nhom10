<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><dec:title default="Home" /></title>
    <link href="<c:url value='/template/base.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/grid.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/assets/css/main.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/assets/css/responsive.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Comforter+Brush&family=Estonia&family=Kaushan+Script&family=Marck+Script&family=Nothing+You+Could+Do&family=Patrick+Hand&family=Roboto&family=Satisfy&family=Sawarabi+Gothic&family=Tangerine:wght@700&display=swap"
            rel="stylesheet">
</head>
<body>
<div id="app">
    <!-- header -->
    <%@ include file="/common/web/header.jsp" %>
    <!-- header -->

    <dec:body/>

    <!-- modal account -->
    <%@ include file="/common/modal_account.jsp" %>
    <!-- modal account -->

    <!-- footer -->
    <%@ include file="/common/web/footer.jsp" %>
    <!-- footer -->

</div>
<script type="text/javascript" src="<c:url value='/template/web/assets/js/JSBase.js' />"></script>
<script type="text/javascript" src="<c:url value='/template/web/assets/js/showHide.js' />"></script>

</body>
</html>
