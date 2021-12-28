<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="template/web/assets/css/base.css">
    <link rel="stylesheet" href="template/web/assets/css/grid.css">
    <link rel="stylesheet" href="template/web/assets/css/main.css">
    <link rel="stylesheet" href="template/web/assets/css/responsive.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Comforter+Brush&amp;family=Estonia&amp;family=Kaushan+Script&amp;family=Marck+Script&amp;family=Nothing+You+Could+Do&amp;family=Patrick+Hand&amp;family=Roboto&amp;family=Satisfy&amp;family=Sawarabi+Gothic&amp;family=Tangerine:wght@700&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="template/web/assets/font/fontawesome-free-5.15.3-web/css/all.min.css">
</head>

<body>
<div id="app">
    <%@ include file="/common/web/header.jsp" %>
    <div class="container">
        <dec:body/>
    </div>
    <%@ include file="/common/web/footer.jsp" %>
    <!-- footer -->
</div>

<script>
    var slideIndex = 0
    showSlides()

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>
<script src="template/web/assets/js/showHide.js"></script>
</body>
</html>
