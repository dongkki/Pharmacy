<%@page import="carrot.vo.Users"%>
<%@page import="carrot.vo.PhamUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <title>당근약국</title>
    <!-- SEO Meta Tags (단어에 우선 순위를 만들어 주는 meta 태그)-->
    <meta name="description" content="Cartzilla - Bootstrap E-commerce Template">
    <meta name="keywords" content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap, html5, css3, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Createx Studio">
    
    <!-- Viewport (브라우저 너비에 따른 비율 변화하는 태그 - 반응형 디자인)-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Favicon and Touch Icons-->
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/views/img/logo/favicon-16x16.png">
    <link rel="manifest" href="<%=request.getContextPath() %>/views/site.webmanifest">
    <link rel="mask-icon" color="#fe6a6a" href="<%=request.getContextPath() %>/views/safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="theme-color" content="#ffffff">
    
    <!-- Vendor Styles including: Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/vendor/tiny-slider/dist/tiny-slider.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/vendor/nouislider/dist/nouislider.min.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/vendor/drift-zoom/dist/drift-basic.min.css" />
    
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/css/theme.min.css">
    
    <!-- icon -->
    <script src="https://kit.fontawesome.com/49fd011980.js" crossorigin="anonymous"></script>
    
    <!-- jquery -->
    <script src="<%= request.getContextPath() %>/views/js/jquery-3.6.0.min.js"></script>
    
</head>

<!-- Body-->

<%
	PhamUser loginPham = (PhamUser)session.getAttribute("loginPham");
	Users loginUser = (Users)session.getAttribute("loginUser");
%>

<body class="handheld-toolbar-enabled">
    <main class="page-wrapper">
        <!-- Navbar-->
        <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
        <header class="bg-light shadow-sm navbar-sticky">
            <div class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <a class="navbar-brand d-none d-sm-block me-4 order-lg-1" href="<%=request.getContextPath() %>/views/index.jsp">
                    <img src="<%=request.getContextPath() %>/views/img/logo_carrot_pharm.png" width="150" alt="Carrot"></a>
                    <div class="navbar-toolbar d-flex align-items-center order-lg-3">
                    	
                        <% if((loginPham == null) && (loginUser == null)){ %>
                                <a class="btn btn-outline-primary btn-shadow mx-2" href="<%=request.getContextPath() %>/views/user/enrollUser.jsp">
                                <i class="ci-user-circle me-2"></i>Sign-up</a>
                                <a class="btn btn-primary btn-shadow mx-2" href="<%=request.getContextPath() %>/views/user/loginUser.jsp">
                                <i class="ci-user-circle me-2"></i>Log-in</a>
                            <% } else if (loginPham != null){ %>
                                <table>
                                	<tr>
                                		<td>
			                               	<a class="btn btn-primary btn-shadow mx-2" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp"> 
			                               	<i class="ci-user-circle me-2"></i><%=loginPham.getPham_id() %> 님</a>
                               			</td>
                               			<td>
			                               	<a class="btn btn-outline-primary btn-shadow mx-2" href="<%=request.getContextPath() %>/logoutPham">
			                               	<i class="ci-user-circle me-2"></i>Log-out</a>
                               			</td>
                               		</tr>
                               	</table>
                            <% } else {%>
                               	<table>
                               		<tr>
                               			<td>
			                               	<a class="btn btn-primary btn-shadow mx-2" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp"> 
			                               	<i class="ci-user-circle me-2"></i><%=loginUser.getUser_name()%> 님</a>
                               			</td>
                               			<td>
			                               	<a class="btn btn-outline-primary btn-shadow mx-2" href="<%=request.getContextPath() %>/logoutUser">
			                               	<i class="ci-user-circle me-2"></i>Log-out</a>
                               			</td>
                               		</tr>
                               	</table>
                         <% } %>
                         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"><span class="navbar-toggler-icon"></span></button>
                    </div>
                    <div class="collapse navbar-collapse me-auto order-lg-2" id="navbarCollapse">
                        <hr class="my-3">
                        <!-- Primary menu-->
                        <% if((loginPham == null) && (loginUser == null)){ %>
                        <ul class="navbar-nav ">
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/search//search_pharmacy.jsp">약국 검색</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/search/searchDrug.jsp">의약품 검색</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/news/news.jsp">뉴스</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/news/aboutUs.jsp">About Us</a></li>
                        </ul>
                        <% } else if((loginPham != null)) {%>
                        <ul class="navbar-nav ">
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/search//search_pharmacy.jsp">약국 검색</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/search/searchDrug.jsp">의약품 검색</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/news/news.jsp">뉴스</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/news/aboutUs.jsp">About Us</a></li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle fs-5 fw-bold" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp" data-bs-toggle="dropdown" data-bs-auto-close="outside">마이페이지</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-profile.jsp">내 정보 수정</a></li>
                                </ul>
                            </li>
                        </ul>
                        <% } else {%>
                        <ul class="navbar-nav ">
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/search//search_pharmacy.jsp">약국 검색</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/search/searchDrug.jsp">의약품 검색</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/news/news.jsp">뉴스</a></li>
                            <li class="nav-item dropdown"><a class="nav-link fs-5 fw-bold" href="<%=request.getContextPath() %>/views/news/aboutUs.jsp">About Us</a></li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle fs-5 fw-bold" href="<%=request.getContextPath() %>/views/profile/account-profile.jsp" data-bs-toggle="dropdown" data-bs-auto-close="outside">마이페이지</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-profile.jsp">내 정보 수정</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-wishlist_pharm.jsp">자주 찾는 약국</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-wishlist_drug.do?id=<%=loginUser.getUser_id()%>">자주 찾는 의약품</a></li>
                                </ul>
                            </li>
                        </ul>
                        <% } %>
                    </div>
                </div>
            </div>
        </header>
    </main>