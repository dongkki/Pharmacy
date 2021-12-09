<%@page import="carrot.vo.Users"%>
<%@page import="carrot.vo.PhamUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>당근 약국</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Cartzilla - Bootstrap E-commerce Template">
    <meta name="keywords" content="bootstrap, shop, e-commerce, market, modern, responsive,  business, mobile, bootstrap, html5, css3, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Createx Studio">
    
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Vendor Styles including: Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/vendor/simplebar/dist/simplebar.min.css" />
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/vendor/tiny-slider/dist/tiny-slider.css" />
    
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="<%=request.getContextPath() %>/views/css/theme.min.css">
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
                    <a class="navbar-brand d-none d-sm-block me-4 order-lg-1" href="<%=request.getContextPath() %>/views/index.jsp"><img src="<%=request.getContextPath() %>\views\img\logo_carrot_pharm.png" width="150" alt="Carrot"></a>
                    <div class="navbar-toolbar d-flex align-items-center order-lg-3">
                        <% if((loginPham == null) && (loginUser == null)){ %>
                                <a href="<%=request.getContextPath() %>/views/user/loginUser.jsp"><button type="button" class="btn btn-outline-primary me-2">Login</button></a>
                                <a href="<%=request.getContextPath() %>/views/user/enrollUser.jsp"> <button type="button" class="btn btn-primary">Enroll</button></a>
                            <% } else if (loginPham != null){ %>
                                <table>
                                	<tr>
                                		<td colspan="2"><%=loginPham.getPham_id() %> 님 환영합니다</td>
                                	</tr>
                                	<tr>
                                		<td>
			                               	<a href=""> <button type="button" class="btn btn-primary">내정보</button></a>
                               			</td>
                               			<td>
			                               	<a href="<%=request.getContextPath() %>/logoutPham"><button type="button" class="btn btn-outline-primary me-2">로그아웃</button></a>
                               			</td>
                               		</tr>
                               	</table>
                            <% } else {%>
                               	<table>
                               		<tr>
                               			<td colspan="2"><%=loginUser.getUser_name() %> 님 환영합니다</td>
                               		</tr>
                               		<tr>
                               			<td>
			                               	<a href=""> <button type="button" class="btn btn-primary">내정보</button></a>
                               			</td>
                               			<td>
			                               	<a href="<%=request.getContextPath() %>/logoutPham"><button type="button" class="btn btn-outline-primary me-2">로그아웃</button></a>
                               			</td>
                               		</tr>
                               	</table>
                         <% } %>
                    </div>
                    <div class="collapse navbar-collapse me-auto order-lg-2" id="navbarCollapse">
                        <hr class="my-3">
                        <!-- Primary menu-->
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown active"><a class="nav-link" href="<%=request.getContextPath() %>/views/index.jsp">Home</a></li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">약국 검색</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item " href="pharm_search.html">약국 검색</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="pharm_search.html">24시 약국 검색</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li class="dropdown"><a class="dropdown-item " href="pharm_detail.html">약국 상세 페이지</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">의약품 검색</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item " href="drug_search_name.html">의약품 검색</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="drug_search_company.html">제조사 검색</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="drug_search_shape.html">약 모양으로 검색</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li class="dropdown"><a class="dropdown-item " href="drug_detail.html">의약품 상세 페이지</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">뉴스</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item " href="news.html">뉴스</a></li>
                                    <li class="dropdown-divider"></li>
                                    <li class="dropdown"><a class="dropdown-item " href="about.html">About Us</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" data-bs-auto-close="outside">마이페이지</a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-profile.jsp">내 정보 수정</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-wishlist_pharm.jsp">자주 찾는 약국</a></li>
                                    <li class="dropdown"><a class="dropdown-item " href="<%=request.getContextPath() %>/views/profile/account-wishlist_drug.jsp">자주 찾는 의약품</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        
    </main>

