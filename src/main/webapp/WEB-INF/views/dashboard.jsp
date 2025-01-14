<%--
  User: ian
  Date: 2023-09-22
  Description:
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@include file="./inc/taglib.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@include file="./inc/meta.jsp"%>

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Phoenix</title>

    <%@include file="./inc/favicon.jsp"%>
    <%@include file="./inc/css.jsp"%>
</head>
<body>

<!-- ===============================================-->
<!--    Main Content-->
<!-- ===============================================-->
<main class="main" id="top">
    <%@include file="./inc/navbar.jsp"%>
    <div class="content">
        <div class="pb-5">
            <div class="row g-4">
                <div class="col-12 col-xxl-6">
                    <div class="mb-8">
                        <h2 class="mb-2">Index Dashboard</h2>
                        <h5 class="text-700 fw-semi-bold">Here’s what’s going on at your business right now</h5>
                    </div>
                    <div class="row align-items-center g-4">
                        <div class="col-12 col-md-auto">
                            <div class="d-flex align-items-center"><span class="fa-stack" style="min-height: 46px;min-width: 46px;"><span class="fa-solid fa-square fa-stack-2x text-success-300" data-fa-transform="down-4 rotate--10 left-4"></span><span class="fa-solid fa-circle fa-stack-2x stack-circle text-success-100" data-fa-transform="up-4 right-3 grow-2"></span><span class="fa-stack-1x fa-solid fa-star text-success " data-fa-transform="shrink-2 up-8 right-6"></span></span>
                                <div class="ms-3">
                                    <h4 class="mb-0">${loginId}</h4>
                                    <p class="text-800 fs--1 mb-0">아이디</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-auto">
                            <div class="d-flex align-items-center"><span class="fa-stack" style="min-height: 46px;min-width: 46px;"><span class="fa-solid fa-square fa-stack-2x text-warning-300" data-fa-transform="down-4 rotate--10 left-4"></span><span class="fa-solid fa-circle fa-stack-2x stack-circle text-warning-100" data-fa-transform="up-4 right-3 grow-2"></span><span class="fa-stack-1x fa-solid fa-star text-warning " data-fa-transform="shrink-2 up-8 right-6"></span></span>
                                <div class="ms-3">
                                    <h4 class="mb-0">${loginRoles}</h4>
                                    <p class="text-800 fs--1 mb-0">역할</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="bg-200 mb-6 mt-4" />
                </div>
            </div>
        </div>
        <%@include file="./inc/footer.jsp"%>
    </div>
</main>
<!-- ===============================================-->
<!--    End of Main Content-->
<!-- ===============================================-->

<%@include file="./inc/js.jsp"%>
</body>

</html>