<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col l-3 m-2 c-12">
    <div class="sidebar__chooses">
        <div class="sidebar__chooses-item">
            <i class="sidebar__chooses-item__icon far fa-chart-bar"></i>
        </div>
        <div class="sidebar__chooses-item">
            <i class="sidebar__chooses-item__icon fas fa-pen"></i>
        </div>
        <div class="sidebar__chooses-item">
            <i class="sidebar__chooses-item__icon fas fa-mask"></i>
        </div>
        <div class="sidebar__chooses-item">
            <i class="sidebar__chooses-item__icon fas fa-cogs"></i>
        </div>
    </div>
    <ul class="sidebar">
        <li class="sidebar__item">
            <i class="sidebar__item-icon fas fa-tachometer-alt"></i>
            <a href="admin-home" class="sidebar__item-link">Statistical</a>
        </li>
        <label for='check-sidebar-list' class="sidebar__item">
            <i class="sidebar__item-icon fas fa-list"></i>
            <a href="admin-category?index=1" class="sidebar__item-link">Category Management</a>
        </label>
        <input hidden id='check-sidebar-list' type="checkbox">
        <li class="sidebar__item">
            <i class="sidebar__item-icon fas fa-air-freshener"></i>
            <a href="admin-products?index=1" class="sidebar__item-link">Product Management</a>
        </li>
        <label for='check-sidebar-list' class="sidebar__item">
            <i class="sidebar__item-icon fas fa-users"></i>
            <a href="admin-account" class="sidebar__item-link">Account Management</a>
        </label>
        <label for='check-sidebar-list' class="sidebar__item">
            <i class="sidebar__item-icon fas fa-store"></i>
            <a href="admin-order" class="sidebar__item-link">Order Management</a>
        </label>
        <label for='check-sidebar-list' class="sidebar__item">
            <i class="sidebar__item-icon fas fa-phone"></i>
            <a href="admin-contact" class="sidebar__item-link">Branch Management</a>
        </label>
    </ul>
</div>