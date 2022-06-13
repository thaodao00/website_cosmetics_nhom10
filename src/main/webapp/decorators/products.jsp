<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><dec:title default="Products"/></title>
    <link href="<c:url value='/template/base.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/grid.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/assets/css/main.css' />" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/web/assets/css/responsive.css' />" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="<c:url value='/template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css' />"
          rel="stylesheet" type="text/css" media="all"/>
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
    <%@ include file="/common/web/footer.jsp" %>
    <%--Modal search--%>
    <%@ include file="/common/web/modalSearch.jsp" %>
</div>

</body>
</html>
