<%--
  User: ian
  Date: 2023-10-05
  Description:
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<nav class="navbar navbar-vertical navbar-expand-lg">
    <script>
        var navbarStyle = window.config.config.phoenixNavbarStyle;
        if (navbarStyle && navbarStyle !== 'transparent') {
            document.querySelector('body').classList.add(`navbar-`+ navbarStyle);
        }
    </script>
    <div class="collapse navbar-collapse" id="navbarVerticalCollapse">
        <sec:authorize access="hasRole('ADMIN')">
            <div class="navbar-vertical-content">
                <ul class="navbar-nav flex-column" id="navbarVerticalNav">
                    <li class="nav-item">
                        <!-- parent pages-->
                        <div class="nav-item-wrapper">
                            <a class="nav-link dropdown-indicator label-1" href="#nv-home" role="button" data-bs-toggle="collapse" aria-expanded="true" aria-controls="nv-home">
                                <div class="d-flex align-items-center">
                                    <div class="dropdown-indicator-icon"><span class="fas fa-caret-right"></span></div><span class="nav-link-icon"><span data-feather="pie-chart"></span></span><span class="nav-link-text">Home</span>
                                </div>
                            </a>
                            <div class="parent-wrapper label-1">
                                <ul class="nav collapse parent show" data-bs-parent="#navbarVerticalCollapse" id="nv-home">
                                    <li class="collapsed-nav-item-title d-none">Home
                                    </li>
                                    <li class="nav-item"><a class="nav-link active" href="/dashboard" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Index Dashboard</span>
                                        </div>
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <!-- label-->
                        <p class="navbar-vertical-label">관리
                        </p>
                        <hr class="navbar-vertical-line" />

                        <div class="nav-item-wrapper"><a class="nav-link dropdown-indicator label-1" href="#nv-users" role="button" data-bs-toggle="collapse" aria-expanded="false" aria-controls="nv-users">
                            <div class="d-flex align-items-center">
                                <div class="dropdown-indicator-icon"><span class="fas fa-caret-right"></span></div><span class="nav-link-icon"><span data-feather="users"></span></span><span class="nav-link-text">Users</span>
                            </div>
                        </a>
                            <div class="parent-wrapper label-1">
                                <ul class="nav collapse parent" data-bs-parent="#navbarVerticalCollapse" id="nv-users">
                                    <li class="collapsed-nav-item-title d-none">Users
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="/user/admin" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Admin</span>
                                        </div>
                                    </a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="/user/member" data-bs-toggle="" aria-expanded="false">
                                        <div class="d-flex align-items-center"><span class="nav-link-text">Member</span>
                                        </div>
                                    </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <%--<div class="nav-item-wrapper"><a class="nav-link label-1" href="apps/calendar.html" role="button" data-bs-toggle="" aria-expanded="false">
                            <div class="d-flex align-items-center"><span class="nav-link-icon"><span data-feather="calendar"></span></span><span class="nav-link-text-wrapper"><span class="nav-link-text">Calendar</span></span>
                            </div>
                        </a>
                        </div>--%>
                    </li>
                </ul>
            </div>
        </sec:authorize>
    </div>
    <div class="navbar-vertical-footer">
        <button class="btn navbar-vertical-toggle border-0 fw-semi-bold w-100 white-space-nowrap d-flex align-items-center"><span class="uil uil-left-arrow-to-left fs-0"></span><span class="uil uil-arrow-from-right fs-0"></span><span class="navbar-vertical-footer-text ms-2">Collapsed View</span></button>
    </div>
</nav>
<nav class="navbar navbar-top fixed-top navbar-expand" id="navbarDefault">
    <div class="collapse navbar-collapse justify-content-between">
        <div class="navbar-logo">

            <button class="btn navbar-toggler navbar-toggler-humburger-icon hover-bg-transparent" type="button" data-bs-toggle="collapse" data-bs-target="#navbarVerticalCollapse" aria-controls="navbarVerticalCollapse" aria-expanded="false" aria-label="Toggle Navigation"><span class="navbar-toggle-icon"><span class="toggle-line"></span></span></button>
            <a class="navbar-brand me-1 me-sm-3" href="${pageContext.request.contextPath}/">
                <div class="d-flex align-items-center">
                    <div class="d-flex align-items-center"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="phoenix11" width="27" />
                        <p class="logo-text ms-2 d-none d-sm-block">homestock</p>
                    </div>
                </div>
            </a>
        </div>
        <ul class="navbar-nav navbar-nav-icons flex-row">
            <li class="nav-item">
                <div class="theme-control-toggle fa-icon-wait px-2">
                    <input class="form-check-input ms-0 theme-control-toggle-input" type="checkbox" data-theme-control="phoenixTheme" value="dark" id="themeControlToggle" />
                    <label class="mb-0 theme-control-toggle-label theme-control-toggle-light" for="themeControlToggle" data-bs-toggle="tooltip" data-bs-placement="left" title="Switch theme"><span class="icon" data-feather="moon"></span></label>
                    <label class="mb-0 theme-control-toggle-label theme-control-toggle-dark" for="themeControlToggle" data-bs-toggle="tooltip" data-bs-placement="left" title="Switch theme"><span class="icon" data-feather="sun"></span></label>
                </div>
            </li>
            <li class="nav-item dropdown"><a class="nav-link lh-1 pe-0" id="navbarDropdownUser" href="#!" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-haspopup="true" aria-expanded="false">
                <div class="avatar avatar-l ">
                    <img class="rounded-circle " src="${pageContext.request.contextPath}/resources/images/avatar-40x40.webp" alt="" />

                </div>
            </a>
                <div class="dropdown-menu dropdown-menu-end navbar-dropdown-caret py-0 dropdown-profile shadow border border-300" aria-labelledby="navbarDropdownUser">
                    <div class="card position-relative border-0">
                        <div class="card-body p-0">
                            <div class="text-center pt-4 pb-3">
                                <div class="avatar avatar-xl ">
                                    <img class="rounded-circle " src="${pageContext.request.contextPath}/resources/images/avatar-72x72.webp" alt="" />

                                </div>
                                <h6 class="mt-2 text-black">${secPrincipalUser.userId}</h6>
                                <div>${secPrincipalUser.name}</div>
                            </div>
                        </div>
                        <div class="card-footer pb-0">
                            <div class="px-3"> <a class="btn btn-phoenix-secondary d-flex flex-center w-100" href="${pageContext.request.contextPath}/logout"> <span class="me-2" data-feather="log-out"> </span>Sign out</a></div>
                            <div class="my-2 text-center fw-bold fs--2 text-600"><a class="text-600 me-1" href="#!">Privacy policy</a>&bull;<a class="text-600 mx-1" href="#!">Terms</a>&bull;<a class="text-600 ms-1" href="#!">Cookies</a></div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</nav>

<script>
    var navbarTopStyle = window.config.config.phoenixNavbarTopStyle;
    var navbarTop = document.querySelector('.navbar-top');
    if (navbarTopStyle === 'darker') {
        navbarTop.classList.add('navbar-darker');
    }

    var navbarVerticalStyle = window.config.config.phoenixNavbarVerticalStyle;
    var navbarVertical = document.querySelector('.navbar-vertical');
    if (navbarVertical && navbarVerticalStyle === 'darker') {
        navbarVertical.classList.add('navbar-darker');
    }

    // navbar active 여기
    // document.querySelector('a[href="'+location.pathname+'"]')
</script>