<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title><dec:title default="Admin Home" /></title>
    <link href="<c:url value='/template/base.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/grid.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <link href="<c:url value='/template/admin/assets/css/header.css'/>"rel="stylesheet" type="text/css" media="all"/>

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
          crossorigin="anonymous"/>
    <link href="<c:url value='/template/admin/assets/css/sidebar.css'/>" rel="stylesheet" type="text/css" media="all"/>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <script type="text/javascript" src="<c:url value='/template/admin/assets/js/chart.js'/>"></script>
</div>
</body>
</html>
