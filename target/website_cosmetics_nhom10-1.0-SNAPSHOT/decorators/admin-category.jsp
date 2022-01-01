<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title><dec:title default="Admin Category" /></title>
    <link href="<c:url value='/template/base.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/grid.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/admin/assets/css/header.css'/>"rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/admin/assets/css/category.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/admin/assets/css/sidebar.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/admin/assets/css/pagination.css'/>" rel="stylesheet" type="text/css" media="all"/>

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
          crossorigin="anonymous"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<div class="app">
    <%@ include file="/common/admin/header.jsp" %>
    <div class="grid wide">
        <div class="row">
            <%@ include file="/common/admin/nav.jsp" %>
            <dec:body/>
        </div>
    </div>

</div>
</body>
</html>
