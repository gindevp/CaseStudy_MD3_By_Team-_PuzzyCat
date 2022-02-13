<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fa fa-phone"></i> +0948 6789</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> puzzycat478@gmai.com</a></li>
                <li><a href="https://www.google.com/maps/place/34b+Đường+Mỹ+Đình,+Mỹ+Đình,+Nam+Từ+Liêm,+Hà+Nội/data=!4m2!3m1!1s0x313454b116bd4c0f:0x67e65190cb30a38c?sa=X&ved=2ahUKEwi9y9SK7O_1AhWmwosBHYJLBQUQ8gF6BAgPEAE"><i class="fa fa-map-marker"></i> 34B My Dinh - Nam Tu Lien - HN</a></li>
            </ul>
            <ul class="header-links pull-right">
                <li><a href="#"><i class="fa fa-dollar"></i> VND</a></li>
                <li><a href="login/index.jsp"><i class="fa fa-user-o"></i> Login </a></li>
            </ul>
        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="/home" class="logo">
                            <img src="/client/template/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form action="<c:url value="/nav?action=search"/>" method="post" >
                            <input class="input" name="keyword" placeholder="Search here">
                            <button class="search-btn" type="submit">Search</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Cart -->
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Your Cart</span>
                                <div class="qty">${sessionScope.cart.size()}</div>
                            </a>
                            <div class="cart-dropdown">
                                <div class="cart-list">
                                    <c:forEach items="${sessionScope.cart}" var="item">
                                    <div class="product-widget">
                                        <div class="product-img">
                                            <img src="${item.product.img}" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-name"><a href="#">${item.product.name}</a></h3>
                                            <h4 class="product-price"><span class="qty">${item.quantity}</span>$ ${item.quantity * item.product.price}</h4>
                                        </div>
                                        <a href="/cart?action=remove&id=${item.product.id}">
                                        <button class="delete"><i class="fa fa-close"></i></button></a>
                                    </div>
                                    </c:forEach>
                                </div>
                                <div class="cart-summary">
                                    <small>${sessionScope.cart.size()} Item(s) selected</small>
                                    <h5>SUBTOTAL: $ ${sessionScope.subtotal} VND</h5>
                                </div>
                                <div class="cart-btns">
                                    <a href="/cart">View Cart</a>
                                    <a href="/cart?action=checkout">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="${active1}"><a href="/home">Home</a></li>
                <li class="${activen1}"><a href="/nav?action=store">Store All</a></li>
                <li class="${activen2}"><a href="/nav?action=laptop">Laptops</a></li>
                <li class="${activen3}"><a href="/nav?action=sm">Smartphones</a></li>
                <li class="${activen4}"><a href="/nav?action=tablet">Tablets</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" role="button" data-toggle="dropdown">
                        Brands
                    </a>
                    <div class="dropdown-menu">
                        <c:forEach items="${brands}" var="brand">
                        <a class="dropdown-item" href="/nav?action=search&keyword=${brand.name}">${brand.name}</a>
                            <div class="dropdown-divider"></div>
                        </c:forEach>
                    </div>
                </li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->
